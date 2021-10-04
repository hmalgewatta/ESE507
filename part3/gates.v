
module part3b_mac_DW02_mult_6_stage_J1_0 ( A, B, TC, CLK, PRODUCT );
  input [9:0] A;
  input [9:0] B;
  output [19:0] PRODUCT;
  input TC, CLK;
  wire   n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, \A_extended[10] ,
         \B_extended[10] , \mult_x_1/n111 , \mult_x_1/n83 , \mult_x_1/n80 ,
         \mult_x_1/n79 , \mult_x_1/n74 , \mult_x_1/n73 , \mult_x_1/n68 ,
         \mult_x_1/n67 , \mult_x_1/n60 , \mult_x_1/n59 , \mult_x_1/n52 ,
         \mult_x_1/n51 , \mult_x_1/n44 , \mult_x_1/n43 , \mult_x_1/n38 ,
         \mult_x_1/n37 , \mult_x_1/n32 , \mult_x_1/n31 , \mult_x_1/n28 ,
         \mult_x_1/n27 , \mult_x_1/n24 , \mult_x_1/n23 , \mult_x_1/n22 ,
         \mult_x_1/n21 , \mult_x_1/n20 , \mult_x_1/n14 , \mult_x_1/n8 ,
         \mult_x_1/n2 , n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n325, n326, n328, n329, n331, n332, n334, n335,
         n337, n338, n340, n341, n343, n345, n347, n349, n351, n353;
  assign \A_extended[10]  = A[9];
  assign \B_extended[10]  = B[9];

  DFF_X1 clk_r_REG22_S5 ( .D(n360), .CK(CLK), .Q(PRODUCT[17]) );
  DFF_X1 clk_r_REG20_S5 ( .D(n361), .CK(CLK), .Q(PRODUCT[16]) );
  DFF_X1 clk_r_REG19_S5 ( .D(n362), .CK(CLK), .Q(PRODUCT[15]) );
  DFF_X1 clk_r_REG18_S5 ( .D(n363), .CK(CLK), .Q(PRODUCT[14]) );
  DFF_X1 clk_r_REG17_S5 ( .D(n364), .CK(CLK), .Q(PRODUCT[13]) );
  DFF_X1 clk_r_REG16_S5 ( .D(n365), .CK(CLK), .Q(PRODUCT[12]) );
  DFF_X1 clk_r_REG14_S4 ( .D(n366), .CK(CLK), .Q(n353) );
  DFF_X1 clk_r_REG15_S5 ( .D(n353), .CK(CLK), .Q(PRODUCT[11]) );
  DFF_X1 clk_r_REG11_S4 ( .D(n367), .CK(CLK), .Q(n351) );
  DFF_X1 clk_r_REG12_S5 ( .D(n351), .CK(CLK), .Q(PRODUCT[10]) );
  DFF_X1 clk_r_REG9_S4 ( .D(n368), .CK(CLK), .Q(n349) );
  DFF_X1 clk_r_REG10_S5 ( .D(n349), .CK(CLK), .Q(PRODUCT[9]) );
  DFF_X1 clk_r_REG56_S4 ( .D(n369), .CK(CLK), .Q(n347) );
  DFF_X1 clk_r_REG57_S5 ( .D(n347), .CK(CLK), .Q(PRODUCT[8]) );
  DFF_X1 clk_r_REG64_S4 ( .D(n370), .CK(CLK), .Q(n345) );
  DFF_X1 clk_r_REG65_S5 ( .D(n345), .CK(CLK), .Q(PRODUCT[7]) );
  DFF_X1 clk_r_REG71_S4 ( .D(n371), .CK(CLK), .Q(n343) );
  DFF_X1 clk_r_REG72_S5 ( .D(n343), .CK(CLK), .Q(PRODUCT[6]) );
  DFF_X1 clk_r_REG79_S3 ( .D(n372), .CK(CLK), .Q(n341) );
  DFF_X1 clk_r_REG80_S4 ( .D(n341), .CK(CLK), .Q(n340) );
  DFF_X1 clk_r_REG81_S5 ( .D(n340), .CK(CLK), .Q(PRODUCT[5]) );
  DFF_X1 clk_r_REG85_S3 ( .D(n373), .CK(CLK), .Q(n338) );
  DFF_X1 clk_r_REG86_S4 ( .D(n338), .CK(CLK), .Q(n337) );
  DFF_X1 clk_r_REG87_S5 ( .D(n337), .CK(CLK), .Q(PRODUCT[4]) );
  DFF_X1 clk_r_REG92_S3 ( .D(n374), .CK(CLK), .Q(n335) );
  DFF_X1 clk_r_REG93_S4 ( .D(n335), .CK(CLK), .Q(n334) );
  DFF_X1 clk_r_REG94_S5 ( .D(n334), .CK(CLK), .Q(PRODUCT[3]) );
  DFF_X1 clk_r_REG98_S3 ( .D(n375), .CK(CLK), .Q(n332) );
  DFF_X1 clk_r_REG99_S4 ( .D(n332), .CK(CLK), .Q(n331) );
  DFF_X1 clk_r_REG100_S5 ( .D(n331), .CK(CLK), .Q(PRODUCT[2]) );
  DFF_X1 clk_r_REG104_S3 ( .D(n376), .CK(CLK), .Q(n329) );
  DFF_X1 clk_r_REG105_S4 ( .D(n329), .CK(CLK), .Q(n328) );
  DFF_X1 clk_r_REG106_S5 ( .D(n328), .CK(CLK), .Q(PRODUCT[1]) );
  DFF_X1 clk_r_REG109_S3 ( .D(n377), .CK(CLK), .Q(n326) );
  DFF_X1 clk_r_REG110_S4 ( .D(n326), .CK(CLK), .Q(n325) );
  DFF_X1 clk_r_REG111_S5 ( .D(n325), .CK(CLK), .Q(PRODUCT[0]) );
  DFF_X1 \mult_x_1/clk_r_REG103_S2  ( .D(n296), .CK(CLK), .Q(n239) );
  DFF_X1 \mult_x_1/clk_r_REG102_S2  ( .D(n215), .CK(CLK), .Q(n216) );
  DFF_X1 \mult_x_1/clk_r_REG2_S2  ( .D(n297), .CK(CLK), .Q(n243) );
  DFF_X1 \mult_x_1/clk_r_REG60_S2  ( .D(n322), .CK(CLK), .Q(n242) );
  DFF_X1 \mult_x_1/clk_r_REG75_S2  ( .D(n315), .CK(CLK), .Q(n241) );
  DFF_X1 \mult_x_1/clk_r_REG90_S2  ( .D(n321), .CK(CLK), .Q(n240) );
  DFF_X1 \mult_x_1/clk_r_REG131_S2  ( .D(n237), .CK(CLK), .Q(n238), .QN(n323)
         );
  DFF_X1 \mult_x_1/clk_r_REG97_S2  ( .D(n196), .CK(CLK), .Q(n288), .QN(n304)
         );
  DFF_X1 \mult_x_1/clk_r_REG108_S2  ( .D(n217), .CK(CLK), .Q(n218), .QN(n303)
         );
  DFF_X1 \mult_x_1/clk_r_REG53_S2  ( .D(n192), .CK(CLK), .Q(n285), .QN(n302)
         );
  DFF_X1 \mult_x_1/clk_r_REG84_S2  ( .D(n194), .CK(CLK), .Q(n287), .QN(n301)
         );
  DFF_X1 \mult_x_1/clk_r_REG68_S2  ( .D(n198), .CK(CLK), .Q(n286), .QN(n300)
         );
  DFF_X1 \mult_x_1/clk_r_REG91_S2  ( .D(n195), .CK(CLK), .Q(n294), .QN(n319)
         );
  DFF_X1 \mult_x_1/clk_r_REG76_S2  ( .D(n193), .CK(CLK), .Q(n293), .QN(n317)
         );
  DFF_X1 \mult_x_1/clk_r_REG61_S2  ( .D(n197), .CK(CLK), .Q(n292), .QN(n316)
         );
  DFF_X1 \mult_x_1/clk_r_REG3_S2  ( .D(n191), .CK(CLK), .Q(n291), .QN(n318) );
  DFF_X1 \mult_x_1/clk_r_REG29_S4  ( .D(n289), .CK(CLK), .Q(n290), .QN(n295)
         );
  DFF_X1 \mult_x_1/clk_r_REG28_S3  ( .D(\mult_x_1/n20 ), .CK(CLK), .Q(n289) );
  DFF_X1 \mult_x_1/clk_r_REG77_S3  ( .D(\mult_x_1/n83 ), .CK(CLK), .Q(n284) );
  DFF_X1 \mult_x_1/clk_r_REG70_S3  ( .D(\mult_x_1/n80 ), .CK(CLK), .Q(n283) );
  DFF_X1 \mult_x_1/clk_r_REG69_S3  ( .D(\mult_x_1/n79 ), .CK(CLK), .Q(n282) );
  DFF_X1 \mult_x_1/clk_r_REG63_S3  ( .D(\mult_x_1/n74 ), .CK(CLK), .Q(n281) );
  DFF_X1 \mult_x_1/clk_r_REG62_S3  ( .D(\mult_x_1/n73 ), .CK(CLK), .Q(n280) );
  DFF_X1 \mult_x_1/clk_r_REG55_S3  ( .D(\mult_x_1/n68 ), .CK(CLK), .Q(n279) );
  DFF_X1 \mult_x_1/clk_r_REG54_S3  ( .D(\mult_x_1/n67 ), .CK(CLK), .Q(n278) );
  DFF_X1 \mult_x_1/clk_r_REG8_S3  ( .D(\mult_x_1/n60 ), .CK(CLK), .Q(n277) );
  DFF_X1 \mult_x_1/clk_r_REG7_S3  ( .D(\mult_x_1/n59 ), .CK(CLK), .Q(n276) );
  DFF_X1 \mult_x_1/clk_r_REG24_S3  ( .D(\mult_x_1/n52 ), .CK(CLK), .Q(n275) );
  DFF_X1 \mult_x_1/clk_r_REG23_S3  ( .D(\mult_x_1/n51 ), .CK(CLK), .Q(n274) );
  DFF_X1 \mult_x_1/clk_r_REG26_S3  ( .D(\mult_x_1/n44 ), .CK(CLK), .Q(n273) );
  DFF_X1 \mult_x_1/clk_r_REG27_S4  ( .D(n271), .CK(CLK), .Q(n272) );
  DFF_X1 \mult_x_1/clk_r_REG25_S3  ( .D(\mult_x_1/n43 ), .CK(CLK), .Q(n271) );
  DFF_X1 \mult_x_1/clk_r_REG49_S4  ( .D(n269), .CK(CLK), .Q(n270) );
  DFF_X1 \mult_x_1/clk_r_REG48_S3  ( .D(\mult_x_1/n38 ), .CK(CLK), .Q(n269) );
  DFF_X1 \mult_x_1/clk_r_REG50_S4  ( .D(n267), .CK(CLK), .Q(n268) );
  DFF_X1 \mult_x_1/clk_r_REG47_S3  ( .D(\mult_x_1/n37 ), .CK(CLK), .Q(n267) );
  DFF_X1 \mult_x_1/clk_r_REG45_S4  ( .D(n265), .CK(CLK), .Q(n266) );
  DFF_X1 \mult_x_1/clk_r_REG44_S3  ( .D(\mult_x_1/n32 ), .CK(CLK), .Q(n265) );
  DFF_X1 \mult_x_1/clk_r_REG46_S4  ( .D(n263), .CK(CLK), .Q(n264) );
  DFF_X1 \mult_x_1/clk_r_REG43_S3  ( .D(\mult_x_1/n31 ), .CK(CLK), .Q(n263) );
  DFF_X1 \mult_x_1/clk_r_REG41_S4  ( .D(n261), .CK(CLK), .Q(n262) );
  DFF_X1 \mult_x_1/clk_r_REG40_S3  ( .D(\mult_x_1/n28 ), .CK(CLK), .Q(n261) );
  DFF_X1 \mult_x_1/clk_r_REG42_S4  ( .D(n259), .CK(CLK), .Q(n260) );
  DFF_X1 \mult_x_1/clk_r_REG39_S3  ( .D(\mult_x_1/n27 ), .CK(CLK), .Q(n259) );
  DFF_X1 \mult_x_1/clk_r_REG37_S4  ( .D(n257), .CK(CLK), .Q(n258) );
  DFF_X1 \mult_x_1/clk_r_REG36_S3  ( .D(\mult_x_1/n24 ), .CK(CLK), .Q(n257) );
  DFF_X1 \mult_x_1/clk_r_REG38_S4  ( .D(n255), .CK(CLK), .Q(n256) );
  DFF_X1 \mult_x_1/clk_r_REG35_S3  ( .D(\mult_x_1/n23 ), .CK(CLK), .Q(n255) );
  DFF_X1 \mult_x_1/clk_r_REG33_S4  ( .D(n253), .CK(CLK), .Q(n254) );
  DFF_X1 \mult_x_1/clk_r_REG32_S3  ( .D(\mult_x_1/n22 ), .CK(CLK), .Q(n253) );
  DFF_X1 \mult_x_1/clk_r_REG34_S4  ( .D(n251), .CK(CLK), .Q(n252) );
  DFF_X1 \mult_x_1/clk_r_REG31_S3  ( .D(\mult_x_1/n21 ), .CK(CLK), .Q(n251) );
  DFF_X1 \mult_x_1/clk_r_REG78_S3  ( .D(\mult_x_1/n14 ), .CK(CLK), .Q(n250) );
  DFF_X1 \mult_x_1/clk_r_REG13_S4  ( .D(\mult_x_1/n8 ), .CK(CLK), .Q(n249) );
  DFF_X1 \mult_x_1/clk_r_REG21_S5  ( .D(\mult_x_1/n2 ), .CK(CLK), .Q(n248) );
  DFF_X1 \mult_x_1/clk_r_REG6_S5  ( .D(n246), .CK(CLK), .Q(n247) );
  DFF_X1 \mult_x_1/clk_r_REG5_S4  ( .D(n245), .CK(CLK), .Q(n246) );
  DFF_X1 \mult_x_1/clk_r_REG4_S3  ( .D(\mult_x_1/n111 ), .CK(CLK), .Q(n245) );
  DFF_X1 \mult_x_1/clk_r_REG30_S5  ( .D(n295), .CK(CLK), .Q(n244) );
  DFF_X1 \mult_x_1/clk_r_REG130_S1  ( .D(B[0]), .CK(CLK), .Q(n237) );
  DFF_X1 \mult_x_1/clk_r_REG129_S2  ( .D(n235), .CK(CLK), .Q(n236), .QN(n309)
         );
  DFF_X1 \mult_x_1/clk_r_REG128_S1  ( .D(B[1]), .CK(CLK), .Q(n235) );
  DFF_X1 \mult_x_1/clk_r_REG127_S2  ( .D(n233), .CK(CLK), .Q(n234), .QN(n310)
         );
  DFF_X1 \mult_x_1/clk_r_REG126_S1  ( .D(B[2]), .CK(CLK), .Q(n233) );
  DFF_X1 \mult_x_1/clk_r_REG125_S2  ( .D(n231), .CK(CLK), .Q(n232), .QN(n307)
         );
  DFF_X1 \mult_x_1/clk_r_REG124_S1  ( .D(B[3]), .CK(CLK), .Q(n231) );
  DFF_X1 \mult_x_1/clk_r_REG123_S2  ( .D(n229), .CK(CLK), .Q(n230), .QN(n308)
         );
  DFF_X1 \mult_x_1/clk_r_REG122_S1  ( .D(B[4]), .CK(CLK), .Q(n229) );
  DFF_X1 \mult_x_1/clk_r_REG121_S2  ( .D(n227), .CK(CLK), .Q(n228), .QN(n312)
         );
  DFF_X1 \mult_x_1/clk_r_REG120_S1  ( .D(B[5]), .CK(CLK), .Q(n227) );
  DFF_X1 \mult_x_1/clk_r_REG119_S2  ( .D(n225), .CK(CLK), .Q(n226), .QN(n311)
         );
  DFF_X1 \mult_x_1/clk_r_REG118_S1  ( .D(B[6]), .CK(CLK), .Q(n225) );
  DFF_X1 \mult_x_1/clk_r_REG117_S2  ( .D(n223), .CK(CLK), .Q(n224), .QN(n305)
         );
  DFF_X1 \mult_x_1/clk_r_REG116_S1  ( .D(B[7]), .CK(CLK), .Q(n223) );
  DFF_X1 \mult_x_1/clk_r_REG115_S2  ( .D(n221), .CK(CLK), .Q(n222), .QN(n306)
         );
  DFF_X1 \mult_x_1/clk_r_REG114_S1  ( .D(B[8]), .CK(CLK), .Q(n221) );
  DFF_X1 \mult_x_1/clk_r_REG113_S2  ( .D(n219), .CK(CLK), .Q(n220), .QN(n320)
         );
  DFF_X1 \mult_x_1/clk_r_REG112_S1  ( .D(\B_extended[10] ), .CK(CLK), .Q(n219)
         );
  DFF_X1 \mult_x_1/clk_r_REG107_S1  ( .D(A[0]), .CK(CLK), .Q(n217) );
  DFF_X1 \mult_x_1/clk_r_REG101_S1  ( .D(A[1]), .CK(CLK), .Q(n215), .QN(n296)
         );
  DFF_X1 \mult_x_1/clk_r_REG96_S2  ( .D(n213), .CK(CLK), .Q(n214) );
  DFF_X1 \mult_x_1/clk_r_REG95_S1  ( .D(A[2]), .CK(CLK), .Q(n213), .QN(n314)
         );
  DFF_X1 \mult_x_1/clk_r_REG89_S2  ( .D(n211), .CK(CLK), .Q(n212) );
  DFF_X1 \mult_x_1/clk_r_REG88_S1  ( .D(A[3]), .CK(CLK), .Q(n211), .QN(n321)
         );
  DFF_X1 \mult_x_1/clk_r_REG83_S2  ( .D(n209), .CK(CLK), .Q(n210) );
  DFF_X1 \mult_x_1/clk_r_REG82_S1  ( .D(A[4]), .CK(CLK), .Q(n209), .QN(n298)
         );
  DFF_X1 \mult_x_1/clk_r_REG74_S2  ( .D(n207), .CK(CLK), .Q(n208) );
  DFF_X1 \mult_x_1/clk_r_REG73_S1  ( .D(A[5]), .CK(CLK), .Q(n207), .QN(n315)
         );
  DFF_X1 \mult_x_1/clk_r_REG67_S2  ( .D(n205), .CK(CLK), .Q(n206) );
  DFF_X1 \mult_x_1/clk_r_REG66_S1  ( .D(A[6]), .CK(CLK), .Q(n205), .QN(n299)
         );
  DFF_X1 \mult_x_1/clk_r_REG59_S2  ( .D(n203), .CK(CLK), .Q(n204) );
  DFF_X1 \mult_x_1/clk_r_REG58_S1  ( .D(A[7]), .CK(CLK), .Q(n203), .QN(n322)
         );
  DFF_X1 \mult_x_1/clk_r_REG52_S2  ( .D(n201), .CK(CLK), .Q(n202) );
  DFF_X1 \mult_x_1/clk_r_REG51_S1  ( .D(A[8]), .CK(CLK), .Q(n201), .QN(n313)
         );
  DFF_X1 \mult_x_1/clk_r_REG1_S2  ( .D(n199), .CK(CLK), .Q(n200) );
  DFF_X1 \mult_x_1/clk_r_REG0_S1  ( .D(\A_extended[10] ), .CK(CLK), .Q(n199), 
        .QN(n297) );
  FA_X1 U1 ( .A(n252), .B(n290), .CI(n5), .CO(\mult_x_1/n2 ), .S(n360) );
  FA_X1 U2 ( .A(n256), .B(n254), .CI(n6), .CO(n5), .S(n361) );
  FA_X1 U3 ( .A(n258), .B(n260), .CI(n7), .CO(n6), .S(n362) );
  FA_X1 U4 ( .A(n262), .B(n264), .CI(n8), .CO(n7), .S(n363) );
  FA_X1 U5 ( .A(n266), .B(n268), .CI(n9), .CO(n8), .S(n364) );
  FA_X1 U6 ( .A(n270), .B(n272), .CI(n249), .CO(n9), .S(n365) );
  FA_X1 U7 ( .A(n273), .B(n274), .CI(n10), .CO(\mult_x_1/n8 ), .S(n366) );
  FA_X1 U8 ( .A(n275), .B(n276), .CI(n11), .CO(n10), .S(n367) );
  FA_X1 U9 ( .A(n277), .B(n278), .CI(n12), .CO(n11), .S(n368) );
  FA_X1 U10 ( .A(n279), .B(n280), .CI(n13), .CO(n12), .S(n369) );
  FA_X1 U11 ( .A(n281), .B(n282), .CI(n14), .CO(n13), .S(n370) );
  FA_X1 U12 ( .A(n283), .B(n284), .CI(n250), .CO(n14), .S(n371) );
  AOI22_X1 U13 ( .A1(n212), .A2(n307), .B1(n232), .B2(n240), .ZN(n167) );
  AOI22_X1 U14 ( .A1(n212), .A2(n310), .B1(n234), .B2(n240), .ZN(n22) );
  OAI22_X1 U15 ( .A1(n288), .A2(n167), .B1(n294), .B2(n22), .ZN(n46) );
  NOR2_X1 U16 ( .A1(n230), .A2(n239), .ZN(n17) );
  AOI22_X1 U17 ( .A1(n216), .A2(n312), .B1(n228), .B2(n239), .ZN(n15) );
  INV_X1 U18 ( .A(n15), .ZN(n16) );
  MUX2_X1 U19 ( .A(n17), .B(n16), .S(n218), .Z(n45) );
  AOI221_X1 U20 ( .B1(n301), .B2(n238), .C1(n287), .C2(n210), .A(n241), .ZN(
        n178) );
  AOI22_X1 U21 ( .A1(n208), .A2(n309), .B1(n236), .B2(n241), .ZN(n179) );
  OAI221_X1 U22 ( .B1(n208), .B2(n238), .C1(n241), .C2(n323), .A(n317), .ZN(
        n18) );
  OAI21_X1 U23 ( .B1(n179), .B2(n287), .A(n18), .ZN(n177) );
  NOR2_X1 U24 ( .A1(n232), .A2(n239), .ZN(n21) );
  AOI22_X1 U25 ( .A1(n216), .A2(n308), .B1(n230), .B2(n239), .ZN(n19) );
  INV_X1 U26 ( .A(n19), .ZN(n20) );
  MUX2_X1 U27 ( .A(n21), .B(n20), .S(n218), .Z(n25) );
  NOR2_X1 U28 ( .A1(n323), .A2(n287), .ZN(n24) );
  AOI22_X1 U29 ( .A1(n212), .A2(n309), .B1(n236), .B2(n240), .ZN(n27) );
  OAI22_X1 U30 ( .A1(n288), .A2(n22), .B1(n294), .B2(n27), .ZN(n23) );
  FA_X1 U31 ( .A(n25), .B(n24), .CI(n23), .CO(n39), .S(n43) );
  OAI221_X1 U32 ( .B1(n212), .B2(n238), .C1(n240), .C2(n323), .A(n319), .ZN(
        n26) );
  OAI21_X1 U33 ( .B1(n27), .B2(n288), .A(n26), .ZN(n32) );
  NOR2_X1 U34 ( .A1(n234), .A2(n239), .ZN(n30) );
  AOI22_X1 U35 ( .A1(n216), .A2(n307), .B1(n232), .B2(n239), .ZN(n28) );
  INV_X1 U36 ( .A(n28), .ZN(n29) );
  MUX2_X1 U37 ( .A(n30), .B(n29), .S(n218), .Z(n31) );
  HA_X1 U38 ( .A(n32), .B(n31), .CO(n42), .S(n49) );
  AOI221_X1 U39 ( .B1(n304), .B2(n238), .C1(n288), .C2(n214), .A(n240), .ZN(
        n48) );
  NOR2_X1 U40 ( .A1(n236), .A2(n239), .ZN(n35) );
  AOI22_X1 U41 ( .A1(n216), .A2(n310), .B1(n234), .B2(n239), .ZN(n33) );
  INV_X1 U42 ( .A(n33), .ZN(n34) );
  MUX2_X1 U43 ( .A(n35), .B(n34), .S(n218), .Z(n52) );
  NOR2_X1 U44 ( .A1(n288), .A2(n323), .ZN(n51) );
  NAND2_X1 U45 ( .A1(n216), .A2(n303), .ZN(n37) );
  AOI22_X1 U46 ( .A1(n216), .A2(n309), .B1(n236), .B2(n239), .ZN(n36) );
  OAI22_X1 U47 ( .A1(n238), .A2(n37), .B1(n36), .B2(n303), .ZN(n54) );
  AOI21_X1 U48 ( .B1(n238), .B2(n218), .A(n239), .ZN(n53) );
  FA_X1 U49 ( .A(n40), .B(n39), .CI(n38), .CO(\mult_x_1/n14 ), .S(n372) );
  FA_X1 U50 ( .A(n43), .B(n42), .CI(n41), .CO(n38), .S(n373) );
  FA_X1 U51 ( .A(n46), .B(n45), .CI(n44), .CO(\mult_x_1/n83 ), .S(n40) );
  FA_X1 U52 ( .A(n49), .B(n48), .CI(n47), .CO(n41), .S(n374) );
  FA_X1 U53 ( .A(n52), .B(n51), .CI(n50), .CO(n47), .S(n375) );
  HA_X1 U54 ( .A(n54), .B(n53), .CO(n50), .S(n376) );
  AOI22_X1 U55 ( .A1(n222), .A2(n243), .B1(n200), .B2(n306), .ZN(n187) );
  AOI22_X1 U56 ( .A1(n224), .A2(n243), .B1(n200), .B2(n305), .ZN(n60) );
  OAI22_X1 U57 ( .A1(n285), .A2(n187), .B1(n291), .B2(n60), .ZN(n59) );
  AOI22_X1 U58 ( .A1(n204), .A2(n220), .B1(n320), .B2(n242), .ZN(n56) );
  AOI22_X1 U59 ( .A1(n222), .A2(n242), .B1(n204), .B2(n306), .ZN(n61) );
  INV_X1 U60 ( .A(n61), .ZN(n55) );
  AOI22_X1 U61 ( .A1(n300), .A2(n56), .B1(n316), .B2(n55), .ZN(n66) );
  INV_X1 U62 ( .A(n66), .ZN(n58) );
  OAI21_X1 U63 ( .B1(n300), .B2(n316), .A(n56), .ZN(n57) );
  FA_X1 U64 ( .A(n59), .B(n58), .CI(n57), .CO(\mult_x_1/n21 ), .S(
        \mult_x_1/n22 ) );
  AOI22_X1 U65 ( .A1(n200), .A2(n311), .B1(n226), .B2(n243), .ZN(n69) );
  OAI22_X1 U66 ( .A1(n285), .A2(n60), .B1(n291), .B2(n69), .ZN(n65) );
  AOI22_X1 U67 ( .A1(n224), .A2(n242), .B1(n204), .B2(n305), .ZN(n67) );
  OAI22_X1 U68 ( .A1(n286), .A2(n61), .B1(n292), .B2(n67), .ZN(n72) );
  AOI22_X1 U69 ( .A1(n208), .A2(n220), .B1(n320), .B2(n241), .ZN(n63) );
  AOI22_X1 U70 ( .A1(n222), .A2(n241), .B1(n208), .B2(n306), .ZN(n82) );
  INV_X1 U71 ( .A(n82), .ZN(n62) );
  AOI22_X1 U72 ( .A1(n301), .A2(n63), .B1(n317), .B2(n62), .ZN(n76) );
  INV_X1 U73 ( .A(n76), .ZN(n71) );
  OAI21_X1 U74 ( .B1(n301), .B2(n317), .A(n63), .ZN(n70) );
  FA_X1 U75 ( .A(n66), .B(n65), .CI(n64), .CO(\mult_x_1/n23 ), .S(
        \mult_x_1/n24 ) );
  AOI22_X1 U76 ( .A1(n200), .A2(n312), .B1(n228), .B2(n243), .ZN(n68) );
  AOI22_X1 U77 ( .A1(n230), .A2(n243), .B1(n200), .B2(n308), .ZN(n80) );
  OAI22_X1 U78 ( .A1(n285), .A2(n68), .B1(n291), .B2(n80), .ZN(n78) );
  AOI22_X1 U79 ( .A1(n204), .A2(n311), .B1(n226), .B2(n242), .ZN(n79) );
  OAI22_X1 U80 ( .A1(n286), .A2(n67), .B1(n292), .B2(n79), .ZN(n77) );
  OAI22_X1 U81 ( .A1(n285), .A2(n69), .B1(n291), .B2(n68), .ZN(n74) );
  FA_X1 U82 ( .A(n72), .B(n71), .CI(n70), .CO(n64), .S(n73) );
  FA_X1 U83 ( .A(n75), .B(n74), .CI(n73), .CO(\mult_x_1/n27 ), .S(
        \mult_x_1/n28 ) );
  FA_X1 U84 ( .A(n78), .B(n77), .CI(n76), .CO(n75), .S(n88) );
  AOI22_X1 U85 ( .A1(n204), .A2(n312), .B1(n228), .B2(n242), .ZN(n83) );
  OAI22_X1 U86 ( .A1(n286), .A2(n79), .B1(n292), .B2(n83), .ZN(n97) );
  AOI22_X1 U87 ( .A1(n232), .A2(n243), .B1(n200), .B2(n307), .ZN(n84) );
  OAI22_X1 U88 ( .A1(n285), .A2(n80), .B1(n291), .B2(n84), .ZN(n96) );
  AOI22_X1 U89 ( .A1(n212), .A2(n220), .B1(n320), .B2(n240), .ZN(n81) );
  OAI21_X1 U90 ( .B1(n304), .B2(n319), .A(n81), .ZN(n95) );
  AOI22_X1 U91 ( .A1(n222), .A2(n212), .B1(n240), .B2(n306), .ZN(n90) );
  AOI22_X1 U92 ( .A1(n304), .A2(n81), .B1(n90), .B2(n319), .ZN(n115) );
  INV_X1 U93 ( .A(n115), .ZN(n100) );
  AOI22_X1 U94 ( .A1(n224), .A2(n241), .B1(n208), .B2(n305), .ZN(n85) );
  OAI22_X1 U95 ( .A1(n287), .A2(n82), .B1(n293), .B2(n85), .ZN(n99) );
  OAI22_X1 U96 ( .A1(n308), .A2(n242), .B1(n204), .B2(n230), .ZN(n91) );
  OAI22_X1 U97 ( .A1(n286), .A2(n83), .B1(n91), .B2(n292), .ZN(n113) );
  AOI22_X1 U98 ( .A1(n200), .A2(n310), .B1(n234), .B2(n243), .ZN(n94) );
  OAI22_X1 U99 ( .A1(n285), .A2(n84), .B1(n291), .B2(n94), .ZN(n112) );
  AOI22_X1 U100 ( .A1(n208), .A2(n311), .B1(n226), .B2(n241), .ZN(n93) );
  OAI22_X1 U101 ( .A1(n287), .A2(n85), .B1(n293), .B2(n93), .ZN(n111) );
  FA_X1 U102 ( .A(n88), .B(n87), .CI(n86), .CO(\mult_x_1/n31 ), .S(
        \mult_x_1/n32 ) );
  OAI22_X1 U103 ( .A1(n240), .A2(n305), .B1(n224), .B2(n212), .ZN(n110) );
  INV_X1 U104 ( .A(n110), .ZN(n89) );
  AOI22_X1 U105 ( .A1(n304), .A2(n90), .B1(n89), .B2(n319), .ZN(n105) );
  OAI22_X1 U106 ( .A1(n242), .A2(n307), .B1(n232), .B2(n204), .ZN(n108) );
  OAI22_X1 U107 ( .A1(n286), .A2(n91), .B1(n108), .B2(n292), .ZN(n104) );
  INV_X1 U108 ( .A(n104), .ZN(n92) );
  NAND2_X1 U109 ( .A1(n105), .A2(n92), .ZN(n116) );
  AOI22_X1 U110 ( .A1(n208), .A2(n312), .B1(n228), .B2(n241), .ZN(n109) );
  OAI22_X1 U111 ( .A1(n287), .A2(n93), .B1(n293), .B2(n109), .ZN(n130) );
  AOI22_X1 U112 ( .A1(n200), .A2(n309), .B1(n236), .B2(n243), .ZN(n107) );
  OAI22_X1 U113 ( .A1(n285), .A2(n94), .B1(n291), .B2(n107), .ZN(n129) );
  AOI22_X1 U114 ( .A1(n216), .A2(n220), .B1(n320), .B2(n239), .ZN(n122) );
  OAI21_X1 U115 ( .B1(n216), .B2(n218), .A(n122), .ZN(n128) );
  FA_X1 U116 ( .A(n97), .B(n96), .CI(n95), .CO(n87), .S(n102) );
  FA_X1 U117 ( .A(n100), .B(n99), .CI(n98), .CO(n86), .S(n101) );
  FA_X1 U118 ( .A(n103), .B(n102), .CI(n101), .CO(\mult_x_1/n37 ), .S(
        \mult_x_1/n38 ) );
  XOR2_X1 U119 ( .A(n105), .B(n104), .Z(n133) );
  AOI221_X1 U120 ( .B1(n302), .B2(n238), .C1(n285), .C2(n202), .A(n243), .ZN(
        n121) );
  OAI221_X1 U121 ( .B1(n238), .B2(n200), .C1(n323), .C2(n243), .A(n318), .ZN(
        n106) );
  OAI21_X1 U122 ( .B1(n107), .B2(n285), .A(n106), .ZN(n120) );
  AOI22_X1 U123 ( .A1(n204), .A2(n310), .B1(n234), .B2(n242), .ZN(n140) );
  OAI22_X1 U124 ( .A1(n286), .A2(n108), .B1(n292), .B2(n140), .ZN(n139) );
  AOI22_X1 U125 ( .A1(n208), .A2(n308), .B1(n230), .B2(n241), .ZN(n124) );
  OAI22_X1 U126 ( .A1(n287), .A2(n109), .B1(n293), .B2(n124), .ZN(n138) );
  AOI22_X1 U127 ( .A1(n212), .A2(n311), .B1(n226), .B2(n240), .ZN(n141) );
  OAI22_X1 U128 ( .A1(n288), .A2(n110), .B1(n294), .B2(n141), .ZN(n137) );
  FA_X1 U129 ( .A(n113), .B(n112), .CI(n111), .CO(n98), .S(n118) );
  FA_X1 U130 ( .A(n116), .B(n115), .CI(n114), .CO(n103), .S(n117) );
  FA_X1 U131 ( .A(n119), .B(n118), .CI(n117), .CO(\mult_x_1/n43 ), .S(
        \mult_x_1/n44 ) );
  HA_X1 U132 ( .A(n121), .B(n120), .CO(n132), .S(n146) );
  NOR2_X1 U133 ( .A1(n222), .A2(n239), .ZN(n123) );
  MUX2_X1 U134 ( .A(n123), .B(n122), .S(n218), .Z(n145) );
  AOI22_X1 U135 ( .A1(n208), .A2(n307), .B1(n232), .B2(n241), .ZN(n153) );
  OAI22_X1 U136 ( .A1(n287), .A2(n124), .B1(n293), .B2(n153), .ZN(n152) );
  NOR2_X1 U137 ( .A1(n323), .A2(n285), .ZN(n151) );
  NOR2_X1 U138 ( .A1(n224), .A2(n239), .ZN(n127) );
  AOI22_X1 U139 ( .A1(n216), .A2(n306), .B1(n222), .B2(n239), .ZN(n125) );
  INV_X1 U140 ( .A(n125), .ZN(n126) );
  MUX2_X1 U141 ( .A(n127), .B(n126), .S(n218), .Z(n150) );
  FA_X1 U142 ( .A(n130), .B(n129), .CI(n128), .CO(n114), .S(n135) );
  FA_X1 U143 ( .A(n133), .B(n132), .CI(n131), .CO(n119), .S(n134) );
  FA_X1 U144 ( .A(n136), .B(n135), .CI(n134), .CO(\mult_x_1/n51 ), .S(
        \mult_x_1/n52 ) );
  FA_X1 U145 ( .A(n139), .B(n138), .CI(n137), .CO(n131), .S(n149) );
  AOI22_X1 U146 ( .A1(n204), .A2(n309), .B1(n236), .B2(n242), .ZN(n143) );
  OAI22_X1 U147 ( .A1(n286), .A2(n140), .B1(n292), .B2(n143), .ZN(n160) );
  AOI22_X1 U148 ( .A1(n212), .A2(n312), .B1(n228), .B2(n240), .ZN(n157) );
  OAI22_X1 U149 ( .A1(n288), .A2(n141), .B1(n294), .B2(n157), .ZN(n159) );
  AOI221_X1 U150 ( .B1(n300), .B2(n238), .C1(n286), .C2(n206), .A(n242), .ZN(
        n170) );
  OAI221_X1 U151 ( .B1(n204), .B2(n238), .C1(n242), .C2(n323), .A(n316), .ZN(
        n142) );
  OAI21_X1 U152 ( .B1(n143), .B2(n286), .A(n142), .ZN(n169) );
  FA_X1 U153 ( .A(n146), .B(n145), .CI(n144), .CO(n136), .S(n147) );
  FA_X1 U154 ( .A(n149), .B(n148), .CI(n147), .CO(\mult_x_1/n59 ), .S(
        \mult_x_1/n60 ) );
  FA_X1 U155 ( .A(n152), .B(n151), .CI(n150), .CO(n144), .S(n163) );
  AOI22_X1 U156 ( .A1(n208), .A2(n310), .B1(n234), .B2(n241), .ZN(n180) );
  OAI22_X1 U157 ( .A1(n287), .A2(n153), .B1(n293), .B2(n180), .ZN(n173) );
  NOR2_X1 U158 ( .A1(n226), .A2(n239), .ZN(n156) );
  AOI22_X1 U159 ( .A1(n216), .A2(n305), .B1(n224), .B2(n239), .ZN(n154) );
  INV_X1 U160 ( .A(n154), .ZN(n155) );
  MUX2_X1 U161 ( .A(n156), .B(n155), .S(n218), .Z(n172) );
  AOI22_X1 U162 ( .A1(n212), .A2(n308), .B1(n230), .B2(n240), .ZN(n168) );
  OAI22_X1 U163 ( .A1(n288), .A2(n157), .B1(n294), .B2(n168), .ZN(n171) );
  FA_X1 U164 ( .A(n160), .B(n159), .CI(n158), .CO(n148), .S(n161) );
  FA_X1 U165 ( .A(n163), .B(n162), .CI(n161), .CO(\mult_x_1/n67 ), .S(
        \mult_x_1/n68 ) );
  NOR2_X1 U166 ( .A1(n228), .A2(n239), .ZN(n166) );
  AOI22_X1 U167 ( .A1(n216), .A2(n311), .B1(n226), .B2(n239), .ZN(n164) );
  INV_X1 U168 ( .A(n164), .ZN(n165) );
  MUX2_X1 U169 ( .A(n166), .B(n165), .S(n218), .Z(n183) );
  NOR2_X1 U170 ( .A1(n286), .A2(n323), .ZN(n182) );
  OAI22_X1 U171 ( .A1(n288), .A2(n168), .B1(n294), .B2(n167), .ZN(n181) );
  HA_X1 U172 ( .A(n170), .B(n169), .CO(n158), .S(n175) );
  FA_X1 U173 ( .A(n173), .B(n172), .CI(n171), .CO(n162), .S(n174) );
  FA_X1 U174 ( .A(n176), .B(n175), .CI(n174), .CO(\mult_x_1/n73 ), .S(
        \mult_x_1/n74 ) );
  HA_X1 U175 ( .A(n178), .B(n177), .CO(n186), .S(n44) );
  OAI22_X1 U176 ( .A1(n287), .A2(n180), .B1(n293), .B2(n179), .ZN(n185) );
  FA_X1 U177 ( .A(n183), .B(n182), .CI(n181), .CO(n176), .S(n184) );
  FA_X1 U178 ( .A(n186), .B(n185), .CI(n184), .CO(\mult_x_1/n79 ), .S(
        \mult_x_1/n80 ) );
  OAI22_X1 U179 ( .A1(n322), .A2(n313), .B1(n201), .B2(n203), .ZN(n192) );
  OAI221_X1 U180 ( .B1(n313), .B2(n297), .C1(n201), .C2(n199), .A(n192), .ZN(
        n191) );
  AOI22_X1 U181 ( .A1(n200), .A2(n220), .B1(n320), .B2(n243), .ZN(n189) );
  OAI21_X1 U182 ( .B1(n302), .B2(n318), .A(n189), .ZN(\mult_x_1/n111 ) );
  OAI22_X1 U183 ( .A1(n299), .A2(n315), .B1(n207), .B2(n205), .ZN(n198) );
  OAI221_X1 U184 ( .B1(n299), .B2(n322), .C1(n205), .C2(n203), .A(n198), .ZN(
        n197) );
  OAI22_X1 U185 ( .A1(n321), .A2(n298), .B1(n209), .B2(n211), .ZN(n194) );
  OAI221_X1 U186 ( .B1(n298), .B2(n315), .C1(n209), .C2(n207), .A(n194), .ZN(
        n193) );
  OAI22_X1 U187 ( .A1(n314), .A2(n296), .B1(n215), .B2(n213), .ZN(n196) );
  OAI221_X1 U188 ( .B1(n314), .B2(n321), .C1(n213), .C2(n211), .A(n196), .ZN(
        n195) );
  INV_X1 U189 ( .A(n187), .ZN(n188) );
  AOI22_X1 U190 ( .A1(n302), .A2(n189), .B1(n318), .B2(n188), .ZN(
        \mult_x_1/n20 ) );
  NOR2_X1 U191 ( .A1(n323), .A2(n303), .ZN(n377) );
  FA_X1 U192 ( .A(n247), .B(n244), .CI(n248), .CO(n190), .S(PRODUCT[18]) );
  INV_X1 U193 ( .A(n190), .ZN(PRODUCT[19]) );
endmodule


module part3b_mac ( clk, reset, a, b, valid_in, f, valid_out );
  input [9:0] a;
  input [9:0] b;
  output [19:0] f;
  input clk, reset, valid_in;
  output valid_out;
  wire   N27, N28, correct_mult, enable_f, N56, N100, N102, N104, N105, N106,
         N107, N108, N109, N110, N111, N112, N113, N114, N115, N116, N117,
         N118, N119, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464;
  wire   [9:0] a_in;
  wire   [9:0] b_in;
  wire   [19:0] mult;
  wire   [19:0] mult_in;
  assign f[19] = N27;

  DFF_X1 \a_in_reg[9]  ( .D(n443), .CK(clk), .Q(a_in[9]) );
  DFF_X1 \a_in_reg[8]  ( .D(n444), .CK(clk), .Q(a_in[8]) );
  DFF_X1 \a_in_reg[7]  ( .D(n445), .CK(clk), .Q(a_in[7]) );
  DFF_X1 \a_in_reg[6]  ( .D(n446), .CK(clk), .Q(a_in[6]) );
  DFF_X1 \a_in_reg[5]  ( .D(n447), .CK(clk), .Q(a_in[5]) );
  DFF_X1 \a_in_reg[4]  ( .D(n448), .CK(clk), .Q(a_in[4]) );
  DFF_X1 \a_in_reg[3]  ( .D(n449), .CK(clk), .Q(a_in[3]) );
  DFF_X1 \a_in_reg[2]  ( .D(n450), .CK(clk), .Q(a_in[2]) );
  DFF_X1 \a_in_reg[1]  ( .D(n451), .CK(clk), .Q(a_in[1]) );
  DFF_X1 \a_in_reg[0]  ( .D(n452), .CK(clk), .Q(a_in[0]) );
  DFF_X1 \b_in_reg[9]  ( .D(n453), .CK(clk), .Q(b_in[9]) );
  DFF_X1 \b_in_reg[8]  ( .D(n454), .CK(clk), .Q(b_in[8]) );
  DFF_X1 \b_in_reg[7]  ( .D(n455), .CK(clk), .Q(b_in[7]) );
  DFF_X1 \b_in_reg[6]  ( .D(n456), .CK(clk), .Q(b_in[6]) );
  DFF_X1 \b_in_reg[5]  ( .D(n457), .CK(clk), .Q(b_in[5]) );
  DFF_X1 \b_in_reg[4]  ( .D(n458), .CK(clk), .Q(b_in[4]) );
  DFF_X1 \b_in_reg[3]  ( .D(n459), .CK(clk), .Q(b_in[3]) );
  DFF_X1 \b_in_reg[2]  ( .D(n460), .CK(clk), .Q(b_in[2]) );
  DFF_X1 \b_in_reg[1]  ( .D(n461), .CK(clk), .Q(b_in[1]) );
  DFF_X1 \b_in_reg[0]  ( .D(n462), .CK(clk), .Q(b_in[0]) );
  DFF_X1 correct_mult_reg ( .D(n441), .CK(clk), .Q(correct_mult) );
  DFF_X1 \f_reg[1]  ( .D(n94), .CK(clk), .Q(f[1]), .QN(n434) );
  DFF_X1 \f_reg[3]  ( .D(n92), .CK(clk), .Q(f[3]) );
  DFF_X1 \f_reg[4]  ( .D(n91), .CK(clk), .Q(f[4]) );
  DFF_X1 \f_reg[5]  ( .D(n90), .CK(clk), .Q(f[5]), .QN(n428) );
  DFF_X1 \f_reg[7]  ( .D(n88), .CK(clk), .Q(f[7]), .QN(n424) );
  DFF_X1 \f_reg[8]  ( .D(n87), .CK(clk), .Q(f[8]), .QN(n429) );
  DFF_X1 \f_reg[9]  ( .D(n86), .CK(clk), .Q(f[9]), .QN(n426) );
  DFF_X1 \f_reg[11]  ( .D(n84), .CK(clk), .Q(f[11]), .QN(n425) );
  DFF_X1 \f_reg[12]  ( .D(n83), .CK(clk), .Q(f[12]), .QN(n435) );
  DFF_X1 \f_reg[13]  ( .D(n82), .CK(clk), .Q(f[13]), .QN(n430) );
  DFF_X1 \f_reg[14]  ( .D(n81), .CK(clk), .Q(f[14]), .QN(n423) );
  DFF_X1 \f_reg[15]  ( .D(n80), .CK(clk), .Q(f[15]), .QN(n431) );
  DFF_X1 \f_reg[17]  ( .D(n78), .CK(clk), .Q(f[17]), .QN(n432) );
  DFF_X1 \f_reg[18]  ( .D(n77), .CK(clk), .Q(f[18]), .QN(n436) );
  DFF_X1 \f_reg[19]  ( .D(n464), .CK(clk), .Q(N27), .QN(n421) );
  DFF_X1 valid_out_reg ( .D(N56), .CK(clk), .Q(valid_out) );
  DFF_X1 \mult_in_reg[19]  ( .D(N119), .CK(clk), .Q(N28), .QN(n422) );
  DFF_X1 \mult_in_reg[18]  ( .D(N118), .CK(clk), .Q(mult_in[18]) );
  DFF_X1 \mult_in_reg[17]  ( .D(N117), .CK(clk), .Q(mult_in[17]) );
  DFF_X1 \mult_in_reg[16]  ( .D(N116), .CK(clk), .Q(mult_in[16]) );
  DFF_X1 \mult_in_reg[15]  ( .D(N115), .CK(clk), .Q(mult_in[15]) );
  DFF_X1 \mult_in_reg[14]  ( .D(N114), .CK(clk), .Q(mult_in[14]) );
  DFF_X1 \mult_in_reg[13]  ( .D(N113), .CK(clk), .Q(mult_in[13]) );
  DFF_X1 \mult_in_reg[12]  ( .D(N112), .CK(clk), .Q(mult_in[12]) );
  DFF_X1 \mult_in_reg[11]  ( .D(N111), .CK(clk), .Q(mult_in[11]) );
  DFF_X1 \mult_in_reg[10]  ( .D(N110), .CK(clk), .Q(mult_in[10]) );
  DFF_X1 \mult_in_reg[9]  ( .D(N109), .CK(clk), .Q(mult_in[9]) );
  DFF_X1 \mult_in_reg[8]  ( .D(N108), .CK(clk), .Q(mult_in[8]) );
  DFF_X1 \mult_in_reg[7]  ( .D(N107), .CK(clk), .Q(mult_in[7]) );
  DFF_X1 \mult_in_reg[6]  ( .D(N106), .CK(clk), .Q(mult_in[6]) );
  DFF_X1 \mult_in_reg[5]  ( .D(N105), .CK(clk), .Q(mult_in[5]) );
  DFF_X1 \mult_in_reg[4]  ( .D(N104), .CK(clk), .Q(mult_in[4]) );
  DFF_X1 \mult_in_reg[2]  ( .D(N102), .CK(clk), .Q(mult_in[2]) );
  DFF_X1 enable_f_reg ( .D(n463), .CK(clk), .Q(enable_f), .QN(n433) );
  part3b_mac_DW02_mult_6_stage_J1_0 multinstance ( .A(a_in), .B(b_in), .TC(
        1'b1), .CLK(clk), .PRODUCT(mult) );
  DFF_X1 \f_reg[0]  ( .D(n95), .CK(clk), .Q(f[0]), .QN(n442) );
  DFF_X1 \f_reg[6]  ( .D(n89), .CK(clk), .Q(f[6]), .QN(n427) );
  DFF_X1 \f_reg[10]  ( .D(n85), .CK(clk), .Q(f[10]), .QN(n438) );
  DFF_X1 \f_reg[2]  ( .D(n93), .CK(clk), .Q(f[2]), .QN(n439) );
  DFF_X1 \f_reg[16]  ( .D(n79), .CK(clk), .Q(f[16]), .QN(n437) );
  DFF_X1 \mult_in_reg[1]  ( .D(n123), .CK(clk), .QN(mult_in[1]) );
  SDFF_X1 \mult_in_reg[3]  ( .D(1'b0), .SI(n440), .SE(mult[3]), .CK(clk), .Q(
        mult_in[3]) );
  DFF_X1 \mult_in_reg[0]  ( .D(N100), .CK(clk), .Q(mult_in[0]) );
  BUF_X1 U141 ( .A(n118), .Z(n391) );
  OAI21_X2 U142 ( .B1(n152), .B2(n132), .A(n131), .ZN(n272) );
  AND2_X1 U143 ( .A1(n392), .A2(n117), .ZN(n293) );
  OR2_X1 U144 ( .A1(n393), .A2(n437), .ZN(n117) );
  AND3_X1 U145 ( .A1(n354), .A2(n353), .A3(n352), .ZN(n357) );
  OR2_X1 U146 ( .A1(f[16]), .A2(mult_in[16]), .ZN(n290) );
  OR2_X1 U147 ( .A1(f[13]), .A2(mult_in[13]), .ZN(n235) );
  XNOR2_X1 U148 ( .A(n315), .B(n314), .ZN(n322) );
  AND2_X1 U149 ( .A1(n370), .A2(n119), .ZN(n118) );
  AND2_X1 U150 ( .A1(enable_f), .A2(n440), .ZN(n119) );
  BUF_X1 U151 ( .A(n118), .Z(n316) );
  AND2_X1 U152 ( .A1(n216), .A2(n215), .ZN(n120) );
  AND2_X1 U153 ( .A1(n149), .A2(n148), .ZN(n121) );
  AND4_X1 U154 ( .A1(n367), .A2(n366), .A3(n365), .A4(n364), .ZN(n122) );
  NAND2_X1 U155 ( .A1(mult[1]), .A2(n440), .ZN(n123) );
  INV_X1 U157 ( .A(reset), .ZN(n440) );
  NOR2_X1 U158 ( .A1(f[2]), .A2(mult_in[2]), .ZN(n346) );
  NOR2_X1 U159 ( .A1(f[3]), .A2(mult_in[3]), .ZN(n124) );
  NOR2_X1 U160 ( .A1(n346), .A2(n124), .ZN(n126) );
  NOR2_X1 U161 ( .A1(f[1]), .A2(mult_in[1]), .ZN(n193) );
  NAND2_X1 U162 ( .A1(f[0]), .A2(mult_in[0]), .ZN(n266) );
  NAND2_X1 U163 ( .A1(f[1]), .A2(mult_in[1]), .ZN(n194) );
  OAI21_X1 U164 ( .B1(n193), .B2(n266), .A(n194), .ZN(n242) );
  NAND2_X1 U165 ( .A1(f[2]), .A2(mult_in[2]), .ZN(n345) );
  NAND2_X1 U166 ( .A1(f[3]), .A2(mult_in[3]), .ZN(n348) );
  OAI21_X1 U167 ( .B1(n124), .B2(n345), .A(n348), .ZN(n125) );
  AOI21_X1 U168 ( .B1(n126), .B2(n242), .A(n125), .ZN(n152) );
  NOR2_X1 U169 ( .A1(f[6]), .A2(mult_in[6]), .ZN(n222) );
  NOR2_X1 U170 ( .A1(f[7]), .A2(mult_in[7]), .ZN(n128) );
  NOR2_X1 U171 ( .A1(n222), .A2(n128), .ZN(n130) );
  NOR2_X1 U172 ( .A1(f[4]), .A2(mult_in[4]), .ZN(n201) );
  NOR2_X1 U173 ( .A1(f[5]), .A2(mult_in[5]), .ZN(n127) );
  NOR2_X1 U174 ( .A1(n201), .A2(n127), .ZN(n154) );
  NAND2_X1 U175 ( .A1(n130), .A2(n154), .ZN(n132) );
  NAND2_X1 U176 ( .A1(f[4]), .A2(mult_in[4]), .ZN(n338) );
  NAND2_X1 U177 ( .A1(f[5]), .A2(mult_in[5]), .ZN(n203) );
  OAI21_X1 U178 ( .B1(n127), .B2(n338), .A(n203), .ZN(n153) );
  NAND2_X1 U179 ( .A1(f[6]), .A2(mult_in[6]), .ZN(n223) );
  NAND2_X1 U180 ( .A1(f[7]), .A2(mult_in[7]), .ZN(n155) );
  OAI21_X1 U181 ( .B1(n128), .B2(n223), .A(n155), .ZN(n129) );
  AOI21_X1 U182 ( .B1(n130), .B2(n153), .A(n129), .ZN(n131) );
  OR2_X1 U183 ( .A1(f[12]), .A2(mult_in[12]), .ZN(n232) );
  NAND2_X1 U184 ( .A1(n232), .A2(n235), .ZN(n274) );
  NOR2_X1 U185 ( .A1(f[8]), .A2(mult_in[8]), .ZN(n328) );
  NOR2_X1 U186 ( .A1(f[9]), .A2(mult_in[9]), .ZN(n249) );
  NOR2_X1 U187 ( .A1(n328), .A2(n249), .ZN(n183) );
  NOR2_X1 U188 ( .A1(f[11]), .A2(mult_in[11]), .ZN(n135) );
  NOR2_X1 U189 ( .A1(f[10]), .A2(mult_in[10]), .ZN(n187) );
  NOR2_X1 U190 ( .A1(n135), .A2(n187), .ZN(n137) );
  NAND2_X1 U191 ( .A1(n183), .A2(n137), .ZN(n176) );
  NOR2_X1 U192 ( .A1(n274), .A2(n176), .ZN(n271) );
  NOR2_X1 U193 ( .A1(f[14]), .A2(mult_in[14]), .ZN(n134) );
  INV_X1 U194 ( .A(n134), .ZN(n279) );
  NAND3_X1 U195 ( .A1(n272), .A2(n271), .A3(n279), .ZN(n308) );
  NAND2_X1 U196 ( .A1(f[12]), .A2(mult_in[12]), .ZN(n177) );
  INV_X1 U197 ( .A(n177), .ZN(n231) );
  NAND2_X1 U198 ( .A1(f[13]), .A2(mult_in[13]), .ZN(n234) );
  INV_X1 U199 ( .A(n234), .ZN(n133) );
  AOI21_X1 U200 ( .B1(n235), .B2(n231), .A(n133), .ZN(n273) );
  AOI21_X1 U201 ( .B1(n274), .B2(n273), .A(n134), .ZN(n139) );
  NAND2_X1 U202 ( .A1(f[8]), .A2(mult_in[8]), .ZN(n329) );
  NAND2_X1 U203 ( .A1(f[9]), .A2(mult_in[9]), .ZN(n250) );
  OAI21_X1 U204 ( .B1(n249), .B2(n329), .A(n250), .ZN(n184) );
  NAND2_X1 U205 ( .A1(f[10]), .A2(mult_in[10]), .ZN(n211) );
  NAND2_X1 U206 ( .A1(f[11]), .A2(mult_in[11]), .ZN(n215) );
  OAI21_X1 U207 ( .B1(n135), .B2(n211), .A(n215), .ZN(n136) );
  AOI21_X1 U208 ( .B1(n184), .B2(n137), .A(n136), .ZN(n275) );
  NAND2_X1 U209 ( .A1(n275), .A2(n273), .ZN(n138) );
  NAND2_X1 U210 ( .A1(n139), .A2(n138), .ZN(n307) );
  NAND2_X1 U211 ( .A1(f[15]), .A2(mult_in[15]), .ZN(n259) );
  INV_X1 U212 ( .A(n259), .ZN(n286) );
  NAND2_X1 U213 ( .A1(f[16]), .A2(mult_in[16]), .ZN(n289) );
  INV_X1 U214 ( .A(n289), .ZN(n140) );
  AOI21_X1 U215 ( .B1(n286), .B2(n290), .A(n140), .ZN(n145) );
  NAND2_X1 U216 ( .A1(f[14]), .A2(mult_in[14]), .ZN(n278) );
  NAND2_X1 U217 ( .A1(n145), .A2(n278), .ZN(n305) );
  NAND2_X1 U218 ( .A1(f[17]), .A2(mult_in[17]), .ZN(n312) );
  INV_X1 U219 ( .A(n312), .ZN(n141) );
  NOR2_X1 U220 ( .A1(n305), .A2(n141), .ZN(n142) );
  NAND3_X1 U221 ( .A1(n308), .A2(n307), .A3(n142), .ZN(n147) );
  NOR2_X1 U222 ( .A1(f[15]), .A2(mult_in[15]), .ZN(n258) );
  INV_X1 U223 ( .A(n290), .ZN(n143) );
  OR2_X1 U224 ( .A1(n258), .A2(n143), .ZN(n144) );
  AND2_X1 U225 ( .A1(n145), .A2(n144), .ZN(n304) );
  NOR2_X1 U226 ( .A1(f[17]), .A2(mult_in[17]), .ZN(n311) );
  OAI21_X1 U227 ( .B1(n304), .B2(n311), .A(n312), .ZN(n146) );
  NAND2_X1 U228 ( .A1(n147), .A2(n146), .ZN(n299) );
  NOR2_X1 U229 ( .A1(f[18]), .A2(mult_in[18]), .ZN(n295) );
  NAND2_X1 U230 ( .A1(f[18]), .A2(mult_in[18]), .ZN(n296) );
  OAI21_X1 U231 ( .B1(n299), .B2(n295), .A(n296), .ZN(n150) );
  OR2_X1 U232 ( .A1(N27), .A2(N28), .ZN(n149) );
  NAND2_X1 U233 ( .A1(N27), .A2(N28), .ZN(n148) );
  XNOR2_X1 U234 ( .A(n150), .B(n121), .ZN(n376) );
  NOR2_X1 U235 ( .A1(n421), .A2(n422), .ZN(n151) );
  NAND2_X1 U236 ( .A1(n376), .A2(n151), .ZN(n370) );
  INV_X1 U237 ( .A(n152), .ZN(n341) );
  AOI21_X1 U238 ( .B1(n341), .B2(n154), .A(n153), .ZN(n226) );
  OAI21_X1 U239 ( .B1(n226), .B2(n222), .A(n223), .ZN(n158) );
  OR2_X1 U240 ( .A1(f[7]), .A2(mult_in[7]), .ZN(n156) );
  NAND2_X1 U241 ( .A1(n156), .A2(n155), .ZN(n157) );
  XNOR2_X1 U242 ( .A(n158), .B(n157), .ZN(n362) );
  NAND2_X1 U243 ( .A1(n316), .A2(n362), .ZN(n175) );
  OR2_X1 U244 ( .A1(f[4]), .A2(f[5]), .ZN(n159) );
  NOR3_X1 U245 ( .A1(n159), .A2(f[2]), .A3(f[3]), .ZN(n163) );
  NOR3_X1 U246 ( .A1(f[18]), .A2(f[0]), .A3(f[1]), .ZN(n162) );
  NOR2_X1 U247 ( .A1(f[14]), .A2(f[15]), .ZN(n161) );
  NOR2_X1 U248 ( .A1(f[16]), .A2(f[17]), .ZN(n160) );
  NAND4_X1 U249 ( .A1(n163), .A2(n162), .A3(n161), .A4(n160), .ZN(n170) );
  NOR2_X1 U250 ( .A1(f[6]), .A2(f[7]), .ZN(n167) );
  NOR2_X1 U251 ( .A1(f[8]), .A2(f[9]), .ZN(n166) );
  NOR2_X1 U252 ( .A1(f[10]), .A2(f[11]), .ZN(n165) );
  NOR2_X1 U253 ( .A1(f[12]), .A2(f[13]), .ZN(n164) );
  NAND4_X1 U254 ( .A1(n167), .A2(n166), .A3(n165), .A4(n164), .ZN(n169) );
  NOR2_X1 U255 ( .A1(N27), .A2(N28), .ZN(n168) );
  OAI21_X1 U256 ( .B1(n170), .B2(n169), .A(n168), .ZN(n171) );
  NOR2_X1 U257 ( .A1(n376), .A2(n171), .ZN(n373) );
  NAND2_X2 U258 ( .A1(n373), .A2(n119), .ZN(n392) );
  INV_X1 U259 ( .A(n392), .ZN(n173) );
  OR2_X1 U260 ( .A1(enable_f), .A2(reset), .ZN(n393) );
  NOR2_X1 U261 ( .A1(n393), .A2(n424), .ZN(n172) );
  NOR2_X1 U262 ( .A1(n173), .A2(n172), .ZN(n174) );
  NAND2_X1 U263 ( .A1(n175), .A2(n174), .ZN(n88) );
  INV_X1 U264 ( .A(n272), .ZN(n332) );
  OAI21_X1 U265 ( .B1(n332), .B2(n176), .A(n275), .ZN(n233) );
  NAND2_X1 U266 ( .A1(n232), .A2(n177), .ZN(n178) );
  XNOR2_X1 U267 ( .A(n233), .B(n178), .ZN(n361) );
  NAND2_X1 U268 ( .A1(n316), .A2(n361), .ZN(n182) );
  INV_X1 U269 ( .A(n392), .ZN(n180) );
  NOR2_X1 U270 ( .A1(n393), .A2(n435), .ZN(n179) );
  NOR2_X1 U271 ( .A1(n180), .A2(n179), .ZN(n181) );
  NAND2_X1 U272 ( .A1(n182), .A2(n181), .ZN(n83) );
  INV_X1 U273 ( .A(n183), .ZN(n186) );
  INV_X1 U274 ( .A(n184), .ZN(n185) );
  OAI21_X1 U275 ( .B1(n332), .B2(n186), .A(n185), .ZN(n214) );
  INV_X1 U276 ( .A(n187), .ZN(n213) );
  NAND2_X1 U277 ( .A1(n213), .A2(n211), .ZN(n188) );
  XNOR2_X1 U278 ( .A(n214), .B(n188), .ZN(n359) );
  NAND2_X1 U279 ( .A1(n391), .A2(n359), .ZN(n192) );
  INV_X1 U280 ( .A(n392), .ZN(n190) );
  NOR2_X1 U281 ( .A1(n393), .A2(n438), .ZN(n189) );
  NOR2_X1 U282 ( .A1(n190), .A2(n189), .ZN(n191) );
  NAND2_X1 U283 ( .A1(n192), .A2(n191), .ZN(n85) );
  INV_X1 U284 ( .A(n193), .ZN(n195) );
  NAND2_X1 U285 ( .A1(n195), .A2(n194), .ZN(n196) );
  XOR2_X1 U286 ( .A(n266), .B(n196), .Z(n342) );
  NAND2_X1 U287 ( .A1(n391), .A2(n342), .ZN(n200) );
  INV_X1 U288 ( .A(n392), .ZN(n198) );
  NOR2_X1 U289 ( .A1(n393), .A2(n434), .ZN(n197) );
  NOR2_X1 U290 ( .A1(n198), .A2(n197), .ZN(n199) );
  NAND2_X1 U291 ( .A1(n200), .A2(n199), .ZN(n94) );
  INV_X1 U292 ( .A(n201), .ZN(n339) );
  INV_X1 U293 ( .A(n338), .ZN(n202) );
  AOI21_X1 U294 ( .B1(n341), .B2(n339), .A(n202), .ZN(n206) );
  OR2_X1 U295 ( .A1(f[5]), .A2(mult_in[5]), .ZN(n204) );
  NAND2_X1 U296 ( .A1(n204), .A2(n203), .ZN(n205) );
  XOR2_X1 U297 ( .A(n206), .B(n205), .Z(n355) );
  NAND2_X1 U298 ( .A1(n316), .A2(n355), .ZN(n210) );
  INV_X1 U299 ( .A(n392), .ZN(n208) );
  NOR2_X1 U300 ( .A1(n393), .A2(n428), .ZN(n207) );
  NOR2_X1 U301 ( .A1(n208), .A2(n207), .ZN(n209) );
  NAND2_X1 U302 ( .A1(n210), .A2(n209), .ZN(n90) );
  INV_X1 U303 ( .A(n211), .ZN(n212) );
  AOI21_X1 U304 ( .B1(n214), .B2(n213), .A(n212), .ZN(n217) );
  OR2_X1 U305 ( .A1(f[11]), .A2(mult_in[11]), .ZN(n216) );
  XNOR2_X1 U306 ( .A(n217), .B(n120), .ZN(n324) );
  NAND2_X1 U307 ( .A1(n391), .A2(n324), .ZN(n221) );
  INV_X1 U308 ( .A(n392), .ZN(n219) );
  NOR2_X1 U309 ( .A1(n393), .A2(n425), .ZN(n218) );
  NOR2_X1 U310 ( .A1(n219), .A2(n218), .ZN(n220) );
  NAND2_X1 U311 ( .A1(n221), .A2(n220), .ZN(n84) );
  INV_X1 U312 ( .A(n222), .ZN(n224) );
  NAND2_X1 U313 ( .A1(n224), .A2(n223), .ZN(n225) );
  XOR2_X1 U314 ( .A(n226), .B(n225), .Z(n333) );
  NAND2_X1 U315 ( .A1(n391), .A2(n333), .ZN(n230) );
  INV_X1 U316 ( .A(n392), .ZN(n228) );
  NOR2_X1 U317 ( .A1(n393), .A2(n427), .ZN(n227) );
  NOR2_X1 U318 ( .A1(n228), .A2(n227), .ZN(n229) );
  NAND2_X1 U319 ( .A1(n230), .A2(n229), .ZN(n89) );
  AOI21_X1 U320 ( .B1(n233), .B2(n232), .A(n231), .ZN(n237) );
  NAND2_X1 U321 ( .A1(n235), .A2(n234), .ZN(n236) );
  XOR2_X1 U322 ( .A(n237), .B(n236), .Z(n325) );
  NAND2_X1 U323 ( .A1(n391), .A2(n325), .ZN(n241) );
  INV_X1 U324 ( .A(n392), .ZN(n239) );
  NOR2_X1 U325 ( .A1(n393), .A2(n430), .ZN(n238) );
  NOR2_X1 U326 ( .A1(n239), .A2(n238), .ZN(n240) );
  NAND2_X1 U327 ( .A1(n241), .A2(n240), .ZN(n82) );
  INV_X1 U328 ( .A(n242), .ZN(n347) );
  INV_X1 U329 ( .A(n346), .ZN(n243) );
  NAND2_X1 U330 ( .A1(n243), .A2(n345), .ZN(n244) );
  XOR2_X1 U331 ( .A(n347), .B(n244), .Z(n344) );
  NAND2_X1 U332 ( .A1(n391), .A2(n344), .ZN(n248) );
  INV_X1 U333 ( .A(n392), .ZN(n246) );
  NOR2_X1 U334 ( .A1(n393), .A2(n439), .ZN(n245) );
  NOR2_X1 U335 ( .A1(n246), .A2(n245), .ZN(n247) );
  NAND2_X1 U336 ( .A1(n248), .A2(n247), .ZN(n93) );
  OAI21_X1 U337 ( .B1(n332), .B2(n328), .A(n329), .ZN(n253) );
  INV_X1 U338 ( .A(n249), .ZN(n251) );
  NAND2_X1 U339 ( .A1(n251), .A2(n250), .ZN(n252) );
  XNOR2_X1 U340 ( .A(n253), .B(n252), .ZN(n363) );
  NAND2_X1 U341 ( .A1(n316), .A2(n363), .ZN(n257) );
  INV_X1 U342 ( .A(n392), .ZN(n255) );
  NOR2_X1 U343 ( .A1(n393), .A2(n426), .ZN(n254) );
  NOR2_X1 U344 ( .A1(n255), .A2(n254), .ZN(n256) );
  NAND2_X1 U345 ( .A1(n257), .A2(n256), .ZN(n86) );
  NAND3_X1 U346 ( .A1(n308), .A2(n307), .A3(n278), .ZN(n288) );
  INV_X1 U347 ( .A(n258), .ZN(n287) );
  NAND2_X1 U348 ( .A1(n287), .A2(n259), .ZN(n260) );
  XNOR2_X1 U349 ( .A(n288), .B(n260), .ZN(n337) );
  NAND2_X1 U350 ( .A1(n391), .A2(n337), .ZN(n264) );
  INV_X1 U351 ( .A(n392), .ZN(n262) );
  NOR2_X1 U352 ( .A1(n393), .A2(n431), .ZN(n261) );
  NOR2_X1 U353 ( .A1(n262), .A2(n261), .ZN(n263) );
  NAND2_X1 U354 ( .A1(n264), .A2(n263), .ZN(n80) );
  OR2_X1 U355 ( .A1(f[0]), .A2(mult_in[0]), .ZN(n265) );
  AND2_X1 U356 ( .A1(n266), .A2(n265), .ZN(n343) );
  NAND2_X1 U357 ( .A1(n316), .A2(n343), .ZN(n270) );
  INV_X1 U358 ( .A(n392), .ZN(n268) );
  NOR2_X1 U359 ( .A1(n393), .A2(n442), .ZN(n267) );
  NOR2_X1 U360 ( .A1(n268), .A2(n267), .ZN(n269) );
  NAND2_X1 U361 ( .A1(n270), .A2(n269), .ZN(n95) );
  AND2_X1 U362 ( .A1(n272), .A2(n271), .ZN(n277) );
  OAI21_X1 U363 ( .B1(n275), .B2(n274), .A(n273), .ZN(n276) );
  NOR2_X1 U364 ( .A1(n277), .A2(n276), .ZN(n281) );
  NAND2_X1 U365 ( .A1(n279), .A2(n278), .ZN(n280) );
  XOR2_X1 U366 ( .A(n281), .B(n280), .Z(n360) );
  NAND2_X1 U367 ( .A1(n391), .A2(n360), .ZN(n285) );
  INV_X1 U368 ( .A(n392), .ZN(n283) );
  NOR2_X1 U369 ( .A1(n393), .A2(n423), .ZN(n282) );
  NOR2_X1 U370 ( .A1(n283), .A2(n282), .ZN(n284) );
  NAND2_X1 U371 ( .A1(n285), .A2(n284), .ZN(n81) );
  AOI21_X1 U372 ( .B1(n288), .B2(n287), .A(n286), .ZN(n292) );
  NAND2_X1 U373 ( .A1(n290), .A2(n289), .ZN(n291) );
  XOR2_X1 U374 ( .A(n292), .B(n291), .Z(n323) );
  NAND2_X1 U375 ( .A1(n316), .A2(n323), .ZN(n294) );
  NAND2_X1 U376 ( .A1(n294), .A2(n293), .ZN(n79) );
  INV_X1 U377 ( .A(n295), .ZN(n297) );
  AND2_X1 U378 ( .A1(n297), .A2(n296), .ZN(n298) );
  XNOR2_X1 U379 ( .A(n299), .B(n298), .ZN(n321) );
  NAND2_X1 U380 ( .A1(n316), .A2(n321), .ZN(n303) );
  INV_X1 U381 ( .A(n392), .ZN(n301) );
  NOR2_X1 U382 ( .A1(n393), .A2(n436), .ZN(n300) );
  NOR2_X1 U383 ( .A1(n301), .A2(n300), .ZN(n302) );
  NAND2_X1 U384 ( .A1(n303), .A2(n302), .ZN(n77) );
  INV_X1 U385 ( .A(n304), .ZN(n310) );
  INV_X1 U386 ( .A(n305), .ZN(n306) );
  NAND3_X1 U387 ( .A1(n308), .A2(n307), .A3(n306), .ZN(n309) );
  NAND2_X1 U388 ( .A1(n310), .A2(n309), .ZN(n315) );
  INV_X1 U389 ( .A(n311), .ZN(n313) );
  AND2_X1 U390 ( .A1(n313), .A2(n312), .ZN(n314) );
  NAND2_X1 U391 ( .A1(n316), .A2(n322), .ZN(n320) );
  INV_X1 U392 ( .A(n392), .ZN(n318) );
  NOR2_X1 U393 ( .A1(n393), .A2(n432), .ZN(n317) );
  NOR2_X1 U394 ( .A1(n318), .A2(n317), .ZN(n319) );
  NAND2_X1 U395 ( .A1(n320), .A2(n319), .ZN(n78) );
  AND2_X1 U396 ( .A1(valid_in), .A2(n440), .ZN(n441) );
  AND2_X1 U397 ( .A1(mult[6]), .A2(n440), .ZN(N106) );
  AND2_X1 U398 ( .A1(mult[4]), .A2(n440), .ZN(N104) );
  AND2_X1 U399 ( .A1(mult[5]), .A2(n440), .ZN(N105) );
  AND2_X1 U400 ( .A1(mult[2]), .A2(n440), .ZN(N102) );
  AND2_X1 U401 ( .A1(mult[0]), .A2(n440), .ZN(N100) );
  AND2_X1 U402 ( .A1(mult[17]), .A2(n440), .ZN(N117) );
  AND2_X1 U403 ( .A1(mult[16]), .A2(n440), .ZN(N116) );
  AND2_X1 U404 ( .A1(mult[15]), .A2(n440), .ZN(N115) );
  AND2_X1 U405 ( .A1(mult[8]), .A2(n440), .ZN(N108) );
  AND2_X1 U406 ( .A1(mult[7]), .A2(n440), .ZN(N107) );
  AND2_X1 U407 ( .A1(mult[14]), .A2(n440), .ZN(N114) );
  AND2_X1 U408 ( .A1(mult[13]), .A2(n440), .ZN(N113) );
  AND2_X1 U409 ( .A1(mult[12]), .A2(n440), .ZN(N112) );
  AND2_X1 U410 ( .A1(mult[11]), .A2(n440), .ZN(N111) );
  AND2_X1 U411 ( .A1(mult[10]), .A2(n440), .ZN(N110) );
  AND2_X1 U412 ( .A1(mult[9]), .A2(n440), .ZN(N109) );
  NAND2_X1 U413 ( .A1(correct_mult), .A2(n440), .ZN(n419) );
  OAI21_X1 U414 ( .B1(n433), .B2(n440), .A(n419), .ZN(n463) );
  AND2_X1 U415 ( .A1(mult[19]), .A2(n440), .ZN(N119) );
  AND2_X1 U416 ( .A1(mult[18]), .A2(n440), .ZN(N118) );
  NOR2_X1 U417 ( .A1(n322), .A2(n321), .ZN(n369) );
  INV_X1 U418 ( .A(n323), .ZN(n327) );
  NOR2_X1 U419 ( .A1(n325), .A2(n324), .ZN(n326) );
  AND2_X1 U420 ( .A1(n327), .A2(n326), .ZN(n368) );
  INV_X1 U421 ( .A(n328), .ZN(n330) );
  AND2_X1 U422 ( .A1(n330), .A2(n329), .ZN(n331) );
  XNOR2_X1 U423 ( .A(n332), .B(n331), .ZN(n390) );
  INV_X1 U424 ( .A(n390), .ZN(n335) );
  INV_X1 U425 ( .A(n333), .ZN(n334) );
  NAND2_X1 U426 ( .A1(n335), .A2(n334), .ZN(n336) );
  NOR2_X1 U427 ( .A1(n337), .A2(n336), .ZN(n367) );
  NAND2_X1 U428 ( .A1(n339), .A2(n338), .ZN(n340) );
  XNOR2_X1 U429 ( .A(n341), .B(n340), .ZN(n385) );
  INV_X1 U430 ( .A(n385), .ZN(n354) );
  NOR3_X1 U431 ( .A1(n344), .A2(n343), .A3(n342), .ZN(n353) );
  OAI21_X1 U432 ( .B1(n347), .B2(n346), .A(n345), .ZN(n351) );
  OR2_X1 U433 ( .A1(f[3]), .A2(mult_in[3]), .ZN(n349) );
  NAND2_X1 U434 ( .A1(n349), .A2(n348), .ZN(n350) );
  XNOR2_X1 U435 ( .A(n351), .B(n350), .ZN(n380) );
  INV_X1 U436 ( .A(n380), .ZN(n352) );
  INV_X1 U437 ( .A(n355), .ZN(n356) );
  NAND2_X1 U438 ( .A1(n357), .A2(n356), .ZN(n358) );
  NOR2_X1 U439 ( .A1(n359), .A2(n358), .ZN(n366) );
  NOR2_X1 U440 ( .A1(n361), .A2(n360), .ZN(n365) );
  NOR2_X1 U441 ( .A1(n363), .A2(n362), .ZN(n364) );
  NAND3_X1 U442 ( .A1(n369), .A2(n368), .A3(n122), .ZN(n372) );
  INV_X1 U443 ( .A(n370), .ZN(n371) );
  NAND2_X1 U444 ( .A1(n372), .A2(n371), .ZN(n377) );
  INV_X1 U445 ( .A(n373), .ZN(n374) );
  NAND2_X1 U446 ( .A1(n374), .A2(n119), .ZN(n375) );
  AOI21_X1 U447 ( .B1(n377), .B2(n376), .A(n375), .ZN(n379) );
  NOR2_X1 U448 ( .A1(n393), .A2(n421), .ZN(n378) );
  OR2_X1 U449 ( .A1(n379), .A2(n378), .ZN(n464) );
  NAND2_X1 U450 ( .A1(n391), .A2(n380), .ZN(n384) );
  INV_X1 U451 ( .A(n392), .ZN(n382) );
  INV_X1 U452 ( .A(n393), .ZN(n386) );
  AND2_X1 U453 ( .A1(n386), .A2(f[3]), .ZN(n381) );
  NOR2_X1 U454 ( .A1(n382), .A2(n381), .ZN(n383) );
  NAND2_X1 U455 ( .A1(n384), .A2(n383), .ZN(n92) );
  NAND2_X1 U456 ( .A1(n391), .A2(n385), .ZN(n389) );
  NAND2_X1 U457 ( .A1(n386), .A2(f[4]), .ZN(n387) );
  AND2_X1 U458 ( .A1(n392), .A2(n387), .ZN(n388) );
  NAND2_X1 U459 ( .A1(n389), .A2(n388), .ZN(n91) );
  NAND2_X1 U460 ( .A1(n391), .A2(n390), .ZN(n397) );
  INV_X1 U461 ( .A(n392), .ZN(n395) );
  NOR2_X1 U462 ( .A1(n393), .A2(n429), .ZN(n394) );
  NOR2_X1 U463 ( .A1(n395), .A2(n394), .ZN(n396) );
  NAND2_X1 U464 ( .A1(n397), .A2(n396), .ZN(n87) );
  NOR2_X2 U465 ( .A1(reset), .A2(valid_in), .ZN(n417) );
  AOI22_X1 U466 ( .A1(a_in[9]), .A2(n417), .B1(n441), .B2(a[9]), .ZN(n398) );
  INV_X1 U467 ( .A(n398), .ZN(n443) );
  AOI22_X1 U468 ( .A1(n417), .A2(a_in[8]), .B1(n441), .B2(a[8]), .ZN(n399) );
  INV_X1 U469 ( .A(n399), .ZN(n444) );
  AOI22_X1 U470 ( .A1(n417), .A2(a_in[7]), .B1(n441), .B2(a[7]), .ZN(n400) );
  INV_X1 U471 ( .A(n400), .ZN(n445) );
  AOI22_X1 U472 ( .A1(n417), .A2(a_in[6]), .B1(n441), .B2(a[6]), .ZN(n401) );
  INV_X1 U473 ( .A(n401), .ZN(n446) );
  AOI22_X1 U474 ( .A1(n417), .A2(a_in[5]), .B1(n441), .B2(a[5]), .ZN(n402) );
  INV_X1 U475 ( .A(n402), .ZN(n447) );
  AOI22_X1 U476 ( .A1(n417), .A2(a_in[4]), .B1(n441), .B2(a[4]), .ZN(n403) );
  INV_X1 U477 ( .A(n403), .ZN(n448) );
  AOI22_X1 U478 ( .A1(n417), .A2(a_in[3]), .B1(n441), .B2(a[3]), .ZN(n404) );
  INV_X1 U479 ( .A(n404), .ZN(n449) );
  AOI22_X1 U480 ( .A1(n417), .A2(a_in[2]), .B1(n441), .B2(a[2]), .ZN(n405) );
  INV_X1 U481 ( .A(n405), .ZN(n450) );
  AOI22_X1 U482 ( .A1(n417), .A2(a_in[1]), .B1(n441), .B2(a[1]), .ZN(n406) );
  INV_X1 U483 ( .A(n406), .ZN(n451) );
  AOI22_X1 U484 ( .A1(n417), .A2(a_in[0]), .B1(n441), .B2(a[0]), .ZN(n407) );
  INV_X1 U485 ( .A(n407), .ZN(n452) );
  AOI22_X1 U486 ( .A1(n417), .A2(b_in[9]), .B1(n441), .B2(b[9]), .ZN(n408) );
  INV_X1 U487 ( .A(n408), .ZN(n453) );
  AOI22_X1 U488 ( .A1(n417), .A2(b_in[8]), .B1(n441), .B2(b[8]), .ZN(n409) );
  INV_X1 U489 ( .A(n409), .ZN(n454) );
  AOI22_X1 U490 ( .A1(n417), .A2(b_in[7]), .B1(n441), .B2(b[7]), .ZN(n410) );
  INV_X1 U491 ( .A(n410), .ZN(n455) );
  AOI22_X1 U492 ( .A1(n417), .A2(b_in[6]), .B1(n441), .B2(b[6]), .ZN(n411) );
  INV_X1 U493 ( .A(n411), .ZN(n456) );
  AOI22_X1 U494 ( .A1(n417), .A2(b_in[5]), .B1(n441), .B2(b[5]), .ZN(n412) );
  INV_X1 U495 ( .A(n412), .ZN(n457) );
  AOI22_X1 U496 ( .A1(n417), .A2(b_in[4]), .B1(n441), .B2(b[4]), .ZN(n413) );
  INV_X1 U497 ( .A(n413), .ZN(n458) );
  AOI22_X1 U498 ( .A1(n417), .A2(b_in[3]), .B1(n441), .B2(b[3]), .ZN(n414) );
  INV_X1 U499 ( .A(n414), .ZN(n459) );
  AOI22_X1 U500 ( .A1(n417), .A2(b_in[2]), .B1(n441), .B2(b[2]), .ZN(n415) );
  INV_X1 U501 ( .A(n415), .ZN(n460) );
  AOI22_X1 U502 ( .A1(n417), .A2(b_in[1]), .B1(n441), .B2(b[1]), .ZN(n416) );
  INV_X1 U503 ( .A(n416), .ZN(n461) );
  AOI22_X1 U504 ( .A1(n417), .A2(b_in[0]), .B1(n441), .B2(b[0]), .ZN(n418) );
  INV_X1 U505 ( .A(n418), .ZN(n462) );
  INV_X1 U507 ( .A(n419), .ZN(N56) );
endmodule

