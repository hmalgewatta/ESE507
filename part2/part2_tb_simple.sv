// Peter Milder

// This is a very small testbench for you to check that you have the right
// idea for the input/output timing.

// This should not be your only test -- it's simply a basic way to make
// sure you have the right idea.

module tb_part2_mac();

   localparam IN_WIDTH = 10;
   localparam IN_VEC_SIZE = 1000;

   logic clk, reset, valid_in, valid_out;
   logic signed [9:0] a, b;
   logic signed [19:0] f;

   logic [31:0] testInput[4*IN_VEC_SIZE-1:0] ;
   logic [31:0] testOut[2*IN_VEC_SIZE-1:0] ;
   
   integer i;

   part2_mac dut(.clk(clk), .reset(reset), .a(a), .b(b), .valid_in(valid_in), .f(f), .valid_out(valid_out));

   initial clk = 0;
   always #5 clk = ~clk;

   initial begin
       $readmemh("inputData", testInput);
       $readmemh("expectedOutput", testOut);
       i = 0;
   end

   initial begin
       // Before first clock edge, initialize
       reset = 1;
       {a, b} = {10'b0,10'b0};
       valid_in = 0;  
       repeat (IN_VEC_SIZE) begin
           @(posedge clk);
           #1;
           a = testInput[4*i][9:0];
           b = testInput[4*i+1][9:0];
           valid_in = testInput[4*i+2][0];
           reset = testInput[4*i+3][0];
            $display("a = %d, b = %d, valid_in = %d, reset = %d", a, b, valid_in, reset);
            $display("valid_out = %d. Expected value is %d\n", valid_out, testOut[2*i][0]);
            $display("f = %d. Expected value is testOut[%d] %d\n\n", f, 2*i+1, $signed(testOut[2*i+1][19:0]));
           assert(valid_out == testOut[2*i][0])
           else
           	$error("Valid out mismatch"); 
           if (valid_out == 1)
           assert(f == testOut[2*i+1][19:0])
           else begin
           	$error("Mismatch got %d, expected %d", f, $signed(testOut[2*i+1][19:0]));
           end
           i = i+1;
       end
       $finish;
	end

endmodule 
