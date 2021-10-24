
module part3b_mac_DW02_mult_5_stage_J1_0 ( A, B, TC, CLK, PRODUCT );
  input [9:0] A;
  input [9:0] B;
  output [19:0] PRODUCT;
  input TC, CLK;
  wire   n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, \A_extended[10] ,
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
         n299, n300, n301, n302, n303, n304, n305, n307, n308, n310, n311,
         n313, n314, n316, n317, n319, n320, n322, n323, n325, n327, n329,
         n331, n333, n335;
  assign \A_extended[10]  = A[9];
  assign \B_extended[10]  = B[9];

  DFF_X1 clk_r_REG20_S4 ( .D(n342), .CK(CLK), .Q(PRODUCT[17]) );
  DFF_X1 clk_r_REG18_S4 ( .D(n343), .CK(CLK), .Q(PRODUCT[16]) );
  DFF_X1 clk_r_REG17_S4 ( .D(n344), .CK(CLK), .Q(PRODUCT[15]) );
  DFF_X1 clk_r_REG16_S4 ( .D(n345), .CK(CLK), .Q(PRODUCT[14]) );
  DFF_X1 clk_r_REG15_S4 ( .D(n346), .CK(CLK), .Q(PRODUCT[13]) );
  DFF_X1 clk_r_REG14_S4 ( .D(n347), .CK(CLK), .Q(PRODUCT[12]) );
  DFF_X1 clk_r_REG12_S3 ( .D(n348), .CK(CLK), .Q(n335) );
  DFF_X1 clk_r_REG13_S4 ( .D(n335), .CK(CLK), .Q(PRODUCT[11]) );
  DFF_X1 clk_r_REG9_S3 ( .D(n349), .CK(CLK), .Q(n333) );
  DFF_X1 clk_r_REG10_S4 ( .D(n333), .CK(CLK), .Q(PRODUCT[10]) );
  DFF_X1 clk_r_REG7_S3 ( .D(n350), .CK(CLK), .Q(n331) );
  DFF_X1 clk_r_REG8_S4 ( .D(n331), .CK(CLK), .Q(PRODUCT[9]) );
  DFF_X1 clk_r_REG54_S3 ( .D(n351), .CK(CLK), .Q(n329) );
  DFF_X1 clk_r_REG55_S4 ( .D(n329), .CK(CLK), .Q(PRODUCT[8]) );
  DFF_X1 clk_r_REG60_S3 ( .D(n352), .CK(CLK), .Q(n327) );
  DFF_X1 clk_r_REG61_S4 ( .D(n327), .CK(CLK), .Q(PRODUCT[7]) );
  DFF_X1 clk_r_REG67_S3 ( .D(n353), .CK(CLK), .Q(n325) );
  DFF_X1 clk_r_REG68_S4 ( .D(n325), .CK(CLK), .Q(PRODUCT[6]) );
  DFF_X1 clk_r_REG73_S2 ( .D(n354), .CK(CLK), .Q(n323) );
  DFF_X1 clk_r_REG74_S3 ( .D(n323), .CK(CLK), .Q(n322) );
  DFF_X1 clk_r_REG75_S4 ( .D(n322), .CK(CLK), .Q(PRODUCT[5]) );
  DFF_X1 clk_r_REG79_S2 ( .D(n355), .CK(CLK), .Q(n320) );
  DFF_X1 clk_r_REG80_S3 ( .D(n320), .CK(CLK), .Q(n319) );
  DFF_X1 clk_r_REG81_S4 ( .D(n319), .CK(CLK), .Q(PRODUCT[4]) );
  DFF_X1 clk_r_REG84_S2 ( .D(n356), .CK(CLK), .Q(n317) );
  DFF_X1 clk_r_REG85_S3 ( .D(n317), .CK(CLK), .Q(n316) );
  DFF_X1 clk_r_REG86_S4 ( .D(n316), .CK(CLK), .Q(PRODUCT[3]) );
  DFF_X1 clk_r_REG90_S2 ( .D(n357), .CK(CLK), .Q(n314) );
  DFF_X1 clk_r_REG91_S3 ( .D(n314), .CK(CLK), .Q(n313) );
  DFF_X1 clk_r_REG92_S4 ( .D(n313), .CK(CLK), .Q(PRODUCT[2]) );
  DFF_X1 clk_r_REG95_S2 ( .D(n358), .CK(CLK), .Q(n311) );
  DFF_X1 clk_r_REG96_S3 ( .D(n311), .CK(CLK), .Q(n310) );
  DFF_X1 clk_r_REG97_S4 ( .D(n310), .CK(CLK), .Q(PRODUCT[1]) );
  DFF_X1 clk_r_REG99_S2 ( .D(n359), .CK(CLK), .Q(n308) );
  DFF_X1 clk_r_REG100_S3 ( .D(n308), .CK(CLK), .Q(n307) );
  DFF_X1 clk_r_REG101_S4 ( .D(n307), .CK(CLK), .Q(PRODUCT[0]) );
  DFF_X1 \mult_x_1/clk_r_REG93_S1  ( .D(A[1]), .CK(CLK), .Q(n218) );
  DFF_X1 \mult_x_1/clk_r_REG49_S1  ( .D(n209), .CK(CLK), .Q(n236) );
  DFF_X1 \mult_x_1/clk_r_REG62_S1  ( .D(n208), .CK(CLK), .Q(n235) );
  DFF_X1 \mult_x_1/clk_r_REG76_S1  ( .D(n207), .CK(CLK), .Q(n234) );
  DFF_X1 \mult_x_1/clk_r_REG87_S1  ( .D(n206), .CK(CLK), .Q(n233) );
  DFF_X1 \mult_x_1/clk_r_REG113_S1  ( .D(B[0]), .CK(CLK), .Q(n229), .QN(n305)
         );
  DFF_X1 \mult_x_1/clk_r_REG89_S1  ( .D(n200), .CK(CLK), .Q(n281), .QN(n293)
         );
  DFF_X1 \mult_x_1/clk_r_REG98_S1  ( .D(A[0]), .CK(CLK), .Q(n219), .QN(n292)
         );
  DFF_X1 \mult_x_1/clk_r_REG51_S1  ( .D(n196), .CK(CLK), .Q(n278), .QN(n291)
         );
  DFF_X1 \mult_x_1/clk_r_REG78_S1  ( .D(n198), .CK(CLK), .Q(n280), .QN(n290)
         );
  DFF_X1 \mult_x_1/clk_r_REG64_S1  ( .D(n202), .CK(CLK), .Q(n279), .QN(n289)
         );
  DFF_X2 \mult_x_1/clk_r_REG94_S1  ( .D(n205), .CK(CLK), .Q(n232) );
  DFF_X1 \mult_x_1/clk_r_REG83_S1  ( .D(n199), .CK(CLK), .Q(n287), .QN(n303)
         );
  DFF_X1 \mult_x_1/clk_r_REG70_S1  ( .D(n197), .CK(CLK), .Q(n286), .QN(n301)
         );
  DFF_X1 \mult_x_1/clk_r_REG57_S1  ( .D(n201), .CK(CLK), .Q(n285), .QN(n300)
         );
  DFF_X1 \mult_x_1/clk_r_REG1_S1  ( .D(n195), .CK(CLK), .Q(n284), .QN(n302) );
  DFF_X1 \mult_x_1/clk_r_REG27_S3  ( .D(n282), .CK(CLK), .Q(n283), .QN(n288)
         );
  DFF_X1 \mult_x_1/clk_r_REG26_S2  ( .D(\mult_x_1/n20 ), .CK(CLK), .Q(n282) );
  DFF_X1 \mult_x_1/clk_r_REG71_S2  ( .D(\mult_x_1/n83 ), .CK(CLK), .Q(n277) );
  DFF_X1 \mult_x_1/clk_r_REG66_S2  ( .D(\mult_x_1/n80 ), .CK(CLK), .Q(n276) );
  DFF_X1 \mult_x_1/clk_r_REG65_S2  ( .D(\mult_x_1/n79 ), .CK(CLK), .Q(n275) );
  DFF_X1 \mult_x_1/clk_r_REG59_S2  ( .D(\mult_x_1/n74 ), .CK(CLK), .Q(n274) );
  DFF_X1 \mult_x_1/clk_r_REG58_S2  ( .D(\mult_x_1/n73 ), .CK(CLK), .Q(n273) );
  DFF_X1 \mult_x_1/clk_r_REG53_S2  ( .D(\mult_x_1/n68 ), .CK(CLK), .Q(n272) );
  DFF_X1 \mult_x_1/clk_r_REG52_S2  ( .D(\mult_x_1/n67 ), .CK(CLK), .Q(n271) );
  DFF_X1 \mult_x_1/clk_r_REG6_S2  ( .D(\mult_x_1/n60 ), .CK(CLK), .Q(n270) );
  DFF_X1 \mult_x_1/clk_r_REG5_S2  ( .D(\mult_x_1/n59 ), .CK(CLK), .Q(n269) );
  DFF_X1 \mult_x_1/clk_r_REG22_S2  ( .D(\mult_x_1/n52 ), .CK(CLK), .Q(n268) );
  DFF_X1 \mult_x_1/clk_r_REG21_S2  ( .D(\mult_x_1/n51 ), .CK(CLK), .Q(n267) );
  DFF_X1 \mult_x_1/clk_r_REG24_S2  ( .D(\mult_x_1/n44 ), .CK(CLK), .Q(n266) );
  DFF_X1 \mult_x_1/clk_r_REG25_S3  ( .D(n264), .CK(CLK), .Q(n265) );
  DFF_X1 \mult_x_1/clk_r_REG23_S2  ( .D(\mult_x_1/n43 ), .CK(CLK), .Q(n264) );
  DFF_X1 \mult_x_1/clk_r_REG47_S3  ( .D(n262), .CK(CLK), .Q(n263) );
  DFF_X1 \mult_x_1/clk_r_REG46_S2  ( .D(\mult_x_1/n38 ), .CK(CLK), .Q(n262) );
  DFF_X1 \mult_x_1/clk_r_REG48_S3  ( .D(n260), .CK(CLK), .Q(n261) );
  DFF_X1 \mult_x_1/clk_r_REG45_S2  ( .D(\mult_x_1/n37 ), .CK(CLK), .Q(n260) );
  DFF_X1 \mult_x_1/clk_r_REG43_S3  ( .D(n258), .CK(CLK), .Q(n259) );
  DFF_X1 \mult_x_1/clk_r_REG42_S2  ( .D(\mult_x_1/n32 ), .CK(CLK), .Q(n258) );
  DFF_X1 \mult_x_1/clk_r_REG44_S3  ( .D(n256), .CK(CLK), .Q(n257) );
  DFF_X1 \mult_x_1/clk_r_REG41_S2  ( .D(\mult_x_1/n31 ), .CK(CLK), .Q(n256) );
  DFF_X1 \mult_x_1/clk_r_REG39_S3  ( .D(n254), .CK(CLK), .Q(n255) );
  DFF_X1 \mult_x_1/clk_r_REG38_S2  ( .D(\mult_x_1/n28 ), .CK(CLK), .Q(n254) );
  DFF_X1 \mult_x_1/clk_r_REG40_S3  ( .D(n252), .CK(CLK), .Q(n253) );
  DFF_X1 \mult_x_1/clk_r_REG37_S2  ( .D(\mult_x_1/n27 ), .CK(CLK), .Q(n252) );
  DFF_X1 \mult_x_1/clk_r_REG35_S3  ( .D(n250), .CK(CLK), .Q(n251) );
  DFF_X1 \mult_x_1/clk_r_REG34_S2  ( .D(\mult_x_1/n24 ), .CK(CLK), .Q(n250) );
  DFF_X1 \mult_x_1/clk_r_REG36_S3  ( .D(n248), .CK(CLK), .Q(n249) );
  DFF_X1 \mult_x_1/clk_r_REG33_S2  ( .D(\mult_x_1/n23 ), .CK(CLK), .Q(n248) );
  DFF_X1 \mult_x_1/clk_r_REG31_S3  ( .D(n246), .CK(CLK), .Q(n247) );
  DFF_X1 \mult_x_1/clk_r_REG30_S2  ( .D(\mult_x_1/n22 ), .CK(CLK), .Q(n246) );
  DFF_X1 \mult_x_1/clk_r_REG32_S3  ( .D(n244), .CK(CLK), .Q(n245) );
  DFF_X1 \mult_x_1/clk_r_REG29_S2  ( .D(\mult_x_1/n21 ), .CK(CLK), .Q(n244) );
  DFF_X1 \mult_x_1/clk_r_REG72_S2  ( .D(\mult_x_1/n14 ), .CK(CLK), .Q(n243) );
  DFF_X1 \mult_x_1/clk_r_REG11_S3  ( .D(\mult_x_1/n8 ), .CK(CLK), .Q(n242) );
  DFF_X1 \mult_x_1/clk_r_REG19_S4  ( .D(\mult_x_1/n2 ), .CK(CLK), .Q(n241) );
  DFF_X1 \mult_x_1/clk_r_REG4_S4  ( .D(n239), .CK(CLK), .Q(n240) );
  DFF_X1 \mult_x_1/clk_r_REG3_S3  ( .D(n238), .CK(CLK), .Q(n239) );
  DFF_X1 \mult_x_1/clk_r_REG2_S2  ( .D(\mult_x_1/n111 ), .CK(CLK), .Q(n238) );
  DFF_X1 \mult_x_1/clk_r_REG28_S4  ( .D(n288), .CK(CLK), .Q(n237) );
  DFF_X1 \mult_x_1/clk_r_REG110_S1  ( .D(n204), .CK(CLK), .Q(n231) );
  DFF_X1 \mult_x_1/clk_r_REG112_S1  ( .D(n203), .CK(CLK), .Q(n230) );
  DFF_X1 \mult_x_1/clk_r_REG111_S1  ( .D(B[1]), .CK(CLK), .Q(n228) );
  DFF_X1 \mult_x_1/clk_r_REG109_S1  ( .D(B[2]), .CK(CLK), .Q(n227) );
  DFF_X1 \mult_x_1/clk_r_REG108_S1  ( .D(B[3]), .CK(CLK), .Q(n226), .QN(n296)
         );
  DFF_X1 \mult_x_1/clk_r_REG107_S1  ( .D(B[4]), .CK(CLK), .Q(n225), .QN(n297)
         );
  DFF_X1 \mult_x_1/clk_r_REG106_S1  ( .D(B[5]), .CK(CLK), .Q(n224), .QN(n299)
         );
  DFF_X1 \mult_x_1/clk_r_REG105_S1  ( .D(B[6]), .CK(CLK), .Q(n223), .QN(n298)
         );
  DFF_X1 \mult_x_1/clk_r_REG104_S1  ( .D(B[7]), .CK(CLK), .Q(n222), .QN(n294)
         );
  DFF_X1 \mult_x_1/clk_r_REG103_S1  ( .D(B[8]), .CK(CLK), .Q(n221), .QN(n295)
         );
  DFF_X1 \mult_x_1/clk_r_REG102_S1  ( .D(\B_extended[10] ), .CK(CLK), .Q(n220), 
        .QN(n304) );
  DFF_X1 \mult_x_1/clk_r_REG88_S1  ( .D(A[2]), .CK(CLK), .Q(n217) );
  DFF_X1 \mult_x_1/clk_r_REG82_S1  ( .D(A[3]), .CK(CLK), .Q(n216) );
  DFF_X1 \mult_x_1/clk_r_REG77_S1  ( .D(A[4]), .CK(CLK), .Q(n215) );
  DFF_X1 \mult_x_1/clk_r_REG69_S1  ( .D(A[5]), .CK(CLK), .Q(n214) );
  DFF_X1 \mult_x_1/clk_r_REG63_S1  ( .D(A[6]), .CK(CLK), .Q(n213) );
  DFF_X1 \mult_x_1/clk_r_REG56_S1  ( .D(A[7]), .CK(CLK), .Q(n212) );
  DFF_X1 \mult_x_1/clk_r_REG50_S1  ( .D(A[8]), .CK(CLK), .Q(n211) );
  DFF_X1 \mult_x_1/clk_r_REG0_S1  ( .D(\A_extended[10] ), .CK(CLK), .Q(n210)
         );
  FA_X1 U1 ( .A(n245), .B(n283), .CI(n5), .CO(\mult_x_1/n2 ), .S(n342) );
  FA_X1 U2 ( .A(n249), .B(n247), .CI(n6), .CO(n5), .S(n343) );
  FA_X1 U3 ( .A(n251), .B(n253), .CI(n7), .CO(n6), .S(n344) );
  FA_X1 U4 ( .A(n255), .B(n257), .CI(n8), .CO(n7), .S(n345) );
  FA_X1 U5 ( .A(n259), .B(n261), .CI(n9), .CO(n8), .S(n346) );
  FA_X1 U6 ( .A(n263), .B(n265), .CI(n242), .CO(n9), .S(n347) );
  FA_X1 U7 ( .A(n266), .B(n267), .CI(n10), .CO(\mult_x_1/n8 ), .S(n348) );
  FA_X1 U8 ( .A(n268), .B(n269), .CI(n11), .CO(n10), .S(n349) );
  FA_X1 U9 ( .A(n270), .B(n271), .CI(n12), .CO(n11), .S(n350) );
  FA_X1 U10 ( .A(n272), .B(n273), .CI(n13), .CO(n12), .S(n351) );
  FA_X1 U11 ( .A(n274), .B(n275), .CI(n14), .CO(n13), .S(n352) );
  FA_X1 U12 ( .A(n276), .B(n277), .CI(n243), .CO(n14), .S(n353) );
  AOI22_X1 U13 ( .A1(n216), .A2(n296), .B1(n226), .B2(n233), .ZN(n167) );
  AOI22_X1 U14 ( .A1(n216), .A2(n231), .B1(n227), .B2(n233), .ZN(n22) );
  OAI22_X1 U15 ( .A1(n281), .A2(n167), .B1(n287), .B2(n22), .ZN(n46) );
  NOR2_X1 U16 ( .A1(n225), .A2(n232), .ZN(n17) );
  AOI22_X1 U17 ( .A1(n218), .A2(n299), .B1(n224), .B2(n232), .ZN(n15) );
  INV_X1 U18 ( .A(n15), .ZN(n16) );
  MUX2_X1 U19 ( .A(n17), .B(n16), .S(n219), .Z(n45) );
  AOI221_X1 U20 ( .B1(n290), .B2(n229), .C1(n280), .C2(n215), .A(n234), .ZN(
        n178) );
  AOI22_X1 U21 ( .A1(n214), .A2(n230), .B1(n228), .B2(n234), .ZN(n179) );
  OAI221_X1 U22 ( .B1(n214), .B2(n229), .C1(n234), .C2(n305), .A(n301), .ZN(
        n18) );
  OAI21_X1 U23 ( .B1(n179), .B2(n280), .A(n18), .ZN(n177) );
  NOR2_X1 U24 ( .A1(n226), .A2(n232), .ZN(n21) );
  AOI22_X1 U25 ( .A1(n218), .A2(n297), .B1(n225), .B2(n232), .ZN(n19) );
  INV_X1 U26 ( .A(n19), .ZN(n20) );
  MUX2_X1 U27 ( .A(n21), .B(n20), .S(n219), .Z(n25) );
  NOR2_X1 U28 ( .A1(n305), .A2(n280), .ZN(n24) );
  AOI22_X1 U29 ( .A1(n216), .A2(n230), .B1(n228), .B2(n233), .ZN(n27) );
  OAI22_X1 U30 ( .A1(n281), .A2(n22), .B1(n287), .B2(n27), .ZN(n23) );
  FA_X1 U31 ( .A(n25), .B(n24), .CI(n23), .CO(n39), .S(n43) );
  OAI221_X1 U32 ( .B1(n216), .B2(n229), .C1(n233), .C2(n305), .A(n303), .ZN(
        n26) );
  OAI21_X1 U33 ( .B1(n27), .B2(n281), .A(n26), .ZN(n32) );
  NOR2_X1 U34 ( .A1(n227), .A2(n232), .ZN(n30) );
  AOI22_X1 U35 ( .A1(n218), .A2(n296), .B1(n226), .B2(n232), .ZN(n28) );
  INV_X1 U36 ( .A(n28), .ZN(n29) );
  MUX2_X1 U37 ( .A(n30), .B(n29), .S(n219), .Z(n31) );
  HA_X1 U38 ( .A(n32), .B(n31), .CO(n42), .S(n49) );
  AOI221_X1 U39 ( .B1(n293), .B2(n229), .C1(n281), .C2(n217), .A(n233), .ZN(
        n48) );
  NOR2_X1 U40 ( .A1(n228), .A2(n232), .ZN(n35) );
  AOI22_X1 U41 ( .A1(n218), .A2(n231), .B1(n227), .B2(n232), .ZN(n33) );
  INV_X1 U42 ( .A(n33), .ZN(n34) );
  MUX2_X1 U43 ( .A(n35), .B(n34), .S(n219), .Z(n52) );
  NOR2_X1 U44 ( .A1(n281), .A2(n305), .ZN(n51) );
  NAND2_X1 U45 ( .A1(n218), .A2(n292), .ZN(n37) );
  AOI22_X1 U46 ( .A1(n218), .A2(n230), .B1(n228), .B2(n232), .ZN(n36) );
  OAI22_X1 U47 ( .A1(n229), .A2(n37), .B1(n36), .B2(n292), .ZN(n54) );
  AOI21_X1 U48 ( .B1(n229), .B2(n219), .A(n232), .ZN(n53) );
  FA_X1 U49 ( .A(n40), .B(n39), .CI(n38), .CO(\mult_x_1/n14 ), .S(n354) );
  FA_X1 U50 ( .A(n43), .B(n42), .CI(n41), .CO(n38), .S(n355) );
  FA_X1 U51 ( .A(n46), .B(n45), .CI(n44), .CO(\mult_x_1/n83 ), .S(n40) );
  FA_X1 U52 ( .A(n49), .B(n48), .CI(n47), .CO(n41), .S(n356) );
  FA_X1 U53 ( .A(n52), .B(n51), .CI(n50), .CO(n47), .S(n357) );
  HA_X1 U54 ( .A(n54), .B(n53), .CO(n50), .S(n358) );
  AOI22_X1 U55 ( .A1(n221), .A2(n236), .B1(n210), .B2(n295), .ZN(n191) );
  AOI22_X1 U56 ( .A1(n222), .A2(n236), .B1(n210), .B2(n294), .ZN(n60) );
  OAI22_X1 U57 ( .A1(n278), .A2(n191), .B1(n284), .B2(n60), .ZN(n59) );
  AOI22_X1 U58 ( .A1(n212), .A2(n220), .B1(n304), .B2(n235), .ZN(n56) );
  AOI22_X1 U59 ( .A1(n221), .A2(n235), .B1(n212), .B2(n295), .ZN(n61) );
  INV_X1 U60 ( .A(n61), .ZN(n55) );
  AOI22_X1 U61 ( .A1(n289), .A2(n56), .B1(n300), .B2(n55), .ZN(n66) );
  INV_X1 U62 ( .A(n66), .ZN(n58) );
  OAI21_X1 U63 ( .B1(n289), .B2(n300), .A(n56), .ZN(n57) );
  FA_X1 U64 ( .A(n59), .B(n58), .CI(n57), .CO(\mult_x_1/n21 ), .S(
        \mult_x_1/n22 ) );
  AOI22_X1 U65 ( .A1(n210), .A2(n298), .B1(n223), .B2(n236), .ZN(n69) );
  OAI22_X1 U66 ( .A1(n278), .A2(n60), .B1(n284), .B2(n69), .ZN(n65) );
  AOI22_X1 U67 ( .A1(n222), .A2(n235), .B1(n212), .B2(n294), .ZN(n67) );
  OAI22_X1 U68 ( .A1(n279), .A2(n61), .B1(n285), .B2(n67), .ZN(n72) );
  AOI22_X1 U69 ( .A1(n214), .A2(n220), .B1(n304), .B2(n234), .ZN(n63) );
  AOI22_X1 U70 ( .A1(n221), .A2(n234), .B1(n214), .B2(n295), .ZN(n82) );
  INV_X1 U71 ( .A(n82), .ZN(n62) );
  AOI22_X1 U72 ( .A1(n290), .A2(n63), .B1(n301), .B2(n62), .ZN(n76) );
  INV_X1 U73 ( .A(n76), .ZN(n71) );
  OAI21_X1 U74 ( .B1(n290), .B2(n301), .A(n63), .ZN(n70) );
  FA_X1 U75 ( .A(n66), .B(n65), .CI(n64), .CO(\mult_x_1/n23 ), .S(
        \mult_x_1/n24 ) );
  AOI22_X1 U76 ( .A1(n210), .A2(n299), .B1(n224), .B2(n236), .ZN(n68) );
  AOI22_X1 U77 ( .A1(n225), .A2(n236), .B1(n210), .B2(n297), .ZN(n80) );
  OAI22_X1 U78 ( .A1(n278), .A2(n68), .B1(n284), .B2(n80), .ZN(n78) );
  AOI22_X1 U79 ( .A1(n212), .A2(n298), .B1(n223), .B2(n235), .ZN(n79) );
  OAI22_X1 U80 ( .A1(n279), .A2(n67), .B1(n285), .B2(n79), .ZN(n77) );
  OAI22_X1 U81 ( .A1(n278), .A2(n69), .B1(n284), .B2(n68), .ZN(n74) );
  FA_X1 U82 ( .A(n72), .B(n71), .CI(n70), .CO(n64), .S(n73) );
  FA_X1 U83 ( .A(n75), .B(n74), .CI(n73), .CO(\mult_x_1/n27 ), .S(
        \mult_x_1/n28 ) );
  FA_X1 U84 ( .A(n78), .B(n77), .CI(n76), .CO(n75), .S(n88) );
  AOI22_X1 U85 ( .A1(n212), .A2(n299), .B1(n224), .B2(n235), .ZN(n83) );
  OAI22_X1 U86 ( .A1(n279), .A2(n79), .B1(n285), .B2(n83), .ZN(n97) );
  AOI22_X1 U87 ( .A1(n226), .A2(n236), .B1(n210), .B2(n296), .ZN(n84) );
  OAI22_X1 U88 ( .A1(n278), .A2(n80), .B1(n284), .B2(n84), .ZN(n96) );
  AOI22_X1 U89 ( .A1(n216), .A2(n220), .B1(n304), .B2(n233), .ZN(n81) );
  OAI21_X1 U90 ( .B1(n293), .B2(n303), .A(n81), .ZN(n95) );
  AOI22_X1 U91 ( .A1(n221), .A2(n216), .B1(n233), .B2(n295), .ZN(n90) );
  AOI22_X1 U92 ( .A1(n293), .A2(n81), .B1(n90), .B2(n303), .ZN(n115) );
  INV_X1 U93 ( .A(n115), .ZN(n100) );
  AOI22_X1 U94 ( .A1(n222), .A2(n234), .B1(n214), .B2(n294), .ZN(n85) );
  OAI22_X1 U95 ( .A1(n280), .A2(n82), .B1(n286), .B2(n85), .ZN(n99) );
  OAI22_X1 U96 ( .A1(n297), .A2(n235), .B1(n212), .B2(n225), .ZN(n91) );
  OAI22_X1 U97 ( .A1(n279), .A2(n83), .B1(n91), .B2(n285), .ZN(n113) );
  AOI22_X1 U98 ( .A1(n210), .A2(n231), .B1(n227), .B2(n236), .ZN(n94) );
  OAI22_X1 U99 ( .A1(n278), .A2(n84), .B1(n284), .B2(n94), .ZN(n112) );
  AOI22_X1 U100 ( .A1(n214), .A2(n298), .B1(n223), .B2(n234), .ZN(n93) );
  OAI22_X1 U101 ( .A1(n280), .A2(n85), .B1(n286), .B2(n93), .ZN(n111) );
  FA_X1 U102 ( .A(n88), .B(n87), .CI(n86), .CO(\mult_x_1/n31 ), .S(
        \mult_x_1/n32 ) );
  OAI22_X1 U103 ( .A1(n233), .A2(n294), .B1(n222), .B2(n216), .ZN(n110) );
  INV_X1 U104 ( .A(n110), .ZN(n89) );
  AOI22_X1 U105 ( .A1(n293), .A2(n90), .B1(n89), .B2(n303), .ZN(n105) );
  OAI22_X1 U106 ( .A1(n235), .A2(n296), .B1(n226), .B2(n212), .ZN(n108) );
  OAI22_X1 U107 ( .A1(n279), .A2(n91), .B1(n108), .B2(n285), .ZN(n104) );
  INV_X1 U108 ( .A(n104), .ZN(n92) );
  NAND2_X1 U109 ( .A1(n105), .A2(n92), .ZN(n116) );
  AOI22_X1 U110 ( .A1(n214), .A2(n299), .B1(n224), .B2(n234), .ZN(n109) );
  OAI22_X1 U111 ( .A1(n280), .A2(n93), .B1(n286), .B2(n109), .ZN(n130) );
  AOI22_X1 U112 ( .A1(n210), .A2(n230), .B1(n228), .B2(n236), .ZN(n107) );
  OAI22_X1 U113 ( .A1(n278), .A2(n94), .B1(n284), .B2(n107), .ZN(n129) );
  AOI22_X1 U114 ( .A1(n218), .A2(n220), .B1(n304), .B2(n232), .ZN(n122) );
  OAI21_X1 U115 ( .B1(n218), .B2(n219), .A(n122), .ZN(n128) );
  FA_X1 U116 ( .A(n97), .B(n96), .CI(n95), .CO(n87), .S(n102) );
  FA_X1 U117 ( .A(n100), .B(n99), .CI(n98), .CO(n86), .S(n101) );
  FA_X1 U118 ( .A(n103), .B(n102), .CI(n101), .CO(\mult_x_1/n37 ), .S(
        \mult_x_1/n38 ) );
  XOR2_X1 U119 ( .A(n105), .B(n104), .Z(n133) );
  AOI221_X1 U120 ( .B1(n291), .B2(n229), .C1(n278), .C2(n211), .A(n236), .ZN(
        n121) );
  OAI221_X1 U121 ( .B1(n229), .B2(n210), .C1(n305), .C2(n236), .A(n302), .ZN(
        n106) );
  OAI21_X1 U122 ( .B1(n107), .B2(n278), .A(n106), .ZN(n120) );
  AOI22_X1 U123 ( .A1(n212), .A2(n231), .B1(n227), .B2(n235), .ZN(n140) );
  OAI22_X1 U124 ( .A1(n279), .A2(n108), .B1(n285), .B2(n140), .ZN(n139) );
  AOI22_X1 U125 ( .A1(n214), .A2(n297), .B1(n225), .B2(n234), .ZN(n124) );
  OAI22_X1 U126 ( .A1(n280), .A2(n109), .B1(n286), .B2(n124), .ZN(n138) );
  AOI22_X1 U127 ( .A1(n216), .A2(n298), .B1(n223), .B2(n233), .ZN(n141) );
  OAI22_X1 U128 ( .A1(n281), .A2(n110), .B1(n287), .B2(n141), .ZN(n137) );
  FA_X1 U129 ( .A(n113), .B(n112), .CI(n111), .CO(n98), .S(n118) );
  FA_X1 U130 ( .A(n116), .B(n115), .CI(n114), .CO(n103), .S(n117) );
  FA_X1 U131 ( .A(n119), .B(n118), .CI(n117), .CO(\mult_x_1/n43 ), .S(
        \mult_x_1/n44 ) );
  HA_X1 U132 ( .A(n121), .B(n120), .CO(n132), .S(n146) );
  NOR2_X1 U133 ( .A1(n221), .A2(n232), .ZN(n123) );
  MUX2_X1 U134 ( .A(n123), .B(n122), .S(n219), .Z(n145) );
  AOI22_X1 U135 ( .A1(n214), .A2(n296), .B1(n226), .B2(n234), .ZN(n153) );
  OAI22_X1 U136 ( .A1(n280), .A2(n124), .B1(n286), .B2(n153), .ZN(n152) );
  NOR2_X1 U137 ( .A1(n305), .A2(n278), .ZN(n151) );
  NOR2_X1 U138 ( .A1(n222), .A2(n232), .ZN(n127) );
  AOI22_X1 U139 ( .A1(n218), .A2(n295), .B1(n221), .B2(n232), .ZN(n125) );
  INV_X1 U140 ( .A(n125), .ZN(n126) );
  MUX2_X1 U141 ( .A(n127), .B(n126), .S(n219), .Z(n150) );
  FA_X1 U142 ( .A(n130), .B(n129), .CI(n128), .CO(n114), .S(n135) );
  FA_X1 U143 ( .A(n133), .B(n132), .CI(n131), .CO(n119), .S(n134) );
  FA_X1 U144 ( .A(n136), .B(n135), .CI(n134), .CO(\mult_x_1/n51 ), .S(
        \mult_x_1/n52 ) );
  FA_X1 U145 ( .A(n139), .B(n138), .CI(n137), .CO(n131), .S(n149) );
  AOI22_X1 U146 ( .A1(n212), .A2(n230), .B1(n228), .B2(n235), .ZN(n143) );
  OAI22_X1 U147 ( .A1(n279), .A2(n140), .B1(n285), .B2(n143), .ZN(n160) );
  AOI22_X1 U148 ( .A1(n216), .A2(n299), .B1(n224), .B2(n233), .ZN(n157) );
  OAI22_X1 U149 ( .A1(n281), .A2(n141), .B1(n287), .B2(n157), .ZN(n159) );
  AOI221_X1 U150 ( .B1(n289), .B2(n229), .C1(n279), .C2(n213), .A(n235), .ZN(
        n170) );
  OAI221_X1 U151 ( .B1(n212), .B2(n229), .C1(n235), .C2(n305), .A(n300), .ZN(
        n142) );
  OAI21_X1 U152 ( .B1(n143), .B2(n279), .A(n142), .ZN(n169) );
  FA_X1 U153 ( .A(n146), .B(n145), .CI(n144), .CO(n136), .S(n147) );
  FA_X1 U154 ( .A(n149), .B(n148), .CI(n147), .CO(\mult_x_1/n59 ), .S(
        \mult_x_1/n60 ) );
  FA_X1 U155 ( .A(n152), .B(n151), .CI(n150), .CO(n144), .S(n163) );
  AOI22_X1 U156 ( .A1(n214), .A2(n231), .B1(n227), .B2(n234), .ZN(n180) );
  OAI22_X1 U157 ( .A1(n280), .A2(n153), .B1(n286), .B2(n180), .ZN(n173) );
  NOR2_X1 U158 ( .A1(n223), .A2(n232), .ZN(n156) );
  AOI22_X1 U159 ( .A1(n218), .A2(n294), .B1(n222), .B2(n232), .ZN(n154) );
  INV_X1 U160 ( .A(n154), .ZN(n155) );
  MUX2_X1 U161 ( .A(n156), .B(n155), .S(n219), .Z(n172) );
  AOI22_X1 U162 ( .A1(n216), .A2(n297), .B1(n225), .B2(n233), .ZN(n168) );
  OAI22_X1 U163 ( .A1(n281), .A2(n157), .B1(n287), .B2(n168), .ZN(n171) );
  FA_X1 U164 ( .A(n160), .B(n159), .CI(n158), .CO(n148), .S(n161) );
  FA_X1 U165 ( .A(n163), .B(n162), .CI(n161), .CO(\mult_x_1/n67 ), .S(
        \mult_x_1/n68 ) );
  NOR2_X1 U166 ( .A1(n224), .A2(n232), .ZN(n166) );
  AOI22_X1 U167 ( .A1(n218), .A2(n298), .B1(n223), .B2(n232), .ZN(n164) );
  INV_X1 U168 ( .A(n164), .ZN(n165) );
  MUX2_X1 U169 ( .A(n166), .B(n165), .S(n219), .Z(n183) );
  NOR2_X1 U170 ( .A1(n279), .A2(n305), .ZN(n182) );
  OAI22_X1 U171 ( .A1(n281), .A2(n168), .B1(n287), .B2(n167), .ZN(n181) );
  HA_X1 U172 ( .A(n170), .B(n169), .CO(n158), .S(n175) );
  FA_X1 U173 ( .A(n173), .B(n172), .CI(n171), .CO(n162), .S(n174) );
  FA_X1 U174 ( .A(n176), .B(n175), .CI(n174), .CO(\mult_x_1/n73 ), .S(
        \mult_x_1/n74 ) );
  HA_X1 U175 ( .A(n178), .B(n177), .CO(n186), .S(n44) );
  OAI22_X1 U176 ( .A1(n280), .A2(n180), .B1(n286), .B2(n179), .ZN(n185) );
  FA_X1 U177 ( .A(n183), .B(n182), .CI(n181), .CO(n176), .S(n184) );
  FA_X1 U178 ( .A(n186), .B(n185), .CI(n184), .CO(\mult_x_1/n79 ), .S(
        \mult_x_1/n80 ) );
  INV_X1 U179 ( .A(\A_extended[10] ), .ZN(n209) );
  INV_X1 U180 ( .A(A[7]), .ZN(n208) );
  INV_X1 U181 ( .A(A[8]), .ZN(n187) );
  OAI22_X1 U182 ( .A1(n208), .A2(n187), .B1(A[8]), .B2(A[7]), .ZN(n196) );
  OAI221_X1 U183 ( .B1(n187), .B2(n209), .C1(A[8]), .C2(\A_extended[10] ), .A(
        n196), .ZN(n195) );
  AOI22_X1 U184 ( .A1(n210), .A2(n220), .B1(n304), .B2(n236), .ZN(n193) );
  OAI21_X1 U185 ( .B1(n291), .B2(n302), .A(n193), .ZN(\mult_x_1/n111 ) );
  INV_X1 U186 ( .A(A[6]), .ZN(n188) );
  INV_X1 U187 ( .A(A[5]), .ZN(n207) );
  OAI22_X1 U188 ( .A1(n188), .A2(n207), .B1(A[5]), .B2(A[6]), .ZN(n202) );
  OAI221_X1 U189 ( .B1(n188), .B2(n208), .C1(A[6]), .C2(A[7]), .A(n202), .ZN(
        n201) );
  INV_X1 U190 ( .A(A[3]), .ZN(n206) );
  INV_X1 U191 ( .A(A[4]), .ZN(n189) );
  OAI22_X1 U192 ( .A1(n206), .A2(n189), .B1(A[4]), .B2(A[3]), .ZN(n198) );
  OAI221_X1 U193 ( .B1(n189), .B2(n207), .C1(A[4]), .C2(A[5]), .A(n198), .ZN(
        n197) );
  INV_X1 U194 ( .A(A[2]), .ZN(n190) );
  INV_X1 U195 ( .A(A[1]), .ZN(n205) );
  OAI22_X1 U196 ( .A1(n190), .A2(n205), .B1(A[1]), .B2(A[2]), .ZN(n200) );
  OAI221_X1 U197 ( .B1(n190), .B2(n206), .C1(A[2]), .C2(A[3]), .A(n200), .ZN(
        n199) );
  INV_X1 U198 ( .A(n191), .ZN(n192) );
  AOI22_X1 U199 ( .A1(n291), .A2(n193), .B1(n302), .B2(n192), .ZN(
        \mult_x_1/n20 ) );
  NOR2_X1 U200 ( .A1(n305), .A2(n292), .ZN(n359) );
  FA_X1 U201 ( .A(n240), .B(n237), .CI(n241), .CO(n194), .S(PRODUCT[18]) );
  INV_X1 U202 ( .A(n194), .ZN(PRODUCT[19]) );
  INV_X1 U203 ( .A(B[1]), .ZN(n203) );
  INV_X1 U204 ( .A(B[2]), .ZN(n204) );
endmodule


module part3b_mac ( clk, reset, a, b, valid_in, f, valid_out );
  input [9:0] a;
  input [9:0] b;
  output [19:0] f;
  input clk, reset, valid_in;
  output valid_out;
  wire   n504, n505, n506, N27, N28, correct_mult, N99, N100, N102, N103, N105,
         N106, N107, N108, N109, N111, N113, N114, N115, N116, N117, N118,
         N119, N120, N122, N123, N124, n73, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503;
  wire   [9:0] a_in;
  wire   [9:0] b_in;
  wire   [19:0] mult;
  wire   [19:0] mult_in;
  wire   [3:0] fwd;
  assign f[19] = N27;

  DFF_X1 \fwd_reg[0]  ( .D(n475), .CK(clk), .Q(fwd[0]) );
  DFF_X1 \fwd_reg[1]  ( .D(N122), .CK(clk), .Q(fwd[1]) );
  DFF_X1 \fwd_reg[2]  ( .D(N123), .CK(clk), .Q(fwd[2]) );
  DFF_X1 \fwd_reg[3]  ( .D(N124), .CK(clk), .Q(fwd[3]) );
  DFF_X1 \mult_in_reg[19]  ( .D(N120), .CK(clk), .Q(N28) );
  DFF_X1 \mult_in_reg[18]  ( .D(N119), .CK(clk), .Q(mult_in[18]) );
  DFF_X1 \mult_in_reg[17]  ( .D(N118), .CK(clk), .Q(mult_in[17]) );
  DFF_X1 \mult_in_reg[16]  ( .D(N117), .CK(clk), .Q(mult_in[16]) );
  DFF_X1 \mult_in_reg[15]  ( .D(N116), .CK(clk), .Q(mult_in[15]) );
  DFF_X1 \mult_in_reg[14]  ( .D(N115), .CK(clk), .Q(mult_in[14]) );
  DFF_X1 \mult_in_reg[13]  ( .D(N114), .CK(clk), .Q(mult_in[13]), .QN(n450) );
  DFF_X1 \mult_in_reg[12]  ( .D(N113), .CK(clk), .Q(mult_in[12]) );
  DFF_X1 \mult_in_reg[10]  ( .D(N111), .CK(clk), .Q(mult_in[10]), .QN(n453) );
  DFF_X1 \mult_in_reg[8]  ( .D(N109), .CK(clk), .Q(mult_in[8]), .QN(n454) );
  DFF_X1 \mult_in_reg[7]  ( .D(N108), .CK(clk), .Q(mult_in[7]), .QN(n476) );
  DFF_X1 \mult_in_reg[6]  ( .D(N107), .CK(clk), .Q(mult_in[6]), .QN(n456) );
  DFF_X1 \mult_in_reg[5]  ( .D(N106), .CK(clk), .Q(mult_in[5]), .QN(n455) );
  DFF_X1 \mult_in_reg[4]  ( .D(N105), .CK(clk), .Q(mult_in[4]), .QN(n451) );
  DFF_X1 \mult_in_reg[2]  ( .D(N103), .CK(clk), .Q(mult_in[2]), .QN(n452) );
  DFF_X1 \a_in_reg[9]  ( .D(n484), .CK(clk), .Q(a_in[9]) );
  DFF_X1 \a_in_reg[8]  ( .D(n485), .CK(clk), .Q(a_in[8]) );
  DFF_X1 \a_in_reg[7]  ( .D(n486), .CK(clk), .Q(a_in[7]) );
  DFF_X1 \a_in_reg[6]  ( .D(n487), .CK(clk), .Q(a_in[6]) );
  DFF_X1 \a_in_reg[5]  ( .D(n488), .CK(clk), .Q(a_in[5]) );
  DFF_X1 \a_in_reg[4]  ( .D(n489), .CK(clk), .Q(a_in[4]) );
  DFF_X1 \a_in_reg[3]  ( .D(n490), .CK(clk), .Q(a_in[3]) );
  DFF_X1 \a_in_reg[2]  ( .D(n491), .CK(clk), .Q(a_in[2]) );
  DFF_X1 \a_in_reg[1]  ( .D(n492), .CK(clk), .Q(a_in[1]) );
  DFF_X1 \a_in_reg[0]  ( .D(n493), .CK(clk), .Q(a_in[0]) );
  DFF_X1 \b_in_reg[9]  ( .D(n494), .CK(clk), .Q(b_in[9]) );
  DFF_X1 \b_in_reg[8]  ( .D(n495), .CK(clk), .Q(b_in[8]) );
  DFF_X1 \b_in_reg[7]  ( .D(n496), .CK(clk), .Q(b_in[7]) );
  DFF_X1 \b_in_reg[6]  ( .D(n497), .CK(clk), .Q(b_in[6]) );
  DFF_X1 \b_in_reg[5]  ( .D(n498), .CK(clk), .Q(b_in[5]) );
  DFF_X1 \b_in_reg[4]  ( .D(n499), .CK(clk), .Q(b_in[4]) );
  DFF_X1 \b_in_reg[3]  ( .D(n500), .CK(clk), .Q(b_in[3]) );
  DFF_X1 \b_in_reg[2]  ( .D(n501), .CK(clk), .Q(b_in[2]) );
  DFF_X1 \b_in_reg[1]  ( .D(n502), .CK(clk), .Q(b_in[1]) );
  DFF_X1 \b_in_reg[0]  ( .D(n503), .CK(clk), .Q(b_in[0]) );
  DFF_X1 correct_mult_reg ( .D(N99), .CK(clk), .Q(correct_mult) );
  DFF_X1 enable_f_reg ( .D(N100), .CK(clk), .QN(n460) );
  DFF_X1 valid_out_reg ( .D(n483), .CK(clk), .Q(valid_out) );
  DFF_X1 \f_reg[19]  ( .D(n93), .CK(clk), .Q(N27) );
  DFF_X1 \f_reg[0]  ( .D(n92), .CK(clk), .Q(n506), .QN(n481) );
  DFF_X1 \f_reg[1]  ( .D(n91), .CK(clk), .Q(f[1]), .QN(n479) );
  DFF_X1 \f_reg[2]  ( .D(n90), .CK(clk), .Q(f[2]), .QN(n468) );
  DFF_X1 \f_reg[3]  ( .D(n89), .CK(clk), .Q(n505), .QN(n465) );
  DFF_X1 \f_reg[4]  ( .D(n88), .CK(clk), .Q(f[4]), .QN(n473) );
  DFF_X1 \f_reg[5]  ( .D(n87), .CK(clk), .Q(f[5]), .QN(n467) );
  DFF_X1 \f_reg[6]  ( .D(n86), .CK(clk), .Q(f[6]), .QN(n469) );
  DFF_X1 \f_reg[7]  ( .D(n85), .CK(clk), .Q(f[7]), .QN(n477) );
  DFF_X1 \f_reg[8]  ( .D(n84), .CK(clk), .Q(f[8]), .QN(n470) );
  DFF_X1 \f_reg[12]  ( .D(n80), .CK(clk), .Q(f[12]), .QN(n471) );
  DFF_X1 \f_reg[14]  ( .D(n78), .CK(clk), .Q(f[14]) );
  DFF_X1 \f_reg[16]  ( .D(n76), .CK(clk), .Q(f[16]), .QN(n462) );
  DFF_X1 \f_reg[17]  ( .D(n75), .CK(clk), .Q(f[17]), .QN(n461) );
  DFF_X1 \f_reg[18]  ( .D(n73), .CK(clk), .Q(f[18]), .QN(n472) );
  part3b_mac_DW02_mult_5_stage_J1_0 multinstance ( .A(a_in), .B(b_in), .TC(
        1'b1), .CLK(clk), .PRODUCT(mult) );
  DFF_X1 \f_reg[10]  ( .D(n82), .CK(clk), .Q(f[10]), .QN(n482) );
  DFF_X1 \f_reg[9]  ( .D(n83), .CK(clk), .Q(f[9]), .QN(n466) );
  DFF_X1 \f_reg[13]  ( .D(n79), .CK(clk), .Q(f[13]), .QN(n464) );
  DFF_X1 \f_reg[11]  ( .D(n81), .CK(clk), .Q(n504), .QN(n463) );
  DFF_X1 \f_reg[15]  ( .D(n77), .CK(clk), .Q(f[15]), .QN(n474) );
  DFF_X1 \mult_in_reg[3]  ( .D(n117), .CK(clk), .Q(n457), .QN(mult_in[3]) );
  DFF_X1 \mult_in_reg[9]  ( .D(n116), .CK(clk), .Q(n459), .QN(mult_in[9]) );
  DFF_X1 \mult_in_reg[11]  ( .D(n115), .CK(clk), .Q(n458), .QN(mult_in[11]) );
  DFF_X1 \mult_in_reg[0]  ( .D(n123), .CK(clk), .QN(mult_in[0]) );
  DFF_X1 \mult_in_reg[1]  ( .D(N102), .CK(clk), .Q(mult_in[1]), .QN(n478) );
  OR2_X1 U144 ( .A1(n470), .A2(n454), .ZN(n337) );
  OR2_X1 U145 ( .A1(n453), .A2(n482), .ZN(n293) );
  AND2_X1 U146 ( .A1(valid_in), .A2(n447), .ZN(n475) );
  CLKBUF_X1 U147 ( .A(n160), .Z(n161) );
  CLKBUF_X1 U148 ( .A(n263), .Z(n265) );
  INV_X1 U149 ( .A(n304), .ZN(n278) );
  NOR2_X1 U150 ( .A1(n347), .A2(n346), .ZN(n348) );
  XNOR2_X1 U151 ( .A(n157), .B(n156), .ZN(n409) );
  AND2_X1 U152 ( .A1(n155), .A2(n154), .ZN(n156) );
  OR2_X1 U153 ( .A1(f[18]), .A2(mult_in[18]), .ZN(n354) );
  OR2_X1 U154 ( .A1(f[16]), .A2(mult_in[16]), .ZN(n211) );
  CLKBUF_X1 U155 ( .A(n307), .Z(n317) );
  CLKBUF_X1 U156 ( .A(n285), .Z(n289) );
  XNOR2_X1 U157 ( .A(n366), .B(n118), .ZN(n419) );
  NAND3_X1 U158 ( .A1(n272), .A2(n265), .A3(n262), .ZN(n270) );
  XNOR2_X1 U159 ( .A(n279), .B(n278), .ZN(n322) );
  NAND2_X1 U160 ( .A1(n460), .A2(n447), .ZN(n425) );
  OR2_X1 U161 ( .A1(n370), .A2(n409), .ZN(n158) );
  NOR2_X1 U162 ( .A1(n119), .A2(n278), .ZN(n321) );
  NOR2_X1 U163 ( .A1(n388), .A2(n345), .ZN(n349) );
  NAND2_X1 U164 ( .A1(mult[11]), .A2(n447), .ZN(n115) );
  NAND2_X1 U165 ( .A1(mult[9]), .A2(n447), .ZN(n116) );
  NAND2_X1 U166 ( .A1(mult[3]), .A2(n447), .ZN(n117) );
  AND2_X1 U167 ( .A1(n365), .A2(n364), .ZN(n118) );
  NOR2_X1 U168 ( .A1(n506), .A2(mult_in[0]), .ZN(n119) );
  AND2_X1 U169 ( .A1(n469), .A2(n456), .ZN(n264) );
  OR2_X1 U170 ( .A1(n425), .A2(n464), .ZN(n120) );
  OR2_X1 U171 ( .A1(n425), .A2(n477), .ZN(n121) );
  OR2_X1 U172 ( .A1(n425), .A2(n481), .ZN(n122) );
  NAND2_X1 U173 ( .A1(mult[0]), .A2(n447), .ZN(n123) );
  INV_X1 U174 ( .A(n465), .ZN(f[3]) );
  INV_X1 U175 ( .A(n463), .ZN(f[11]) );
  INV_X1 U176 ( .A(reset), .ZN(n447) );
  NOR2_X1 U177 ( .A1(f[8]), .A2(mult_in[8]), .ZN(n336) );
  AND2_X1 U178 ( .A1(n466), .A2(n459), .ZN(n331) );
  NOR2_X1 U179 ( .A1(n336), .A2(n331), .ZN(n230) );
  AND2_X1 U180 ( .A1(n482), .A2(n453), .ZN(n231) );
  AND2_X1 U181 ( .A1(n463), .A2(n458), .ZN(n124) );
  NOR2_X1 U182 ( .A1(n231), .A2(n124), .ZN(n141) );
  NAND2_X1 U183 ( .A1(n230), .A2(n141), .ZN(n245) );
  NOR2_X1 U184 ( .A1(f[12]), .A2(mult_in[12]), .ZN(n203) );
  AND2_X1 U185 ( .A1(n464), .A2(n450), .ZN(n142) );
  NOR2_X1 U186 ( .A1(n203), .A2(n142), .ZN(n359) );
  OR2_X1 U187 ( .A1(f[14]), .A2(mult_in[14]), .ZN(n365) );
  NAND2_X1 U188 ( .A1(n359), .A2(n365), .ZN(n145) );
  NOR2_X1 U189 ( .A1(n245), .A2(n145), .ZN(n147) );
  AND2_X1 U190 ( .A1(n468), .A2(n452), .ZN(n316) );
  AND2_X1 U191 ( .A1(n465), .A2(n457), .ZN(n125) );
  NOR2_X1 U192 ( .A1(n316), .A2(n125), .ZN(n131) );
  AND2_X1 U193 ( .A1(n479), .A2(n478), .ZN(n305) );
  NAND2_X1 U194 ( .A1(n506), .A2(mult_in[0]), .ZN(n127) );
  INV_X1 U195 ( .A(n479), .ZN(n126) );
  NAND2_X1 U196 ( .A1(n126), .A2(mult_in[1]), .ZN(n303) );
  OAI21_X1 U197 ( .B1(n305), .B2(n127), .A(n303), .ZN(n130) );
  AND2_X1 U198 ( .A1(n465), .A2(n457), .ZN(n128) );
  NAND2_X1 U199 ( .A1(f[2]), .A2(mult_in[2]), .ZN(n307) );
  NAND2_X1 U200 ( .A1(n505), .A2(mult_in[3]), .ZN(n308) );
  OAI21_X1 U201 ( .B1(n128), .B2(n307), .A(n308), .ZN(n129) );
  AOI21_X1 U202 ( .B1(n131), .B2(n130), .A(n129), .ZN(n159) );
  NOR2_X1 U203 ( .A1(f[4]), .A2(mult_in[4]), .ZN(n297) );
  AND2_X1 U204 ( .A1(n467), .A2(n455), .ZN(n132) );
  NOR2_X1 U205 ( .A1(n297), .A2(n132), .ZN(n162) );
  AND2_X1 U206 ( .A1(n477), .A2(n476), .ZN(n133) );
  NOR2_X1 U207 ( .A1(n264), .A2(n133), .ZN(n135) );
  NAND2_X1 U208 ( .A1(n162), .A2(n135), .ZN(n137) );
  OR2_X2 U209 ( .A1(n473), .A2(n451), .ZN(n312) );
  NAND2_X1 U210 ( .A1(f[5]), .A2(mult_in[5]), .ZN(n299) );
  OAI21_X1 U211 ( .B1(n132), .B2(n312), .A(n299), .ZN(n160) );
  NAND2_X1 U212 ( .A1(f[6]), .A2(mult_in[6]), .ZN(n263) );
  NAND2_X1 U213 ( .A1(f[7]), .A2(mult_in[7]), .ZN(n260) );
  OAI21_X1 U214 ( .B1(n133), .B2(n263), .A(n260), .ZN(n134) );
  AOI21_X1 U215 ( .B1(n135), .B2(n160), .A(n134), .ZN(n136) );
  OAI21_X1 U216 ( .B1(n159), .B2(n137), .A(n136), .ZN(n193) );
  AND2_X1 U217 ( .A1(n466), .A2(n459), .ZN(n138) );
  NAND2_X1 U218 ( .A1(f[9]), .A2(mult_in[9]), .ZN(n332) );
  OAI21_X1 U219 ( .B1(n138), .B2(n337), .A(n332), .ZN(n232) );
  AND2_X1 U220 ( .A1(n458), .A2(n463), .ZN(n139) );
  NAND2_X1 U221 ( .A1(n504), .A2(mult_in[11]), .ZN(n237) );
  OAI21_X1 U222 ( .B1(n139), .B2(n293), .A(n237), .ZN(n140) );
  AOI21_X1 U223 ( .B1(n232), .B2(n141), .A(n140), .ZN(n200) );
  NAND2_X1 U224 ( .A1(f[12]), .A2(mult_in[12]), .ZN(n247) );
  NAND2_X1 U225 ( .A1(f[13]), .A2(mult_in[13]), .ZN(n254) );
  OAI21_X1 U226 ( .B1(n142), .B2(n247), .A(n254), .ZN(n360) );
  NAND2_X1 U227 ( .A1(f[14]), .A2(mult_in[14]), .ZN(n364) );
  INV_X1 U228 ( .A(n364), .ZN(n143) );
  AOI21_X1 U229 ( .B1(n360), .B2(n365), .A(n143), .ZN(n144) );
  OAI21_X1 U230 ( .B1(n200), .B2(n145), .A(n144), .ZN(n146) );
  AOI21_X1 U231 ( .B1(n147), .B2(n193), .A(n146), .ZN(n285) );
  NOR2_X1 U232 ( .A1(f[15]), .A2(mult_in[15]), .ZN(n209) );
  INV_X1 U233 ( .A(n209), .ZN(n287) );
  NAND2_X1 U234 ( .A1(n211), .A2(n287), .ZN(n219) );
  NOR2_X1 U235 ( .A1(f[17]), .A2(mult_in[17]), .ZN(n221) );
  OR2_X1 U236 ( .A1(n219), .A2(n221), .ZN(n152) );
  NAND2_X1 U237 ( .A1(f[15]), .A2(mult_in[15]), .ZN(n286) );
  INV_X1 U238 ( .A(n286), .ZN(n149) );
  NAND2_X1 U239 ( .A1(f[16]), .A2(mult_in[16]), .ZN(n210) );
  INV_X1 U240 ( .A(n210), .ZN(n148) );
  AOI21_X1 U241 ( .B1(n211), .B2(n149), .A(n148), .ZN(n218) );
  NAND2_X1 U242 ( .A1(f[17]), .A2(mult_in[17]), .ZN(n222) );
  OAI21_X1 U243 ( .B1(n218), .B2(n221), .A(n222), .ZN(n150) );
  INV_X1 U244 ( .A(n150), .ZN(n151) );
  OAI21_X1 U245 ( .B1(n285), .B2(n152), .A(n151), .ZN(n356) );
  NAND2_X1 U246 ( .A1(f[18]), .A2(mult_in[18]), .ZN(n353) );
  INV_X1 U247 ( .A(n353), .ZN(n153) );
  AOI21_X1 U248 ( .B1(n356), .B2(n354), .A(n153), .ZN(n157) );
  OR2_X1 U249 ( .A1(N27), .A2(N28), .ZN(n155) );
  NAND2_X1 U250 ( .A1(N27), .A2(N28), .ZN(n154) );
  NOR2_X1 U251 ( .A1(n460), .A2(reset), .ZN(n483) );
  AND2_X2 U252 ( .A1(n158), .A2(n483), .ZN(n422) );
  INV_X1 U253 ( .A(n159), .ZN(n315) );
  AOI21_X1 U254 ( .B1(n315), .B2(n162), .A(n161), .ZN(n272) );
  INV_X1 U255 ( .A(n264), .ZN(n163) );
  NAND2_X1 U256 ( .A1(n163), .A2(n263), .ZN(n164) );
  XOR2_X1 U257 ( .A(n272), .B(n164), .Z(n347) );
  NAND2_X1 U258 ( .A1(n422), .A2(n347), .ZN(n192) );
  OR2_X1 U259 ( .A1(f[4]), .A2(f[5]), .ZN(n165) );
  NOR3_X1 U260 ( .A1(n165), .A2(f[2]), .A3(n505), .ZN(n169) );
  INV_X1 U261 ( .A(n481), .ZN(f[0]) );
  NOR3_X1 U262 ( .A1(f[18]), .A2(f[0]), .A3(f[1]), .ZN(n168) );
  NOR2_X1 U263 ( .A1(f[14]), .A2(f[15]), .ZN(n167) );
  NOR2_X1 U264 ( .A1(f[16]), .A2(f[17]), .ZN(n166) );
  NAND4_X1 U265 ( .A1(n169), .A2(n168), .A3(n167), .A4(n166), .ZN(n187) );
  NOR2_X1 U266 ( .A1(f[6]), .A2(f[7]), .ZN(n173) );
  NOR2_X1 U267 ( .A1(f[8]), .A2(f[9]), .ZN(n172) );
  NOR2_X1 U268 ( .A1(f[10]), .A2(f[11]), .ZN(n171) );
  NOR2_X1 U269 ( .A1(f[12]), .A2(f[13]), .ZN(n170) );
  NAND4_X1 U270 ( .A1(n173), .A2(n172), .A3(n171), .A4(n170), .ZN(n186) );
  NOR2_X1 U271 ( .A1(mult_in[12]), .A2(mult_in[11]), .ZN(n177) );
  NOR2_X1 U272 ( .A1(mult_in[10]), .A2(mult_in[9]), .ZN(n176) );
  NOR2_X1 U273 ( .A1(mult_in[8]), .A2(mult_in[7]), .ZN(n175) );
  NOR2_X1 U274 ( .A1(mult_in[6]), .A2(mult_in[5]), .ZN(n174) );
  AND4_X1 U275 ( .A1(n177), .A2(n176), .A3(n175), .A4(n174), .ZN(n183) );
  OR2_X1 U276 ( .A1(mult_in[2]), .A2(mult_in[1]), .ZN(n178) );
  NOR3_X1 U277 ( .A1(n178), .A2(mult_in[4]), .A3(mult_in[3]), .ZN(n182) );
  NOR3_X1 U278 ( .A1(mult_in[0]), .A2(mult_in[18]), .A3(mult_in[17]), .ZN(n181) );
  OR2_X1 U279 ( .A1(mult_in[14]), .A2(mult_in[13]), .ZN(n179) );
  NOR3_X1 U280 ( .A1(n179), .A2(mult_in[16]), .A3(mult_in[15]), .ZN(n180) );
  NAND4_X1 U281 ( .A1(n183), .A2(n182), .A3(n181), .A4(n180), .ZN(n185) );
  NOR2_X1 U282 ( .A1(N27), .A2(N28), .ZN(n184) );
  OAI211_X1 U283 ( .C1(n187), .C2(n186), .A(n185), .B(n184), .ZN(n410) );
  INV_X1 U284 ( .A(n483), .ZN(n411) );
  NOR2_X1 U285 ( .A1(n410), .A2(n411), .ZN(n188) );
  NAND2_X2 U286 ( .A1(n409), .A2(n188), .ZN(n423) );
  INV_X1 U287 ( .A(n423), .ZN(n190) );
  NOR2_X1 U288 ( .A1(n425), .A2(n469), .ZN(n189) );
  NOR2_X1 U289 ( .A1(n190), .A2(n189), .ZN(n191) );
  NAND2_X1 U290 ( .A1(n192), .A2(n191), .ZN(n86) );
  INV_X1 U291 ( .A(n193), .ZN(n344) );
  INV_X1 U292 ( .A(n336), .ZN(n194) );
  AND2_X1 U293 ( .A1(n194), .A2(n337), .ZN(n195) );
  XNOR2_X1 U294 ( .A(n344), .B(n195), .ZN(n346) );
  NAND2_X1 U295 ( .A1(n422), .A2(n346), .ZN(n199) );
  INV_X1 U296 ( .A(n423), .ZN(n197) );
  NOR2_X1 U297 ( .A1(n425), .A2(n470), .ZN(n196) );
  NOR2_X1 U298 ( .A1(n197), .A2(n196), .ZN(n198) );
  NAND2_X1 U299 ( .A1(n199), .A2(n198), .ZN(n84) );
  INV_X1 U300 ( .A(n200), .ZN(n250) );
  INV_X1 U301 ( .A(n250), .ZN(n201) );
  OAI21_X1 U302 ( .B1(n344), .B2(n245), .A(n201), .ZN(n202) );
  INV_X1 U303 ( .A(n202), .ZN(n363) );
  INV_X1 U304 ( .A(n203), .ZN(n249) );
  AND2_X1 U305 ( .A1(n249), .A2(n247), .ZN(n204) );
  XNOR2_X1 U306 ( .A(n363), .B(n204), .ZN(n350) );
  NAND2_X1 U307 ( .A1(n422), .A2(n350), .ZN(n208) );
  INV_X1 U308 ( .A(n423), .ZN(n206) );
  NOR2_X1 U309 ( .A1(n425), .A2(n471), .ZN(n205) );
  NOR2_X1 U310 ( .A1(n206), .A2(n205), .ZN(n207) );
  NAND2_X1 U311 ( .A1(n208), .A2(n207), .ZN(n80) );
  OAI21_X1 U312 ( .B1(n285), .B2(n209), .A(n286), .ZN(n213) );
  NAND2_X1 U313 ( .A1(n211), .A2(n210), .ZN(n212) );
  XNOR2_X1 U314 ( .A(n213), .B(n212), .ZN(n290) );
  NAND2_X1 U315 ( .A1(n422), .A2(n290), .ZN(n217) );
  INV_X1 U316 ( .A(n423), .ZN(n215) );
  NOR2_X1 U317 ( .A1(n425), .A2(n462), .ZN(n214) );
  NOR2_X1 U318 ( .A1(n215), .A2(n214), .ZN(n216) );
  NAND2_X1 U319 ( .A1(n217), .A2(n216), .ZN(n76) );
  OAI21_X1 U320 ( .B1(n285), .B2(n219), .A(n218), .ZN(n220) );
  INV_X1 U321 ( .A(n220), .ZN(n225) );
  INV_X1 U322 ( .A(n221), .ZN(n223) );
  AND2_X1 U323 ( .A1(n223), .A2(n222), .ZN(n224) );
  XNOR2_X1 U324 ( .A(n225), .B(n224), .ZN(n351) );
  NAND2_X1 U325 ( .A1(n422), .A2(n351), .ZN(n229) );
  INV_X1 U326 ( .A(n423), .ZN(n227) );
  NOR2_X1 U327 ( .A1(n425), .A2(n461), .ZN(n226) );
  NOR2_X1 U328 ( .A1(n227), .A2(n226), .ZN(n228) );
  NAND2_X1 U329 ( .A1(n229), .A2(n228), .ZN(n75) );
  INV_X1 U330 ( .A(n230), .ZN(n292) );
  INV_X1 U331 ( .A(n231), .ZN(n294) );
  NAND2_X1 U332 ( .A1(n230), .A2(n294), .ZN(n235) );
  INV_X1 U333 ( .A(n232), .ZN(n291) );
  OAI21_X1 U334 ( .B1(n291), .B2(n231), .A(n293), .ZN(n233) );
  INV_X1 U335 ( .A(n233), .ZN(n234) );
  OAI21_X1 U336 ( .B1(n344), .B2(n235), .A(n234), .ZN(n236) );
  INV_X1 U337 ( .A(n236), .ZN(n240) );
  OR2_X1 U338 ( .A1(n504), .A2(mult_in[11]), .ZN(n238) );
  NAND2_X1 U339 ( .A1(n238), .A2(n237), .ZN(n239) );
  XOR2_X1 U340 ( .A(n240), .B(n239), .Z(n358) );
  NAND2_X1 U341 ( .A1(n422), .A2(n358), .ZN(n244) );
  INV_X1 U342 ( .A(n423), .ZN(n242) );
  NOR2_X1 U343 ( .A1(n425), .A2(n463), .ZN(n241) );
  NOR2_X1 U344 ( .A1(n242), .A2(n241), .ZN(n243) );
  NAND2_X1 U345 ( .A1(n244), .A2(n243), .ZN(n81) );
  INV_X1 U346 ( .A(n245), .ZN(n246) );
  NAND2_X1 U347 ( .A1(n246), .A2(n249), .ZN(n252) );
  INV_X1 U348 ( .A(n247), .ZN(n248) );
  AOI21_X1 U349 ( .B1(n250), .B2(n249), .A(n248), .ZN(n251) );
  OAI21_X1 U350 ( .B1(n344), .B2(n252), .A(n251), .ZN(n253) );
  INV_X1 U351 ( .A(n253), .ZN(n257) );
  OR2_X1 U352 ( .A1(f[13]), .A2(mult_in[13]), .ZN(n255) );
  AND2_X1 U353 ( .A1(n255), .A2(n254), .ZN(n256) );
  XNOR2_X1 U354 ( .A(n257), .B(n256), .ZN(n357) );
  NAND2_X1 U355 ( .A1(n422), .A2(n357), .ZN(n259) );
  AND2_X1 U356 ( .A1(n423), .A2(n120), .ZN(n258) );
  NAND2_X1 U357 ( .A1(n259), .A2(n258), .ZN(n79) );
  OR2_X1 U358 ( .A1(f[7]), .A2(mult_in[7]), .ZN(n261) );
  NAND2_X1 U359 ( .A1(n261), .A2(n260), .ZN(n268) );
  NAND2_X1 U360 ( .A1(n268), .A2(n163), .ZN(n271) );
  INV_X1 U361 ( .A(n268), .ZN(n262) );
  AND2_X1 U362 ( .A1(n264), .A2(n263), .ZN(n267) );
  NAND2_X1 U363 ( .A1(n268), .A2(n265), .ZN(n266) );
  OAI21_X1 U364 ( .B1(n268), .B2(n267), .A(n266), .ZN(n269) );
  OAI211_X1 U365 ( .C1(n272), .C2(n271), .A(n270), .B(n269), .ZN(n345) );
  NAND2_X1 U366 ( .A1(n422), .A2(n345), .ZN(n274) );
  AND2_X1 U367 ( .A1(n423), .A2(n121), .ZN(n273) );
  NAND2_X1 U368 ( .A1(n274), .A2(n273), .ZN(n85) );
  NAND2_X1 U369 ( .A1(n506), .A2(mult_in[0]), .ZN(n304) );
  NAND2_X1 U370 ( .A1(n422), .A2(n321), .ZN(n276) );
  AND2_X1 U371 ( .A1(n423), .A2(n122), .ZN(n275) );
  NAND2_X1 U372 ( .A1(n276), .A2(n275), .ZN(n92) );
  INV_X1 U373 ( .A(n305), .ZN(n277) );
  NAND2_X1 U374 ( .A1(n277), .A2(n303), .ZN(n279) );
  NAND2_X1 U375 ( .A1(n422), .A2(n322), .ZN(n284) );
  INV_X1 U376 ( .A(n423), .ZN(n282) );
  INV_X1 U377 ( .A(f[1]), .ZN(n280) );
  NOR2_X1 U378 ( .A1(n280), .A2(n425), .ZN(n281) );
  NOR2_X1 U379 ( .A1(n282), .A2(n281), .ZN(n283) );
  NAND2_X1 U380 ( .A1(n284), .A2(n283), .ZN(n91) );
  NAND2_X1 U381 ( .A1(n287), .A2(n286), .ZN(n288) );
  XOR2_X1 U382 ( .A(n289), .B(n288), .Z(n403) );
  NOR2_X1 U383 ( .A1(n403), .A2(n290), .ZN(n330) );
  OAI21_X1 U384 ( .B1(n344), .B2(n292), .A(n291), .ZN(n296) );
  NAND2_X1 U385 ( .A1(n294), .A2(n293), .ZN(n295) );
  XNOR2_X1 U386 ( .A(n296), .B(n295), .ZN(n393) );
  INV_X1 U387 ( .A(n297), .ZN(n313) );
  INV_X1 U388 ( .A(n312), .ZN(n298) );
  AOI21_X1 U389 ( .B1(n315), .B2(n313), .A(n298), .ZN(n302) );
  OR2_X1 U390 ( .A1(f[5]), .A2(mult_in[5]), .ZN(n300) );
  AND2_X1 U391 ( .A1(n300), .A2(n299), .ZN(n301) );
  XNOR2_X1 U392 ( .A(n302), .B(n301), .ZN(n383) );
  INV_X1 U393 ( .A(n383), .ZN(n327) );
  OAI21_X1 U394 ( .B1(n305), .B2(n304), .A(n303), .ZN(n306) );
  INV_X1 U395 ( .A(n306), .ZN(n320) );
  OAI21_X1 U396 ( .B1(n320), .B2(n316), .A(n317), .ZN(n311) );
  OR2_X1 U397 ( .A1(n505), .A2(mult_in[3]), .ZN(n309) );
  NAND2_X1 U398 ( .A1(n309), .A2(n308), .ZN(n310) );
  XNOR2_X1 U399 ( .A(n311), .B(n310), .ZN(n378) );
  NAND2_X1 U400 ( .A1(n313), .A2(n312), .ZN(n314) );
  XNOR2_X1 U401 ( .A(n315), .B(n314), .ZN(n421) );
  INV_X1 U402 ( .A(n316), .ZN(n318) );
  AND2_X1 U403 ( .A1(n318), .A2(n317), .ZN(n319) );
  XNOR2_X1 U404 ( .A(n320), .B(n319), .ZN(n373) );
  INV_X1 U405 ( .A(n373), .ZN(n324) );
  NOR2_X1 U406 ( .A1(n322), .A2(n321), .ZN(n323) );
  NAND2_X1 U407 ( .A1(n324), .A2(n323), .ZN(n325) );
  NOR3_X1 U408 ( .A1(n378), .A2(n421), .A3(n325), .ZN(n326) );
  NAND2_X1 U409 ( .A1(n327), .A2(n326), .ZN(n328) );
  NOR2_X1 U410 ( .A1(n393), .A2(n328), .ZN(n329) );
  AND2_X1 U411 ( .A1(n330), .A2(n329), .ZN(n369) );
  INV_X1 U412 ( .A(n331), .ZN(n333) );
  NAND2_X1 U413 ( .A1(n333), .A2(n332), .ZN(n340) );
  NAND2_X1 U414 ( .A1(n340), .A2(n194), .ZN(n343) );
  INV_X1 U415 ( .A(n337), .ZN(n334) );
  NOR2_X1 U416 ( .A1(n340), .A2(n334), .ZN(n335) );
  NAND2_X1 U417 ( .A1(n344), .A2(n335), .ZN(n342) );
  AND2_X1 U418 ( .A1(n336), .A2(n337), .ZN(n339) );
  NAND2_X1 U419 ( .A1(n340), .A2(n337), .ZN(n338) );
  OAI21_X1 U420 ( .B1(n340), .B2(n339), .A(n338), .ZN(n341) );
  OAI211_X1 U421 ( .C1(n344), .C2(n343), .A(n342), .B(n341), .ZN(n388) );
  NAND2_X1 U422 ( .A1(n349), .A2(n348), .ZN(n352) );
  NOR3_X1 U423 ( .A1(n352), .A2(n351), .A3(n350), .ZN(n368) );
  NAND2_X1 U424 ( .A1(n354), .A2(n353), .ZN(n355) );
  XNOR2_X1 U425 ( .A(n356), .B(n355), .ZN(n398) );
  NOR3_X1 U426 ( .A1(n358), .A2(n398), .A3(n357), .ZN(n367) );
  INV_X1 U427 ( .A(n359), .ZN(n362) );
  INV_X1 U428 ( .A(n360), .ZN(n361) );
  OAI21_X1 U429 ( .B1(n363), .B2(n362), .A(n361), .ZN(n366) );
  NAND4_X1 U430 ( .A1(n369), .A2(n368), .A3(n367), .A4(n419), .ZN(n372) );
  NAND2_X1 U431 ( .A1(N27), .A2(N28), .ZN(n370) );
  NOR2_X1 U432 ( .A1(n409), .A2(n370), .ZN(n371) );
  NAND2_X1 U433 ( .A1(n372), .A2(n371), .ZN(n414) );
  AND2_X2 U434 ( .A1(n414), .A2(n483), .ZN(n404) );
  NAND2_X1 U435 ( .A1(n404), .A2(n373), .ZN(n377) );
  INV_X1 U436 ( .A(n423), .ZN(n375) );
  NOR2_X1 U437 ( .A1(n425), .A2(n468), .ZN(n374) );
  NOR2_X1 U438 ( .A1(n375), .A2(n374), .ZN(n376) );
  NAND2_X1 U439 ( .A1(n377), .A2(n376), .ZN(n90) );
  NAND2_X1 U440 ( .A1(n404), .A2(n378), .ZN(n382) );
  INV_X1 U441 ( .A(n423), .ZN(n380) );
  NOR2_X1 U442 ( .A1(n425), .A2(n465), .ZN(n379) );
  NOR2_X1 U443 ( .A1(n380), .A2(n379), .ZN(n381) );
  NAND2_X1 U444 ( .A1(n382), .A2(n381), .ZN(n89) );
  NAND2_X1 U445 ( .A1(n404), .A2(n383), .ZN(n387) );
  INV_X1 U446 ( .A(n423), .ZN(n385) );
  NOR2_X1 U447 ( .A1(n425), .A2(n467), .ZN(n384) );
  NOR2_X1 U448 ( .A1(n385), .A2(n384), .ZN(n386) );
  NAND2_X1 U449 ( .A1(n387), .A2(n386), .ZN(n87) );
  NAND2_X1 U450 ( .A1(n404), .A2(n388), .ZN(n392) );
  INV_X1 U451 ( .A(n423), .ZN(n390) );
  NOR2_X1 U452 ( .A1(n425), .A2(n466), .ZN(n389) );
  NOR2_X1 U453 ( .A1(n390), .A2(n389), .ZN(n391) );
  NAND2_X1 U454 ( .A1(n392), .A2(n391), .ZN(n83) );
  NAND2_X1 U455 ( .A1(n404), .A2(n393), .ZN(n397) );
  INV_X1 U456 ( .A(n423), .ZN(n395) );
  NOR2_X1 U457 ( .A1(n425), .A2(n482), .ZN(n394) );
  NOR2_X1 U458 ( .A1(n395), .A2(n394), .ZN(n396) );
  NAND2_X1 U459 ( .A1(n397), .A2(n396), .ZN(n82) );
  NAND2_X1 U460 ( .A1(n404), .A2(n398), .ZN(n402) );
  INV_X1 U461 ( .A(n423), .ZN(n400) );
  NOR2_X1 U462 ( .A1(n425), .A2(n472), .ZN(n399) );
  NOR2_X1 U463 ( .A1(n400), .A2(n399), .ZN(n401) );
  NAND2_X1 U464 ( .A1(n402), .A2(n401), .ZN(n73) );
  AND2_X1 U465 ( .A1(mult[10]), .A2(n447), .ZN(N111) );
  AND2_X1 U466 ( .A1(mult[13]), .A2(n447), .ZN(N114) );
  AND2_X1 U467 ( .A1(mult[16]), .A2(n447), .ZN(N117) );
  AND2_X1 U468 ( .A1(mult[15]), .A2(n447), .ZN(N116) );
  AND2_X1 U469 ( .A1(mult[2]), .A2(n447), .ZN(N103) );
  AND2_X1 U470 ( .A1(mult[4]), .A2(n447), .ZN(N105) );
  AND2_X1 U471 ( .A1(mult[5]), .A2(n447), .ZN(N106) );
  AND2_X1 U472 ( .A1(mult[12]), .A2(n447), .ZN(N113) );
  AND2_X1 U473 ( .A1(mult[14]), .A2(n447), .ZN(N115) );
  AND2_X1 U474 ( .A1(mult[17]), .A2(n447), .ZN(N118) );
  AND2_X1 U475 ( .A1(mult[6]), .A2(n447), .ZN(N107) );
  AND2_X1 U476 ( .A1(mult[8]), .A2(n447), .ZN(N109) );
  AND2_X1 U477 ( .A1(mult[1]), .A2(n447), .ZN(N102) );
  AND2_X1 U478 ( .A1(mult[19]), .A2(n447), .ZN(N120) );
  AND2_X1 U479 ( .A1(mult[18]), .A2(n447), .ZN(N119) );
  NAND2_X1 U480 ( .A1(n404), .A2(n403), .ZN(n408) );
  INV_X1 U481 ( .A(n423), .ZN(n406) );
  NOR2_X1 U482 ( .A1(n425), .A2(n474), .ZN(n405) );
  NOR2_X1 U483 ( .A1(n406), .A2(n405), .ZN(n407) );
  NAND2_X1 U484 ( .A1(n408), .A2(n407), .ZN(n77) );
  AND2_X1 U485 ( .A1(mult[7]), .A2(n447), .ZN(N108) );
  INV_X1 U486 ( .A(n425), .ZN(n417) );
  INV_X1 U487 ( .A(n409), .ZN(n413) );
  INV_X1 U488 ( .A(n410), .ZN(n412) );
  AOI211_X1 U489 ( .C1(n414), .C2(n413), .A(n412), .B(n411), .ZN(n415) );
  AOI21_X1 U490 ( .B1(n417), .B2(N27), .A(n415), .ZN(n416) );
  INV_X1 U491 ( .A(n416), .ZN(n93) );
  INV_X1 U492 ( .A(n422), .ZN(n420) );
  NAND2_X1 U493 ( .A1(n417), .A2(f[14]), .ZN(n418) );
  OAI211_X1 U494 ( .C1(n420), .C2(n419), .A(n423), .B(n418), .ZN(n78) );
  NAND2_X1 U495 ( .A1(n422), .A2(n421), .ZN(n424) );
  OAI211_X1 U496 ( .C1(n473), .C2(n425), .A(n424), .B(n423), .ZN(n88) );
  NOR2_X2 U497 ( .A1(reset), .A2(valid_in), .ZN(n445) );
  AOI22_X1 U498 ( .A1(a_in[9]), .A2(n445), .B1(n475), .B2(a[9]), .ZN(n426) );
  INV_X1 U499 ( .A(n426), .ZN(n484) );
  AOI22_X1 U500 ( .A1(n445), .A2(a_in[8]), .B1(n475), .B2(a[8]), .ZN(n427) );
  INV_X1 U501 ( .A(n427), .ZN(n485) );
  AOI22_X1 U502 ( .A1(n445), .A2(a_in[7]), .B1(n475), .B2(a[7]), .ZN(n428) );
  INV_X1 U503 ( .A(n428), .ZN(n486) );
  AOI22_X1 U504 ( .A1(n445), .A2(a_in[6]), .B1(n475), .B2(a[6]), .ZN(n429) );
  INV_X1 U505 ( .A(n429), .ZN(n487) );
  AOI22_X1 U506 ( .A1(n445), .A2(a_in[5]), .B1(n475), .B2(a[5]), .ZN(n430) );
  INV_X1 U507 ( .A(n430), .ZN(n488) );
  AOI22_X1 U508 ( .A1(n445), .A2(a_in[4]), .B1(n475), .B2(a[4]), .ZN(n431) );
  INV_X1 U509 ( .A(n431), .ZN(n489) );
  AOI22_X1 U510 ( .A1(n445), .A2(a_in[3]), .B1(n475), .B2(a[3]), .ZN(n432) );
  INV_X1 U511 ( .A(n432), .ZN(n490) );
  AOI22_X1 U512 ( .A1(n445), .A2(a_in[2]), .B1(n475), .B2(a[2]), .ZN(n433) );
  INV_X1 U513 ( .A(n433), .ZN(n491) );
  AOI22_X1 U514 ( .A1(n445), .A2(a_in[1]), .B1(n475), .B2(a[1]), .ZN(n434) );
  INV_X1 U515 ( .A(n434), .ZN(n492) );
  AOI22_X1 U516 ( .A1(n445), .A2(a_in[0]), .B1(n475), .B2(a[0]), .ZN(n435) );
  INV_X1 U517 ( .A(n435), .ZN(n493) );
  AOI22_X1 U518 ( .A1(n445), .A2(b_in[9]), .B1(n475), .B2(b[9]), .ZN(n436) );
  INV_X1 U519 ( .A(n436), .ZN(n494) );
  AOI22_X1 U520 ( .A1(n445), .A2(b_in[8]), .B1(n475), .B2(b[8]), .ZN(n437) );
  INV_X1 U521 ( .A(n437), .ZN(n495) );
  AOI22_X1 U522 ( .A1(n445), .A2(b_in[7]), .B1(n475), .B2(b[7]), .ZN(n438) );
  INV_X1 U523 ( .A(n438), .ZN(n496) );
  AOI22_X1 U524 ( .A1(n445), .A2(b_in[6]), .B1(n475), .B2(b[6]), .ZN(n439) );
  INV_X1 U525 ( .A(n439), .ZN(n497) );
  AOI22_X1 U526 ( .A1(n445), .A2(b_in[5]), .B1(n475), .B2(b[5]), .ZN(n440) );
  INV_X1 U527 ( .A(n440), .ZN(n498) );
  AOI22_X1 U528 ( .A1(n445), .A2(b_in[4]), .B1(n475), .B2(b[4]), .ZN(n441) );
  INV_X1 U529 ( .A(n441), .ZN(n499) );
  AOI22_X1 U530 ( .A1(n445), .A2(b_in[3]), .B1(n475), .B2(b[3]), .ZN(n442) );
  INV_X1 U531 ( .A(n442), .ZN(n500) );
  AOI22_X1 U532 ( .A1(n445), .A2(b_in[2]), .B1(n475), .B2(b[2]), .ZN(n443) );
  INV_X1 U533 ( .A(n443), .ZN(n501) );
  AOI22_X1 U534 ( .A1(n445), .A2(b_in[1]), .B1(n475), .B2(b[1]), .ZN(n444) );
  INV_X1 U535 ( .A(n444), .ZN(n502) );
  AOI22_X1 U536 ( .A1(n445), .A2(b_in[0]), .B1(n475), .B2(b[0]), .ZN(n446) );
  INV_X1 U537 ( .A(n446), .ZN(n503) );
  AND2_X1 U538 ( .A1(fwd[0]), .A2(n447), .ZN(N122) );
  AND2_X1 U539 ( .A1(fwd[1]), .A2(n447), .ZN(N123) );
  AND2_X1 U540 ( .A1(fwd[2]), .A2(n447), .ZN(N124) );
  AND2_X1 U541 ( .A1(correct_mult), .A2(n447), .ZN(N100) );
  AND2_X1 U542 ( .A1(fwd[3]), .A2(n447), .ZN(N99) );
endmodule

