module part1_mac(clk, reset, a, b, valid_in, f, valid_out); 

input clk, reset, valid_in;
input signed [9:0] a, b;
output logic signed [19:0] f;
output logic valid_out;

logic enable_f, enable_ab;

logic signed [19:0] acc;

logic signed [9:0] a_in, b_in;

//assign enable_ab = valid_in;

always_comb 
begin
	enable_ab = valid_in;
	acc = a_in*b_in + f;
end

always_ff @(posedge clk) begin
    if (reset == 1'b1)
    begin
        valid_out <= 0;
        f <= 0;
        a_in <= 0;
        b_in <= 0;
        //enable_f <= 0;
    end
    else
    begin
        // register inputs on enable
        if (enable_ab == 1'b1)
        begin
            a_in <= a;
            b_in <=b;
            enable_f <= 1;
        end
        else
        begin
            enable_f <= 0;
        end

        // calculate result on enable
        if (enable_f == 1'b1)
        begin
            f <= acc;
	    	valid_out <= 1;
        end
	else
	    valid_out <= 0;
    end
end

endmodule
