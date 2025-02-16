module control(clk, reset, x_valid, f_valid, y_ready, addr_x, wr_en_x, addr_f, wr_en_f, clear_acc, en_acc, x_ready, f_ready, x_loaded, f_loaded, y_valid, idle);

parameter ADDR_WIDTH = 10, X_LEN_IN = 112, F_LEN_IN = 49;

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
output idle;

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
    	if (y_counter == 1) begin
    		idle <= 1;
    	end
        else if(y_valid && y_ready) begin
        	//clear_acc <= 1;
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
        if (&{x_valid, ~x_loaded}) begin
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
            if(&{y_valid, y_ready}) begin
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
        if (&{f_valid, ~f_loaded}) begin
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

module conv_112_49(clk, reset, x_data, x_valid, x_ready, f_data, f_valid, f_ready, y_data, y_valid, y_ready);

parameter WIDTH = 10, OUT_WIDTH = 26, SIZE_F = 49, SIZE_X = 112;

localparam LOGSIZE_F = $clog2(SIZE_F);
localparam LOGSIZE_X = $clog2(SIZE_X);

localparam PARALLEL_INSTS = SIZE_X-SIZE_F+1;
localparam CONV_POINTS = PARALLEL_INSTS;

localparam LOGSIZE_Y = $clog2(CONV_POINTS);

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

logic [LOGSIZE_X-1: 0] addr_x_gen [PARALLEL_INSTS-1:0];
logic [WIDTH-1:0] data_out_x_gen [PARALLEL_INSTS-1:0];
logic mac_valid_out_gen [PARALLEL_INSTS-1:0];
logic y_wr_en [PARALLEL_INSTS-1:0];
logic [LOGSIZE_Y-1: 0] y_addr_gen [PARALLEL_INSTS-1:0];
logic signed [OUT_WIDTH-1:0] y_data_gen [PARALLEL_INSTS-1:0];
logic signed [OUT_WIDTH-1:0] y_data_out_gen [PARALLEL_INSTS-1:0];
logic ctrl_done;
logic idle;

assign wr_x = &{x_valid,~x_loaded};
assign wr_f = &{f_valid,~f_loaded};
//assign x_data_ext = {3'b0, x_data};
//assign f_data_ext = {3'b0, f_data};

control #(WIDTH) ctrl(
    clk, 
    reset, 
    x_valid, 
    f_valid, 
    1'b1, 
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
    ctrl_done,
    idle
    );

// memory for f
memory #(WIDTH, SIZE_F) mem_f(
    clk, 
    f_data, 
    data_out_f,     
    addr_f, 
    wr_f
    );

logic acc_clear [PARALLEL_INSTS-1:0];
localparam DELAY = 5;

logic conv_done;
logic output_y;
logic [LOGSIZE_Y+1:0] y_point [DELAY-1:0];
logic y_valid_shift [DELAY-1:0];
logic clear_acc_shift [DELAY-1:0];

localparam ADDR_START = 112'b1;
logic [PARALLEL_INSTS-1:0] addr_start ;
logic [PARALLEL_INSTS-1:0] count ;
logic [PARALLEL_INSTS-1:0][LOGSIZE_X-1: 0] addr_mem_x_gen ;
logic [PARALLEL_INSTS-1:0][LOGSIZE_X-1: 0] addr_mem_x_gen_shifted ;

always_ff@(posedge clk) begin
	if(reset) begin
		addr_start <= 112'b1;
		count <= 0;
	end
	else begin
		if (wr_x) begin
			addr_start <= addr_start << 1;
			count <= 0;
		end
		else begin
			count <= count + 1;
		end
	end
end

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

		memory #(LOGSIZE_X, 2) mem_addr_x(
			clk, 
			addr_x, 
			addr_mem_x_gen[i], 
			1'b0, 
			addr_start[i]
		);

        memory #(OUT_WIDTH, 2) mem_y(
            clk, 
            y_data_gen[i], 
            y_data_out_gen[i], 
            1'b0, 
            y_wr_en[i]
        );

        part3b_mac #(WIDTH, OUT_WIDTH) mac(
            clk, 
            acc_clear[i], 
            data_out_x_gen[i][9:0], 
            data_out_f[9:0], 
            en_acc, 
            y_data_gen[i], 
            mac_valid_out_gen[i]
            );

        assign addr_x_gen[i] = (wr_x) ? addr_x : count+i;
        assign y_wr_en[i] = &{mac_valid_out_gen[i], ~y_valid};
        assign acc_clear[i] = (clear_acc) ? ~mac_valid_out_gen[i]:0;
    end
endgenerate

assign y_valid = y_valid_shift[DELAY-1];

assign y_data = y_data_out_gen[y_point[0]];
always_ff @( posedge clk ) begin
    for(int i=1; i<DELAY; i=i+1) begin
    	y_point[i] <= y_point[i-1];
    	y_valid_shift[i] <= y_valid_shift[i-1];
    	clear_acc_shift[i] <= clear_acc_shift[i-1];
    end
	if(reset) begin
		conv_done <= 0;
		y_valid_shift[0] <= 0;
		y_point[0] <= 0;
	end
	else begin
	y_valid_shift[0] <= conv_done;
    if(idle && ~conv_done) begin
    	conv_done <= 1;
    	y_point[0] <= 0;
    	//y_valid_shift[0] <= 0;
    end
    else if (conv_done) begin
        if (y_ready && y_valid_shift[DELAY-1]) begin      		
		    if (y_point[0] == CONV_POINTS-1) begin
		        conv_done <= 0;
		        y_point[0] <= 0;
		        y_valid_shift[0] <= 0;
		        for(int i=0; i<DELAY; i=i+1) begin
					y_valid_shift[i] <= 0;
				end
			end
    		else begin
	            y_point[0] <= y_point[0] + 1;
	        end
        end
     end
    end
end

endmodule
