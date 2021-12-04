module memory(clk, data_in, data_out, addr, wr_en);
   
    parameter                   WIDTH=16, SIZE=64;
    localparam                  LOGSIZE=$clog2(SIZE);
    input [WIDTH-1:0]           data_in;
    output logic [WIDTH-1:0]    data_out;
    input [LOGSIZE-1:0]         addr;
    input                       clk, wr_en;
    
    logic [SIZE-1:0][WIDTH-1:0] mem;
    
    always_ff @(posedge clk) begin
        data_out <= mem[addr];
        if (wr_en)
            mem[addr] <= data_in;
    end
endmodule

module control(clk, reset, x_valid, y_ready, addr_x, wr_en_x, addr_f, clear_acc, en_acc, x_ready, x_loaded, y_valid,idle, y_counter,conv_done);

parameter ADDR_WIDTH = 10, X_LEN_IN = 112, F_LEN_IN = 49, OFFSET=2;

localparam F_LEN = $clog2(F_LEN_IN);
localparam X_LEN = $clog2(X_LEN_IN);
localparam Y_LEN = $clog2(X_LEN_IN-F_LEN_IN+1);
localparam Y_COUNT = OFFSET;

input clk, reset, x_valid, y_ready, conv_done;
output logic wr_en_x, clear_acc, en_acc, x_ready;
output logic [F_LEN:0] addr_f;
output logic [X_LEN-1:0] addr_x;

// current understanding
// will store all inputs first to memory
// then do convolution

output logic x_loaded;
output logic y_valid;

output logic idle;

//internal signals
logic [F_LEN:0] f_counter;
logic [X_LEN-1:0] x_counter;
output logic [Y_LEN:0] y_counter;
logic point_calc_done, next_clear_acc;



always_ff @( posedge clk ) begin : ACCUMULATOR_SIGNALS
    if (reset || idle) begin
        clear_acc <= 1;
        en_acc <= 0;
        y_valid <= 0;
		point_calc_done <= 0;
		next_clear_acc <= 0;
        y_counter <= 0;
        idle <= 0;
    end
    else begin
        next_clear_acc <= point_calc_done;
    	if (y_counter == Y_COUNT) begin
    		idle <= 1;
    	end
        else if(y_valid && y_ready) begin
        	clear_acc <= 1;
        	en_acc <= 0;
			y_valid <= 0;
            y_counter <= y_counter + 1;
        end
        else if(next_clear_acc) begin
            y_valid <= next_clear_acc;
            clear_acc <= 0;
            en_acc <= 0;
            point_calc_done <= 0;
            next_clear_acc <= 0;
        end 
        else if (&{x_loaded,~conv_done, ~y_valid}) begin 
            clear_acc <= 0;     
            if (addr_f < F_LEN_IN) begin
                en_acc <= 1;
            end
            else begin
                en_acc <= 0;
                clear_acc <= 0;
                point_calc_done <= 1;
            end
        end
    end
end

always_ff @( posedge clk ) begin : X
    if (reset || idle) begin
        wr_en_x <= 0;
        x_counter <= 0; 
        x_loaded <= 0;
        addr_x <= 0;
        x_ready <= 1;
    end
    else begin
        wr_en_x <= x_valid;
        if (x_valid && ~x_loaded) begin
            if (x_counter == X_LEN_IN-1) begin
                x_loaded <= 1;
                addr_x <= 0;
                x_ready <= 0;
                x_counter <= 0;
            end 
            else begin
            	x_ready <= 1;
            	addr_x <= addr_x + 1;
            	x_counter <= x_counter + 1;
            end
        end
        else begin
            wr_en_x <= 0;
            if(y_valid && y_ready) begin
                addr_x <= 0;
                x_counter <= x_counter + 1;
            end
            else if (&{x_loaded,~conv_done, ~y_valid}) begin    
                if (addr_f < F_LEN_IN) begin
                    addr_x <= addr_x + 1;
                end
            end
        end
    end
end

always_ff @( posedge clk ) begin : F
    if (reset || idle) begin
        f_counter <= 0; 
        addr_f <= 0;
        //f_ready <= 1;
    end
    else begin
    	// writing to memory
        // reading from memory
        if(point_calc_done) begin
            addr_f <= 0;
        end 
        else if (&{x_loaded,~conv_done, ~y_valid}) begin   
            if (addr_f < F_LEN_IN) begin
                addr_f <= addr_f + 1;
            end
        end
    end
end

endmodule

module mac(clk, reset, a, b, valid_in, f, valid_out); 

parameter WIDTH = 10, OUT_WIDTH = 20;

input clk, reset, valid_in;
input signed [WIDTH-1:0] a, b;
output logic signed [OUT_WIDTH-1:0] f;
output logic valid_out;

logic enable_f, enable_ab, correct_mult;

logic signed [OUT_WIDTH-1:0] mult;
logic signed [2*OUT_WIDTH-1:0] mult_overflow;

logic signed [WIDTH-1:0] a_in, b_in;
logic signed [OUT_WIDTH-1:0] mult_in, f_in;

localparam OVERFLOW = (1 << (OUT_WIDTH-1)) - 1;
localparam UNDERFLOW = -(1 << (OUT_WIDTH-1));

//what had to be changed
// setting f (delayed by one cycle)
// setting valid_out (same)
// handling reset

always_comb 
begin
	enable_ab = valid_in;
	mult = a_in*b_in;	
    mult_overflow = a_in*b_in;
	f_in = mult_in + f;
	
    // multiplication saturation
    if (((a_in > 0 && b_in > 0) || (a_in <0 && b_in <0)) && mult_overflow > OVERFLOW)
		mult = $signed((1 << (OUT_WIDTH-1)) - 1);
	else if ( ((a_in > 0 && b_in < 0) || (a_in < 0 && b_in >0)) && mult_overflow < UNDERFLOW) // TODO: do this for addition check too. Probably takes less HW
		mult = $signed(1 << (OUT_WIDTH-1));
	else
		mult = a_in*b_in;
		
    // addition saturation
	if (f > 0 && mult_in > 0 && f_in <= 0)
		f_in = $signed((1 << (OUT_WIDTH-1)) - 1);
	else if (f < 0 && mult_in < 0 && f_in >= 0)
		f_in = $signed(1 << (OUT_WIDTH-1));
	else
		f_in = mult_in + f;
end

always_ff @(posedge clk) begin
    if (reset == 1'b1)
    begin
        valid_out <= 0;
        f <= 0;
        a_in <= 0;
        b_in <= 0;
        correct_mult <= 0;
        enable_f <= 0;
		mult_in <= 0;
    end
    else
    begin
		mult_in <= mult;
		enable_f <= correct_mult;
		correct_mult <= enable_ab;
	    valid_out <= 0;
        // register inputs on enable
		if (enable_ab == 1'b1)
		begin
		    a_in <= a;
		    b_in <=b;
		end

		// calculate result on enable
		if (enable_f == 1'b1)
		begin
		    f <= f_in;
		    valid_out <= 1;
		end
    end
end

endmodule

module <TOP_MOD_NAME>(clk, reset, x_data, x_valid, x_ready, y_data, y_valid, y_ready);

// parameter N = <N>, M1 = <M1>, T = <T>, M2 = <M2>, M3 = <M3>, P1 = <P1>, P2 = <P2>, P3 = <P3>;
parameter T = <T>;

input logic clk, reset, x_valid, y_ready;
input [T-1:0] x_data;
output [T-1:0] y_data;
output logic y_valid, x_ready;

logic gen1_y_valid, gen2_y_valid;
logic gen1_y_ready, gen2_y_ready;
logic [T-1:0] gen1_y_data, gen2_y_data;

<GEN_LAYER_1> genLayer1(
    clk,
    reset,
    x_data,
    x_valid,
    x_ready,
    gen1_y_data,
    gen1_y_valid,
    gen1_y_ready
);

<GEN_LAYER_2> genLayer2(
    clk,
    reset,
    gen1_y_data,
    gen1_y_valid,
    gen1_y_ready,
    gen2_y_data,
    gen2_y_valid,
    gen2_y_ready
);

<GEN_LAYER_3> genLayer3(
    clk,
    reset,
    gen2_y_data,
    gen2_y_valid,
    gen2_y_ready,
    y_data,
    y_valid,
    y_ready
);

endmodule
