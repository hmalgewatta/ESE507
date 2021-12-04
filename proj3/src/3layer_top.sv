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
