`include "SIMD-ALU.v"
module simd()
/*
ALU operating on 8 bit data here
4 ALUs used 
store what the ALU must use in the respective alu_reg

*/
reg [7:0] data_reg1 [5:0];
reg [7:0] data_reg2 [5:0];
reg [7:0] data_reg3 [5:0];
reg [7:0] data_reg4 [5:0];

reg [7:0] Alu_reg1_1;
reg [7:0] Alu_reg1_2;
reg [7:0] Alu_reg2_1;
reg [7:0] Alu_reg2_2;
reg [7:0] Alu_reg3_1;
reg [7:0] Alu_reg3_2;
reg [7:0] Alu_reg4_1;
reg [7:0] Alu_reg4_2;

reg [2:0] alu_ctrl1;
reg [2:0] alu_ctrl2;
reg [2:0] alu_ctrl3;
reg [2:0] alu_ctrl4;

reg [7:0] alu_out1;
reg [7:0] alu_out2;
reg [7:0] alu_out3;
reg [7:0] alu_out4;

SIMDalu alu1(.aluctrl(alu_ctrl1), .a(Alu_reg1_1), .b(Alu_reg1_2), .c(alu_out1));
SIMDalu alu2(.aluctrl(alu_ctrl2), .a(Alu_reg2_1), .b(Alu_reg2_2), .c(alu_out2));
SIMDalu alu3(.aluctrl(alu_ctrl3), .a(Alu_reg3_1), .b(Alu_reg3_2), .c(alu_out3));
SIMDalu alu4(.aluctrl(alu_ctrl4), .a(Alu_reg4_1), .b(Alu_reg4_2), .c(alu_out4));


endmodule