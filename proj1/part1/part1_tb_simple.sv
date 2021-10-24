// Peter Milder

// This is a very small testbench for you to check that you have the right
// idea for the input/output timing.

// This should not be your only test -- it's simply a basic way to make
// sure you have the right idea.

module tb_part1_mac();

   localparam IN_WIDTH = 10;
   localparam IN_VEC_SIZE = 10000;

   logic clk, reset, valid_in, valid_out;
   logic signed [9:0] a, b;
   logic signed [19:0] f;

   logic [31:0] testInput[4*IN_VEC_SIZE-1:0] ;
   logic [31:0] testOut[2*IN_VEC_SIZE-1:0] ;
   
   integer i;

   part1_mac dut(.clk(clk), .reset(reset), .a(a), .b(b), .valid_in(valid_in), .f(f), .valid_out(valid_out));

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
           a = testInput[4*i];
           b = testInput[4*i+1];
           valid_in = testInput[4*i+2];
           reset = testInput[4*i+3];
           $display("a = %d, b = %d, valid_in = %d, reset = %d", a, b, valid_in, reset);
           $display("valid_out = %b. Expected value is %b\n", valid_out, testOut[2*i][0]);
           $display("f = %d. Expected value is testOut[%.4d] %d\n\n", f, 2*i+1, $signed(testOut[2*i+1][19:0]));
           assert(valid_out == testOut[2*i][0])
           else
           	$error("Valid out Mismatch");
           if (valid_out == 1)
           assert(f == testOut[2*i+1][19:0])
           else begin
           	$error("Mismatch got %d, expected %d", f, $signed(testOut[2*i+1][19:0]));
           end
           i = i+1;
       end
       $finish;
	end

//    initial begin

//       // Before first clock edge, initialize
//       reset = 1;
//       {a, b} = {10'b0,10'b0};
//       valid_in = 0;

//       @(posedge clk);
//       #1; // After 1 posedge
//       reset = 0; a = 1; b = 1; valid_in = 0;
//       @(posedge clk);
//       #1; // After 2 posedges
//       a = 2; b = 2; valid_in = 1;
//       @(posedge clk);
//       #1; // After 3 posedges
//       a = 3; b = 3; valid_in = 1;
//       @(posedge clk);
//       #1; // After 4 posedges
//       a = 4; b = 4; valid_in = 0;
//       @(posedge clk);
//       #1; // After 5 posedges
//       a = 5; b = 5; valid_in = 0;
//       @(posedge clk);
//       #1; // After 6 posedges
//       a = 6; b = 6; valid_in = 1;
//    end // initial begin

//    initial begin
//       @(posedge clk);
//       #1; // After 1 posedge
//       $display("valid_out = %b. Expected value is 0.", valid_out);
//       $display("f = %d. Expected value is 0.", f);
 
//       @(posedge clk);
//       #1; // After 2 posedges
//       $display("valid_out = %b. Expected value is 0.", valid_out);
//       $display("f = %d. Expected value is 0.", f);

//       @(posedge clk);
//       #1; // After 3 posedges
//       $display("valid_out = %b. Expected value is 0.", valid_out);
//       $display("f = %d. Expected value is 0.", f);

//       @(posedge clk);
//       #1; // After 4 posedges
//       $display("valid_out = %b. Expected value is 1.", valid_out);
//       $display("f = %d. Expected value is 4.", f);

//       @(posedge clk);
//       #1; // After 5 posedges
//       $display("valid_out = %b. Expected value is 1.", valid_out);
//       $display("f = %d. Expected value is 13.", f);

//       @(posedge clk);
//       #1; // After 6 posedges
//       $display("valid_out = %b. Expected value is 0.", valid_out);
//       $display("f = %d. Expected value is don't care (probably will be 13 in your design).", f);

//       @(posedge clk);
//       #1; // After 7 posedges
//       $display("valid_out = %b. Expected value is 0.", valid_out);
//       $display("f = %d. Expected value is is don't care (probably will be 13 in your design).", f);

//       @(posedge clk);
//       #1; // After 8 posedges
//       $display("valid_out = %b. Expected value is 1.", valid_out);
//       $display("f = %d. Expected value is 49.", f);

//       #20;
//       $finish;
//    end

endmodule 
