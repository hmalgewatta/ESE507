module control(clk, reset, x_valid, f_valid, y_ready, addr_x, wr_en_x, addr_f, wr_en_f, clear_acc, en_acc, x_ready, f_ready, x_loaded, f_loaded, y_valid);

parameter ADDR_WIDTH = 10, X_LEN_IN = 12, F_LEN_IN = 5;

localparam F_LEN = $clog2(F_LEN_IN);
localparam X_LEN = $clog2(X_LEN_IN);
localparam Y_LEN = $clog2(X_LEN_IN-F_LEN_IN+1);

input clk, reset, x_valid, f_valid, y_ready;
output logic wr_en_x, wr_en_f, clear_acc, en_acc, x_ready, f_ready;
output logic [F_LEN-1:0] addr_f;
output logic [X_LEN-1:0] addr_x;

// current understanding
// will store all inputs first to memory
// then do convolution

output logic f_loaded;
output logic x_loaded;
output logic y_valid;

//internal signals
logic [F_LEN-1:0] f_counter;
logic [X_LEN-1:0] x_counter;
logic [Y_LEN:0] y_counter;
logic point_calc_done, next_clear_acc;

logic idle;



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
    	if (y_counter == X_LEN_IN-F_LEN_IN+1) begin
    		idle <= 1;
    	end
        else if(y_valid && y_ready) begin
        	clear_acc <= 1;
        	en_acc <= 0;
			y_valid <= 0;
            y_counter <= y_counter + 1;
        end
        else if(point_calc_done) begin
            y_valid <= point_calc_done;
            next_clear_acc <= point_calc_done;
            clear_acc <= 0;
            en_acc <= 0;
            point_calc_done <= 0;
        end 
        else if (&{x_loaded, f_loaded, ~y_valid}) begin 
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
                addr_x <= x_counter + 1;
                x_counter <= x_counter + 1;
            end
            else if (&{x_loaded, f_loaded, ~y_valid}) begin    
                if (addr_f < F_LEN_IN) begin
                    addr_x <= addr_x + 1;
                end
            end
        end
    end
end

always_ff @( posedge clk ) begin : F
    if (reset || idle) begin
        wr_en_f <= 0;
        f_counter <= 0; 
        f_loaded <= 0;
        addr_f <= 0;
        f_ready <= 1;
    end
    else begin
    	// writing to memory
        wr_en_f <= f_valid;
        if (f_valid && ~f_loaded) begin
            if (f_counter == F_LEN_IN-1) begin
                f_loaded <= 1;
                addr_f <= 0;
                f_ready <= 0;
                f_counter <= 0;
            end 
            else begin
            	f_ready <= 1;
            	addr_f <= addr_f + 1;
            	f_counter <= f_counter + 1;
            end
        end
        else begin
        // reading from memory
            wr_en_f <= 0;
            if(point_calc_done) begin
                addr_f <= 0;
            end 
            else if (&{x_loaded, f_loaded, ~y_valid}) begin   
                if (addr_f < F_LEN_IN) begin
                    addr_f <= addr_f + 1;
                end
            end
        end
    end
end

endmodule

module conv_12_5(clk, reset, x_data, x_valid, x_ready, f_data, f_valid, f_ready, y_data, y_valid, y_ready);

parameter WIDTH = 10, OUT_WIDTH = 23, SIZE_F = 5, SIZE_X = 12;

localparam LOGSIZE_F = $clog2(SIZE_F);
localparam LOGSIZE_X = $clog2(SIZE_X);

input clk, reset, x_valid, f_valid, y_ready;
input signed [WIDTH-1:0] x_data, f_data;
output logic x_ready, f_ready, y_valid;
output logic signed [OUT_WIDTH-1:0] y_data;

//internal wires
logic wr_en_x, wr_en_f, clear_acc, en_acc, x_loaded, f_loaded, wr_x, wr_f, mac_valid_out, y_valid_out;
logic [WIDTH-1:0] data_out_f, data_out_x;
logic [LOGSIZE_F-1:0] addr_f;
logic [LOGSIZE_X-1:0] addr_x;
logic signed [OUT_WIDTH-1:0] y_data_out;

assign wr_x = &{x_valid,~x_loaded};
assign wr_f = &{f_valid,~f_loaded};

control #(WIDTH) ctrl(
    clk, 
    reset, 
    x_valid, 
    f_valid, 
    y_ready, 
    addr_x, 
    wr_en_x, 
    addr_f, 
    wr_en_f, 
    clear_acc, 
    en_acc,
    x_ready,
    f_ready,
    x_loaded,
    f_loaded,
    y_valid
    );

// memory for f
memory #(WIDTH, SIZE_F) mem_f(
    clk, 
    f_data, 
    data_out_f,     
    addr_f, 
    wr_f
    );

// memory for x
memory #(WIDTH, SIZE_X) mem_x(
    clk, 
    x_data, 
    data_out_x, 
    addr_x, 
    wr_x
    );

part1_mac #(WIDTH, OUT_WIDTH) mac(
    clk, 
    clear_acc, 
    data_out_x, 
    data_out_f, 
    en_acc, 
    y_data, 
    mac_valid_out
    );

endmodule
