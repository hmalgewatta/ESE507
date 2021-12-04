// Generated  Sat Dec  4 13:16:23 2021

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
module conv_96_65_16_8(clk, reset, x_data, x_valid, x_ready, y_data, y_valid, y_ready);

parameter T = 16,  SIZE_F = 65, SIZE_X = 96, P = 8;

localparam WIDTH = T;
localparam LOGSIZE_F = $clog2(SIZE_F);
localparam LOGSIZE_X = $clog2(SIZE_X);
localparam OUT_WIDTH = T;

localparam PARALLEL_INSTS = P;
//localparam CONV_POINTS = PARALLEL_INSTS;
localparam CONV_POINTS = SIZE_X - SIZE_F + 1;
//localparam OFFSET = ($ceil((SIZE_X - SIZE_F + 1)/PARALLEL_INSTS)) > 1 ? $ceil((SIZE_X - SIZE_F + 1)/PARALLEL_INSTS) : 2;
localparam OFFSET = (SIZE_X - SIZE_F + PARALLEL_INSTS)/PARALLEL_INSTS;
localparam LOG_OFFSET = $clog2(OFFSET);
localparam LOG_PARALLEL_INSTS = $clog2(PARALLEL_INSTS);

localparam LOGSIZE_Y = $clog2(CONV_POINTS);

input clk, reset, x_valid, y_ready;
input signed [WIDTH-1:0] x_data;
output logic x_ready, y_valid;
output logic signed [OUT_WIDTH-1:0] y_data;

//internal wires
logic wr_en_x, wr_en_f, clear_acc, en_acc, x_loaded, f_loaded, wr_x, wr_f, mac_valid_out, y_valid_out;
logic [WIDTH-1:0] data_out_f, data_out_x;
logic [LOGSIZE_F:0] addr_f;
logic [LOGSIZE_X-1:0] addr_x;
logic signed [OUT_WIDTH-1:0] y_data_out;

logic [LOGSIZE_X-1: 0] addr_x_gen [PARALLEL_INSTS-1:0];
logic [WIDTH-1:0] data_out_x_gen [PARALLEL_INSTS-1:0];
logic mac_valid_out_gen [PARALLEL_INSTS-1:0];
logic y_wr_en [PARALLEL_INSTS-1:0];
logic [LOG_OFFSET-1: 0] y_addr_gen [PARALLEL_INSTS-1:0];
logic signed [OUT_WIDTH-1:0] y_data_gen [PARALLEL_INSTS-1:0];
logic signed [OUT_WIDTH-1:0] y_data_gen_relu [PARALLEL_INSTS-1:0];
logic signed [OUT_WIDTH-1:0] y_data_out_gen [PARALLEL_INSTS-1:0];
logic idle;
logic [LOGSIZE_Y:0] y_counter;
logic [LOG_PARALLEL_INSTS:0] y_next;
logic [LOGSIZE_Y:0] y_point;
logic [LOG_OFFSET:0] y_mem_i;
logic conv_done;
logic ctrl_done;

assign wr_x = &{x_valid,~x_loaded};

control #(WIDTH,SIZE_X,SIZE_F,OFFSET) ctrl(
    clk, 
    reset, 
    x_valid, 
    ~y_valid, 
    addr_x, 
    wr_en_x, 
    addr_f,  
    clear_acc, 
    en_acc,
    x_ready,
    x_loaded,
    ctrl_done,
    idle,
    y_counter,
    conv_done
    );

// memory for f
conv_96_65_16_8_f_rom mem_f(
    clk,    
    addr_f[LOGSIZE_F-1:0], 
    data_out_f  
    );

// memory for x
genvar i;
generate
    for (i = 0; i < PARALLEL_INSTS; i++) begin
        memory #(WIDTH, SIZE_X) mem_x(
            clk, 
            x_data, 
            data_out_x_gen[i], 
            addr_x_gen[i], 
            wr_x
        );

        memory #(OUT_WIDTH, OFFSET) mem_y(
            clk, 
            y_data_gen_relu[i], 
            y_data_out_gen[i], 
            y_addr_gen[i], 
            y_wr_en[i]
        );

        mac #(WIDTH, OUT_WIDTH) mac(
            clk, 
            clear_acc, 
            data_out_x_gen[i], 
            data_out_f, 
            en_acc, 
            y_data_gen[i], 
            mac_valid_out_gen[i]
            );

        assign addr_x_gen[i] = (wr_x) ? addr_x : PARALLEL_INSTS*y_counter + addr_x + i;
        assign y_addr_gen[i] = (mac_valid_out_gen[i]) ? y_counter : y_mem_i;
        assign y_data_gen_relu[i] = y_data_gen[i][OUT_WIDTH-1] ? 0 : y_data_gen[i];
        assign y_wr_en[i] = mac_valid_out_gen[i];
    end
endgenerate


logic output_y;
logic y_okay;

logic signed [OUT_WIDTH-1:0] y_data_next [PARALLEL_INSTS-1:0];
        
assign y_data = y_data_out_gen[y_next];

always_ff @( posedge clk ) begin
	if(reset) begin
		conv_done <= 0;
		y_point <= 0;
        y_valid <= 0;
	end
	else begin
    if(idle && ~conv_done) begin
    	conv_done <= 1;
    	y_point <= 0;
        y_mem_i <= 0;
        y_next <= 0;
    end
    else if (conv_done) begin
        y_valid <= 1;
        if (y_ready && y_valid) begin
            y_point <= y_point + 1;
            y_next <= y_next + 1; 		
            if(y_next == PARALLEL_INSTS-1) begin
                y_mem_i <= y_mem_i + 1;
                y_next <= 0;
                y_valid <= 0;
            end
            else
                y_next <= y_next + 1;

		    if (y_point == CONV_POINTS-1) begin
		        conv_done <= 0;
		        y_point <= 0;
                y_valid <= 0;
			end
        end
     end
    end
end

endmodule
module conv_96_65_16_8_f_rom(clk, addr, z);
   input clk;
   input [6:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd225;
        1: z <= 16'd80;
        2: z <= -16'd117;
        3: z <= 16'd180;
        4: z <= 16'd13;
        5: z <= -16'd77;
        6: z <= -16'd50;
        7: z <= -16'd254;
        8: z <= 16'd212;
        9: z <= -16'd125;
        10: z <= 16'd229;
        11: z <= -16'd59;
        12: z <= -16'd127;
        13: z <= 16'd229;
        14: z <= 16'd248;
        15: z <= 16'd32;
        16: z <= 16'd95;
        17: z <= 16'd179;
        18: z <= -16'd191;
        19: z <= 16'd140;
        20: z <= -16'd97;
        21: z <= -16'd16;
        22: z <= -16'd226;
        23: z <= -16'd64;
        24: z <= 16'd225;
        25: z <= 16'd64;
        26: z <= -16'd33;
        27: z <= 16'd213;
        28: z <= 16'd52;
        29: z <= 16'd141;
        30: z <= 16'd29;
        31: z <= 16'd21;
        32: z <= -16'd35;
        33: z <= 16'd168;
        34: z <= -16'd55;
        35: z <= 16'd234;
        36: z <= -16'd165;
        37: z <= 16'd151;
        38: z <= 16'd237;
        39: z <= -16'd209;
        40: z <= -16'd230;
        41: z <= 16'd210;
        42: z <= -16'd12;
        43: z <= -16'd101;
        44: z <= 16'd184;
        45: z <= -16'd20;
        46: z <= 16'd187;
        47: z <= 16'd23;
        48: z <= -16'd97;
        49: z <= 16'd253;
        50: z <= -16'd93;
        51: z <= 16'd63;
        52: z <= -16'd19;
        53: z <= -16'd62;
        54: z <= 16'd255;
        55: z <= -16'd50;
        56: z <= -16'd254;
        57: z <= -16'd34;
        58: z <= -16'd93;
        59: z <= 16'd54;
        60: z <= -16'd148;
        61: z <= 16'd192;
        62: z <= -16'd181;
        63: z <= 16'd73;
        64: z <= 16'd105;
      endcase
   end
endmodule

