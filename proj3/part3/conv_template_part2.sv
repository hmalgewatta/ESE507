module <CONV_MOD_NAME>(clk, reset, x_data, x_valid, x_ready, y_data, y_valid, y_ready);

parameter T = <T>,  SIZE_F = <SIZE_F>, SIZE_X = <SIZE_X>, P = <P>;

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
<F_ROM_MOD_NAME> mem_f(
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
