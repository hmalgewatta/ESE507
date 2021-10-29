module part3b_mac(clk, reset, a, b, valid_in, f, valid_out); 

parameter WIDTH = 10, OUT_WIDTH = 20;

input clk, reset, valid_in;
input signed [WIDTH-1:0] a, b;
output logic signed [OUT_WIDTH-1:0] f;
output logic valid_out;

logic enable_f, enable_ab, correct_mult;

logic signed [2*WIDTH-1:0] mult_prop;
logic signed [OUT_WIDTH-1:0] mult;

logic signed [WIDTH-1:0] a_in, b_in;
logic signed [OUT_WIDTH-1:0] mult_in, f_in;

localparam STAGES = 5;

logic fwd [STAGES-1:0];
integer i;

//what had to be changed
// setting f (delayed by one cycle)
// setting valid_out (same)
// handling reset

//Pipelined Multiplier
DW02_mult_5_stage #(WIDTH,WIDTH) multinstance(a_in,b_in,1'b1,clk,mult_prop);

// to get rid of warnings of unmatch port connection size
assign mult = {{6{mult_prop[2*WIDTH-1]}}, mult_prop};

always_comb 
begin
	enable_ab = valid_in;
	//mult = a_in*b_in;	
	f_in = mult_in + f;
end

always_ff @(posedge clk) begin
	fwd[0] <= valid_in;
	for(i=1; i < STAGES; i=i+1) begin
		fwd[i] <= fwd[i-1];
	end
    if (reset == 1'b1)
    begin
        valid_out <= 0;
        f <= 0;
        a_in <= 0;
        b_in <= 0;
        correct_mult <= 0;
        enable_f <= 0;
		mult_in <= 0;
		for(i=0; i < STAGES; i=i+1) begin
			fwd[i] <= 0;
		end
    end
    else
    begin
		mult_in <= mult;
		enable_f <= correct_mult;
		correct_mult <= fwd[STAGES-2];
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
