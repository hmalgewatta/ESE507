module part3_mac(clk, reset, a, b, valid_in, f, valid_out); 

input clk, reset, valid_in;
input signed [9:0] a, b;
output logic signed [19:0] f;
output logic valid_out;

logic enable_f, enable_ab, correct_mult;

logic signed [19:0] mult;

logic signed [9:0] a_in, b_in;
logic signed [19:0] mult_in, f_in;

localparam OVERFLOW = 20'h7ffff;
localparam UNDERFLOW = 20'h80000;

//what had to be changed
// setting f (delayed by one cycle)
// setting valid_out (same)
// handling reset

always_comb 
begin
	enable_ab = valid_in;
	mult = a_in*b_in;	
	f_in = mult_in + f;
	if (f > 0 && mult_in > 0 && f_in < 0)
		f_in = OVERFLOW;
	else if (f < 0 && mult_in < 0 && f_in > 0)
		f_in = UNDERFLOW;
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
