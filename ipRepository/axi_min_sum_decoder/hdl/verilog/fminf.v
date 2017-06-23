// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.3
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fminf (
        x,
        y,
        ap_return
);

parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv32_17 = 32'b10111;
parameter    ap_const_lv32_1E = 32'b11110;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv23_0 = 23'b00000000000000000000000;
parameter    ap_const_lv8_FF = 8'b11111111;
parameter    ap_const_lv23_400000 = 23'b10000000000000000000000;

input  [31:0] x;
input  [31:0] y;
output  [31:0] ap_return;

wire   [31:0] t_V_20_fu_42_p1;
wire   [31:0] t_V_21_fu_68_p1;
wire   [7:0] loc_V_fu_54_p4;
wire   [22:0] loc_V_1_fu_64_p1;
wire   [7:0] loc_V_2_fu_80_p4;
wire   [22:0] loc_V_3_fu_90_p1;
wire   [0:0] tmp_47_fu_100_p2;
wire   [0:0] tmp_48_fu_106_p2;
wire   [0:0] tmp_s_fu_94_p2;
wire   [0:0] tmp_49_fu_112_p2;
wire   [0:0] tmp23_fu_124_p2;
wire   [0:0] tmp22_fu_118_p2;
wire   [0:0] tmp_50_fu_136_p2;
wire   [0:0] tmp_51_fu_148_p2;
wire   [0:0] p_Result_s_fu_46_p3;
wire   [0:0] p_Result_29_fu_72_p3;
wire   [22:0] x_fp_sig_V_fu_166_p2;
wire   [31:0] p_Result_33_fu_172_p4;
wire   [30:0] tmp_fu_186_p1;
wire   [30:0] tmp_248_fu_198_p1;
wire   [31:0] p_Result_34_fu_190_p3;
wire   [31:0] p_Result_35_fu_202_p3;
wire   [0:0] tmp_52_fu_210_p2;
wire   [0:0] tmp_54_fu_224_p2;
wire   [0:0] or_cond2_fu_130_p2;
wire   [0:0] or_cond3_fu_142_p2;
wire   [0:0] sel_tmp1_fu_238_p2;
wire   [0:0] or_cond4_fu_154_p2;
wire   [0:0] sel_tmp2_fu_244_p2;
wire   [0:0] brmerge_demorgan_fu_160_p2;
wire   [0:0] sel_tmp3_fu_250_p2;
wire   [31:0] tmp_53_fu_216_p3;
wire   [31:0] res_fu_182_p1;
wire   [0:0] sel_tmp8_fu_264_p2;
wire   [0:0] sel_tmp9_fu_270_p2;
wire   [31:0] tmp_55_fu_230_p3;
wire   [31:0] sel_tmp4_fu_256_p3;
wire   [31:0] sel_tmp_fu_276_p3;
wire   [0:0] sel_tmp14_demorgan_fu_292_p2;
wire   [0:0] sel_tmp6_fu_298_p2;
wire   [0:0] sel_tmp7_fu_304_p2;
wire   [31:0] sel_tmp5_fu_284_p3;
wire   [0:0] sel_tmp11_fu_318_p2;
wire   [0:0] sel_tmp12_fu_324_p2;
wire   [31:0] sel_tmp10_fu_310_p3;

assign ap_return = ((sel_tmp12_fu_324_p2[0:0] === 1'b1) ? x : sel_tmp10_fu_310_p3);

assign brmerge_demorgan_fu_160_p2 = (p_Result_s_fu_46_p3 & p_Result_29_fu_72_p3);

assign loc_V_1_fu_64_p1 = t_V_20_fu_42_p1[22:0];

assign loc_V_2_fu_80_p4 = {{t_V_21_fu_68_p1[ap_const_lv32_1E : ap_const_lv32_17]}};

assign loc_V_3_fu_90_p1 = t_V_21_fu_68_p1[22:0];

assign loc_V_fu_54_p4 = {{t_V_20_fu_42_p1[ap_const_lv32_1E : ap_const_lv32_17]}};

assign or_cond2_fu_130_p2 = (tmp23_fu_124_p2 & tmp22_fu_118_p2);

assign or_cond3_fu_142_p2 = (tmp_50_fu_136_p2 | tmp_47_fu_100_p2);

assign or_cond4_fu_154_p2 = (tmp_51_fu_148_p2 | tmp_49_fu_112_p2);

assign p_Result_29_fu_72_p3 = t_V_21_fu_68_p1[ap_const_lv32_1F];

assign p_Result_33_fu_172_p4 = {{{p_Result_s_fu_46_p3}, {ap_const_lv8_FF}}, {x_fp_sig_V_fu_166_p2}};

assign p_Result_34_fu_190_p3 = {{1'b1}, {tmp_fu_186_p1}};

assign p_Result_35_fu_202_p3 = {{1'b1}, {tmp_248_fu_198_p1}};

assign p_Result_s_fu_46_p3 = t_V_20_fu_42_p1[ap_const_lv32_1F];

assign res_fu_182_p1 = p_Result_33_fu_172_p4;

assign sel_tmp10_fu_310_p3 = ((sel_tmp7_fu_304_p2[0:0] === 1'b1) ? y : sel_tmp5_fu_284_p3);

assign sel_tmp11_fu_318_p2 = (or_cond4_fu_154_p2 ^ 1'b1);

assign sel_tmp12_fu_324_p2 = (sel_tmp1_fu_238_p2 & sel_tmp11_fu_318_p2);

assign sel_tmp14_demorgan_fu_292_p2 = (or_cond2_fu_130_p2 | or_cond3_fu_142_p2);

assign sel_tmp1_fu_238_p2 = (or_cond2_fu_130_p2 ^ or_cond3_fu_142_p2);

assign sel_tmp2_fu_244_p2 = (sel_tmp1_fu_238_p2 & or_cond4_fu_154_p2);

assign sel_tmp3_fu_250_p2 = (sel_tmp2_fu_244_p2 & brmerge_demorgan_fu_160_p2);

assign sel_tmp4_fu_256_p3 = ((sel_tmp3_fu_250_p2[0:0] === 1'b1) ? tmp_53_fu_216_p3 : res_fu_182_p1);

assign sel_tmp5_fu_284_p3 = ((or_cond2_fu_130_p2[0:0] === 1'b1) ? y : sel_tmp_fu_276_p3);

assign sel_tmp6_fu_298_p2 = (sel_tmp14_demorgan_fu_292_p2 ^ 1'b1);

assign sel_tmp7_fu_304_p2 = (or_cond4_fu_154_p2 & sel_tmp6_fu_298_p2);

assign sel_tmp8_fu_264_p2 = (brmerge_demorgan_fu_160_p2 ^ 1'b1);

assign sel_tmp9_fu_270_p2 = (sel_tmp2_fu_244_p2 & sel_tmp8_fu_264_p2);

assign sel_tmp_fu_276_p3 = ((sel_tmp9_fu_270_p2[0:0] === 1'b1) ? tmp_55_fu_230_p3 : sel_tmp4_fu_256_p3);

assign t_V_20_fu_42_p1 = x;

assign t_V_21_fu_68_p1 = y;

assign tmp22_fu_118_p2 = (tmp_47_fu_100_p2 & tmp_48_fu_106_p2);

assign tmp23_fu_124_p2 = (tmp_s_fu_94_p2 & tmp_49_fu_112_p2);

assign tmp_248_fu_198_p1 = t_V_21_fu_68_p1[30:0];

assign tmp_47_fu_100_p2 = ((loc_V_1_fu_64_p1 == ap_const_lv23_0) ? 1'b1 : 1'b0);

assign tmp_48_fu_106_p2 = ((loc_V_2_fu_80_p4 == ap_const_lv8_0) ? 1'b1 : 1'b0);

assign tmp_49_fu_112_p2 = ((loc_V_3_fu_90_p1 == ap_const_lv23_0) ? 1'b1 : 1'b0);

assign tmp_50_fu_136_p2 = ((loc_V_fu_54_p4 != ap_const_lv8_FF) ? 1'b1 : 1'b0);

assign tmp_51_fu_148_p2 = ((loc_V_2_fu_80_p4 != ap_const_lv8_FF) ? 1'b1 : 1'b0);

assign tmp_52_fu_210_p2 = (($signed(p_Result_34_fu_190_p3) < $signed(p_Result_35_fu_202_p3)) ? 1'b1 : 1'b0);

assign tmp_53_fu_216_p3 = ((tmp_52_fu_210_p2[0:0] === 1'b1) ? y : x);

assign tmp_54_fu_224_p2 = (($signed(t_V_20_fu_42_p1) < $signed(t_V_21_fu_68_p1)) ? 1'b1 : 1'b0);

assign tmp_55_fu_230_p3 = ((tmp_54_fu_224_p2[0:0] === 1'b1) ? x : y);

assign tmp_fu_186_p1 = t_V_20_fu_42_p1[30:0];

assign tmp_s_fu_94_p2 = ((loc_V_fu_54_p4 == ap_const_lv8_0) ? 1'b1 : 1'b0);

assign x_fp_sig_V_fu_166_p2 = (loc_V_1_fu_64_p1 | ap_const_lv23_400000);

endmodule //fminf
