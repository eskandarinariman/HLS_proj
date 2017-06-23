// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module udp_rxEngineUdpChecksumVerificatio (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rxChecksum2rxEngine_V_din,
        rxChecksum2rxEngine_V_full_n,
        rxChecksum2rxEngine_V_write,
        strip2rxChecksum_V_data_V_dout,
        strip2rxChecksum_V_data_V_empty_n,
        strip2rxChecksum_V_data_V_read,
        strip2rxChecksum_V_keep_V_dout,
        strip2rxChecksum_V_keep_V_empty_n,
        strip2rxChecksum_V_keep_V_read,
        strip2rxChecksum_V_last_V_dout,
        strip2rxChecksum_V_last_V_empty_n,
        strip2rxChecksum_V_last_V_read
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm0_0 = 1'b1;
parameter    ap_ST_st2_fsm1_1 = 2'b10;
parameter    ap_ST_st3_fsm2_1 = 2'b10;
parameter    ap_ST_st0_fsm1_0 = 2'b1;
parameter    ap_ST_st0_fsm2_0 = 2'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv10_0 = 10'b0000000000;
parameter    ap_const_lv16_0 = 16'b0000000000000000;
parameter    ap_const_lv32_30 = 32'b110000;
parameter    ap_const_lv32_3F = 32'b111111;
parameter    ap_const_lv10_1 = 10'b1;
parameter    ap_const_lv10_3 = 10'b11;
parameter    ap_const_lv32_18 = 32'b11000;
parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv32_17 = 32'b10111;
parameter    ap_const_lv32_20 = 32'b100000;
parameter    ap_const_lv32_2F = 32'b101111;
parameter    ap_const_lv16_FFFF = 16'b1111111111111111;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [0:0] rxChecksum2rxEngine_V_din;
input   rxChecksum2rxEngine_V_full_n;
output   rxChecksum2rxEngine_V_write;
input  [63:0] strip2rxChecksum_V_data_V_dout;
input   strip2rxChecksum_V_data_V_empty_n;
output   strip2rxChecksum_V_data_V_read;
input  [7:0] strip2rxChecksum_V_keep_V_dout;
input   strip2rxChecksum_V_keep_V_empty_n;
output   strip2rxChecksum_V_keep_V_read;
input  [0:0] strip2rxChecksum_V_last_V_dout;
input   strip2rxChecksum_V_last_V_empty_n;
output   strip2rxChecksum_V_last_V_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rxChecksum2rxEngine_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm0 = 1'b1;
reg    ap_sig_cseq_ST_st1_fsm0_0;
reg    ap_sig_bdd_26;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm1 = 2'b1;
reg    ap_sig_cseq_ST_st0_fsm1_0;
reg    ap_sig_bdd_37;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm2 = 2'b1;
reg    ap_sig_cseq_ST_st0_fsm2_0;
reg    ap_sig_bdd_45;
wire    strip2rxChecksum_V_data_V0_status;
wire   [0:0] tmp_nbreadreq_fu_84_p5;
reg    ap_sig_bdd_60;
reg    ap_sig_cseq_ST_st2_fsm1_1;
reg    ap_sig_bdd_66;
reg   [0:0] tmp_reg_367;
reg   [0:0] ap_reg_ppstg_tmp_reg_367_pp0_it1;
reg   [0:0] tmp_last_V_reg_379;
reg   [0:0] ap_reg_ppstg_tmp_last_V_reg_379_pp0_it1;
reg    ap_sig_bdd_83;
reg    ap_sig_cseq_ST_st3_fsm2_1;
reg    ap_sig_bdd_88;
reg   [9:0] wordCounter_V = 10'b0000000000;
reg   [15:0] receivedChecksum_V = 16'b0000000000000000;
reg   [31:0] udpChecksum_V = 32'b00000000000000000000000000000000;
wire   [0:0] ap_reg_ppstg_tmp_reg_367_pp0_it0;
reg   [63:0] tmp_data_V_reg_371;
wire   [0:0] tmp_last_V_fu_140_p1;
wire   [0:0] ap_reg_ppstg_tmp_last_V_reg_379_pp0_it0;
wire   [16:0] tmp5_fu_166_p2;
reg   [16:0] tmp5_reg_383;
wire   [0:0] tmp_43_fu_183_p2;
wire   [15:0] tmp_48_fu_327_p2;
reg   [15:0] tmp_48_reg_392;
wire   [9:0] ap_reg_phiprechg_wordCounter_V_new_reg_113pp0_it0;
reg   [9:0] ap_reg_phiprechg_wordCounter_V_new_reg_113pp0_it1;
reg   [9:0] wordCounter_V_new_phi_fu_117_p4;
wire   [9:0] tmp_s_fu_176_p2;
wire   [31:0] ap_reg_phiprechg_udpChecksum_V_new_reg_124pp0_it0;
reg   [31:0] ap_reg_phiprechg_udpChecksum_V_new_reg_124pp0_it1;
reg   [31:0] udpChecksum_V_new_phi_fu_128_p4;
wire   [31:0] tmp_46_fu_270_p2;
reg    strip2rxChecksum_V_data_V0_update;
wire   [15:0] tmp_44_fu_207_p3;
wire   [15:0] p_Result_9_fu_144_p4;
wire   [15:0] tmp_92_fu_158_p1;
wire   [16:0] tmp_48_cast_fu_154_p1;
wire   [16:0] tmp_51_cast_fu_162_p1;
wire   [7:0] p_Result_s_34_fu_198_p4;
wire   [7:0] p_Result_s_fu_189_p4;
wire   [15:0] p_Result_10_fu_225_p4;
wire   [15:0] p_Result_11_fu_238_p4;
wire   [31:0] tmp_45_fu_234_p1;
wire   [17:0] tmp5_cast_fu_257_p1;
wire   [17:0] tmp_50_cast_fu_247_p1;
wire   [17:0] tmp4_fu_260_p2;
wire   [31:0] tmp4_cast_fu_266_p1;
wire   [31:0] tmp3_fu_251_p2;
wire   [15:0] tmp_93_fu_277_p1;
wire   [15:0] r_V_fu_285_p4;
wire   [16:0] tmp_59_cast_fu_281_p1;
wire   [16:0] r_V_cast_fu_295_p1;
wire   [15:0] tmp_94_fu_305_p1;
wire   [16:0] tmp_47_fu_299_p2;
wire   [0:0] tmp_96_fu_315_p3;
wire   [15:0] tmp_95_fu_309_p2;
wire   [15:0] r_V_3_fu_323_p1;
wire   [0:0] tmp_49_fu_345_p2;
wire   [0:0] tmp_50_fu_354_p2;
reg   [0:0] ap_NS_fsm0;
reg   [1:0] ap_NS_fsm1;
reg   [1:0] ap_NS_fsm2;
reg    ap_sig_bdd_153;
reg    ap_sig_bdd_95;




/// the current state (ap_CS_fsm0) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm0
    if (ap_rst == 1'b1) begin
        ap_CS_fsm0 <= ap_ST_st1_fsm0_0;
    end else begin
        ap_CS_fsm0 <= ap_NS_fsm0;
    end
end

/// the current state (ap_CS_fsm1) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm1
    if (ap_rst == 1'b1) begin
        ap_CS_fsm1 <= ap_ST_st0_fsm1_0;
    end else begin
        ap_CS_fsm1 <= ap_NS_fsm1;
    end
end

/// the current state (ap_CS_fsm2) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm2
    if (ap_rst == 1'b1) begin
        ap_CS_fsm2 <= ap_ST_st0_fsm2_0;
    end else begin
        ap_CS_fsm2 <= ap_NS_fsm2;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_83))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (ap_sig_bdd_95) begin
        if (ap_sig_bdd_153) begin
            ap_reg_phiprechg_udpChecksum_V_new_reg_124pp0_it1 <= ap_const_lv32_0;
        end else if ((ap_true == ap_true)) begin
            ap_reg_phiprechg_udpChecksum_V_new_reg_124pp0_it1 <= ap_reg_phiprechg_udpChecksum_V_new_reg_124pp0_it0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (ap_sig_bdd_95) begin
        if (ap_sig_bdd_153) begin
            ap_reg_phiprechg_wordCounter_V_new_reg_113pp0_it1 <= ap_const_lv10_0;
        end else if ((ap_true == ap_true)) begin
            ap_reg_phiprechg_wordCounter_V_new_reg_113pp0_it1 <= ap_reg_phiprechg_wordCounter_V_new_reg_113pp0_it0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | (ap_sig_bdd_83 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))))) begin
        ap_reg_ppstg_tmp_last_V_reg_379_pp0_it1 <= tmp_last_V_reg_379;
        ap_reg_ppstg_tmp_reg_367_pp0_it1 <= tmp_reg_367;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | (ap_sig_bdd_83 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_367_pp0_it0) & ~(ap_const_lv1_0 == tmp_43_fu_183_p2))) begin
        receivedChecksum_V <= tmp_44_fu_207_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_84_p5 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_60 | (ap_sig_bdd_83 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))))) begin
        tmp5_reg_383 <= tmp5_fu_166_p2;
        tmp_data_V_reg_371 <= strip2rxChecksum_V_data_V_dout;
        tmp_last_V_reg_379 <= strip2rxChecksum_V_last_V_dout;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | (ap_sig_bdd_83 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_367_pp0_it0) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_last_V_reg_379_pp0_it0))) begin
        tmp_48_reg_392 <= tmp_48_fu_327_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_60 | (ap_sig_bdd_83 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))))) begin
        tmp_reg_367 <= tmp_nbreadreq_fu_84_p5;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | (ap_sig_bdd_83 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_367_pp0_it0))) begin
        udpChecksum_V <= udpChecksum_V_new_phi_fu_128_p4;
        wordCounter_V <= wordCounter_V_new_phi_fu_117_p4;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_bdd_83 or ap_sig_cseq_ST_st3_fsm2_1)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_83)))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm0_0 or ap_sig_cseq_ST_st0_fsm1_0 or ap_sig_cseq_ST_st0_fsm2_0)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (ap_const_logic_1 == ap_sig_cseq_ST_st0_fsm1_0) & (ap_const_logic_1 == ap_sig_cseq_ST_st0_fsm2_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or ap_sig_bdd_60 or ap_sig_bdd_83 or ap_sig_cseq_ST_st3_fsm2_1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_60 | (ap_sig_bdd_83 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st0_fsm1_0 assign process. ///
always @ (ap_sig_bdd_37)
begin
    if (ap_sig_bdd_37) begin
        ap_sig_cseq_ST_st0_fsm1_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st0_fsm1_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st0_fsm2_0 assign process. ///
always @ (ap_sig_bdd_45)
begin
    if (ap_sig_bdd_45) begin
        ap_sig_cseq_ST_st0_fsm2_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st0_fsm2_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm0_0 assign process. ///
always @ (ap_sig_bdd_26)
begin
    if (ap_sig_bdd_26) begin
        ap_sig_cseq_ST_st1_fsm0_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm0_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm1_1 assign process. ///
always @ (ap_sig_bdd_66)
begin
    if (ap_sig_bdd_66) begin
        ap_sig_cseq_ST_st2_fsm1_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm1_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st3_fsm2_1 assign process. ///
always @ (ap_sig_bdd_88)
begin
    if (ap_sig_bdd_88) begin
        ap_sig_cseq_ST_st3_fsm2_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st3_fsm2_1 = ap_const_logic_0;
    end
end

/// rxChecksum2rxEngine_V_write assign process. ///
always @ (ap_done_reg or ap_reg_ppstg_tmp_reg_367_pp0_it1 or ap_reg_ppstg_tmp_last_V_reg_379_pp0_it1 or ap_sig_bdd_83 or ap_sig_cseq_ST_st3_fsm2_1)
begin
    if ((~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_367_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_last_V_reg_379_pp0_it1) & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_83))) begin
        rxChecksum2rxEngine_V_write = ap_const_logic_1;
    end else begin
        rxChecksum2rxEngine_V_write = ap_const_logic_0;
    end
end

/// strip2rxChecksum_V_data_V0_update assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or tmp_nbreadreq_fu_84_p5 or ap_sig_bdd_60 or ap_sig_bdd_83 or ap_sig_cseq_ST_st3_fsm2_1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_84_p5 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_60 | (ap_sig_bdd_83 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))))) begin
        strip2rxChecksum_V_data_V0_update = ap_const_logic_1;
    end else begin
        strip2rxChecksum_V_data_V0_update = ap_const_logic_0;
    end
end

/// udpChecksum_V_new_phi_fu_128_p4 assign process. ///
always @ (ap_sig_cseq_ST_st2_fsm1_1 or ap_reg_ppstg_tmp_reg_367_pp0_it0 or ap_reg_ppstg_tmp_last_V_reg_379_pp0_it0 or ap_reg_phiprechg_udpChecksum_V_new_reg_124pp0_it1 or tmp_46_fu_270_p2)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_367_pp0_it0) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_last_V_reg_379_pp0_it0))) begin
        udpChecksum_V_new_phi_fu_128_p4 = tmp_46_fu_270_p2;
    end else begin
        udpChecksum_V_new_phi_fu_128_p4 = ap_reg_phiprechg_udpChecksum_V_new_reg_124pp0_it1;
    end
end

/// wordCounter_V_new_phi_fu_117_p4 assign process. ///
always @ (ap_sig_cseq_ST_st2_fsm1_1 or ap_reg_ppstg_tmp_reg_367_pp0_it0 or ap_reg_ppstg_tmp_last_V_reg_379_pp0_it0 or ap_reg_phiprechg_wordCounter_V_new_reg_113pp0_it1 or tmp_s_fu_176_p2)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_367_pp0_it0) & (ap_const_lv1_0 == ap_reg_ppstg_tmp_last_V_reg_379_pp0_it0))) begin
        wordCounter_V_new_phi_fu_117_p4 = tmp_s_fu_176_p2;
    end else begin
        wordCounter_V_new_phi_fu_117_p4 = ap_reg_phiprechg_wordCounter_V_new_reg_113pp0_it1;
    end
end
/// the next state (ap_NS_fsm2) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm2 or ap_sig_cseq_ST_st2_fsm1_1 or ap_sig_bdd_83 or ap_sig_cseq_ST_st3_fsm2_1)
begin
    case (ap_CS_fsm2)
        ap_ST_st3_fsm2_1 : 
        begin
            if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_83))) begin
                ap_NS_fsm2 = ap_ST_st3_fsm2_1;
            end else if ((~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_83) & ~(ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))) begin
                ap_NS_fsm2 = ap_ST_st0_fsm2_0;
            end else begin
                ap_NS_fsm2 = ap_ST_st3_fsm2_1;
            end
        end
        ap_ST_st0_fsm2_0 : 
        begin
            if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | (ap_sig_bdd_83 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))))) begin
                ap_NS_fsm2 = ap_ST_st3_fsm2_1;
            end else begin
                ap_NS_fsm2 = ap_ST_st0_fsm2_0;
            end
        end
        default : 
        begin
            ap_NS_fsm2 = 'bx;
        end
    endcase
end

/// the next state (ap_NS_fsm1) of the state machine. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or ap_CS_fsm1 or ap_sig_bdd_60 or ap_sig_bdd_83 or ap_sig_cseq_ST_st3_fsm2_1)
begin
    case (ap_CS_fsm1)
        ap_ST_st2_fsm1_1 : 
        begin
            if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | (ap_sig_bdd_83 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))) & ~ap_sig_bdd_60)) begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end else if ((~((ap_done_reg == ap_const_logic_1) | (ap_sig_bdd_83 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))) & (~(ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ap_sig_bdd_60)))) begin
                ap_NS_fsm1 = ap_ST_st0_fsm1_0;
            end else begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end
        end
        ap_ST_st0_fsm1_0 : 
        begin
            if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_60 | (ap_sig_bdd_83 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))))) begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end else begin
                ap_NS_fsm1 = ap_ST_st0_fsm1_0;
            end
        end
        default : 
        begin
            ap_NS_fsm1 = 'bx;
        end
    endcase
end

/// the next state (ap_NS_fsm0) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm0 or ap_sig_bdd_60 or ap_sig_bdd_83 or ap_sig_cseq_ST_st3_fsm2_1)
begin
    case (ap_CS_fsm0)
        ap_ST_st1_fsm0_0 : 
        begin
            ap_NS_fsm0 = ap_ST_st1_fsm0_0;
        end
        default : 
        begin
            ap_NS_fsm0 = 'bx;
        end
    endcase
end

assign ap_reg_phiprechg_udpChecksum_V_new_reg_124pp0_it0 = 'bx;
assign ap_reg_phiprechg_wordCounter_V_new_reg_113pp0_it0 = 'bx;
assign ap_reg_ppstg_tmp_last_V_reg_379_pp0_it0 = tmp_last_V_reg_379;
assign ap_reg_ppstg_tmp_reg_367_pp0_it0 = tmp_reg_367;

/// ap_sig_bdd_153 assign process. ///
always @ (tmp_nbreadreq_fu_84_p5 or tmp_last_V_fu_140_p1)
begin
    ap_sig_bdd_153 = (~(tmp_nbreadreq_fu_84_p5 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_last_V_fu_140_p1));
end

/// ap_sig_bdd_26 assign process. ///
always @ (ap_CS_fsm0)
begin
    ap_sig_bdd_26 = (ap_CS_fsm0[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_37 assign process. ///
always @ (ap_CS_fsm1)
begin
    ap_sig_bdd_37 = (ap_const_lv1_1 == ap_CS_fsm1[ap_const_lv32_0]);
end

/// ap_sig_bdd_45 assign process. ///
always @ (ap_CS_fsm2)
begin
    ap_sig_bdd_45 = (ap_const_lv1_1 == ap_CS_fsm2[ap_const_lv32_0]);
end

/// ap_sig_bdd_60 assign process. ///
always @ (ap_start or ap_done_reg or strip2rxChecksum_V_data_V0_status or tmp_nbreadreq_fu_84_p5)
begin
    ap_sig_bdd_60 = (((strip2rxChecksum_V_data_V0_status == ap_const_logic_0) & ~(tmp_nbreadreq_fu_84_p5 == ap_const_lv1_0)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_66 assign process. ///
always @ (ap_CS_fsm1)
begin
    ap_sig_bdd_66 = (ap_const_lv1_1 == ap_CS_fsm1[ap_const_lv32_1]);
end

/// ap_sig_bdd_83 assign process. ///
always @ (rxChecksum2rxEngine_V_full_n or ap_reg_ppstg_tmp_reg_367_pp0_it1 or ap_reg_ppstg_tmp_last_V_reg_379_pp0_it1)
begin
    ap_sig_bdd_83 = ((rxChecksum2rxEngine_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_367_pp0_it1) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_last_V_reg_379_pp0_it1));
end

/// ap_sig_bdd_88 assign process. ///
always @ (ap_CS_fsm2)
begin
    ap_sig_bdd_88 = (ap_const_lv1_1 == ap_CS_fsm2[ap_const_lv32_1]);
end

/// ap_sig_bdd_95 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or ap_sig_bdd_60 or ap_sig_bdd_83 or ap_sig_cseq_ST_st3_fsm2_1)
begin
    ap_sig_bdd_95 = ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_60 | (ap_sig_bdd_83 & (ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm2_1))));
end
assign p_Result_10_fu_225_p4 = {{tmp_data_V_reg_371[ap_const_lv32_2F : ap_const_lv32_20]}};
assign p_Result_11_fu_238_p4 = {{tmp_data_V_reg_371[ap_const_lv32_1F : ap_const_lv32_10]}};
assign p_Result_9_fu_144_p4 = {{strip2rxChecksum_V_data_V_dout[ap_const_lv32_3F : ap_const_lv32_30]}};
assign p_Result_s_34_fu_198_p4 = {{tmp_data_V_reg_371[ap_const_lv32_17 : ap_const_lv32_10]}};
assign p_Result_s_fu_189_p4 = {{tmp_data_V_reg_371[ap_const_lv32_1F : ap_const_lv32_18]}};
assign r_V_3_fu_323_p1 = tmp_96_fu_315_p3;
assign r_V_cast_fu_295_p1 = r_V_fu_285_p4;
assign r_V_fu_285_p4 = {{tmp_46_fu_270_p2[ap_const_lv32_1F : ap_const_lv32_10]}};
assign rxChecksum2rxEngine_V_din = (tmp_49_fu_345_p2 | tmp_50_fu_354_p2);
assign strip2rxChecksum_V_data_V0_status = (strip2rxChecksum_V_data_V_empty_n & strip2rxChecksum_V_keep_V_empty_n & strip2rxChecksum_V_last_V_empty_n);
assign strip2rxChecksum_V_data_V_read = strip2rxChecksum_V_data_V0_update;
assign strip2rxChecksum_V_keep_V_read = strip2rxChecksum_V_data_V0_update;
assign strip2rxChecksum_V_last_V_read = strip2rxChecksum_V_data_V0_update;
assign tmp3_fu_251_p2 = (udpChecksum_V + tmp_45_fu_234_p1);
assign tmp4_cast_fu_266_p1 = tmp4_fu_260_p2;
assign tmp4_fu_260_p2 = (tmp5_cast_fu_257_p1 + tmp_50_cast_fu_247_p1);
assign tmp5_cast_fu_257_p1 = tmp5_reg_383;
assign tmp5_fu_166_p2 = (tmp_48_cast_fu_154_p1 + tmp_51_cast_fu_162_p1);
assign tmp_43_fu_183_p2 = (tmp_s_fu_176_p2 == ap_const_lv10_3? 1'b1: 1'b0);
assign tmp_44_fu_207_p3 = {{p_Result_s_34_fu_198_p4}, {p_Result_s_fu_189_p4}};
assign tmp_45_fu_234_p1 = p_Result_10_fu_225_p4;
assign tmp_46_fu_270_p2 = (tmp4_cast_fu_266_p1 + tmp3_fu_251_p2);
assign tmp_47_fu_299_p2 = (tmp_59_cast_fu_281_p1 + r_V_cast_fu_295_p1);
assign tmp_48_cast_fu_154_p1 = p_Result_9_fu_144_p4;
assign tmp_48_fu_327_p2 = (tmp_95_fu_309_p2 + r_V_3_fu_323_p1);
assign tmp_49_fu_345_p2 = (tmp_48_reg_392 == ap_const_lv16_FFFF? 1'b1: 1'b0);
assign tmp_50_cast_fu_247_p1 = p_Result_11_fu_238_p4;
assign tmp_50_fu_354_p2 = (receivedChecksum_V == ap_const_lv16_0? 1'b1: 1'b0);
assign tmp_51_cast_fu_162_p1 = tmp_92_fu_158_p1;
assign tmp_59_cast_fu_281_p1 = tmp_93_fu_277_p1;
assign tmp_92_fu_158_p1 = strip2rxChecksum_V_data_V_dout[15:0];
assign tmp_93_fu_277_p1 = tmp_46_fu_270_p2[15:0];
assign tmp_94_fu_305_p1 = tmp_46_fu_270_p2[15:0];
assign tmp_95_fu_309_p2 = (tmp_94_fu_305_p1 + r_V_fu_285_p4);
assign tmp_96_fu_315_p3 = tmp_47_fu_299_p2[ap_const_lv32_10];
assign tmp_last_V_fu_140_p1 = strip2rxChecksum_V_last_V_dout;
assign tmp_nbreadreq_fu_84_p5 = (strip2rxChecksum_V_data_V_empty_n & strip2rxChecksum_V_keep_V_empty_n & strip2rxChecksum_V_last_V_empty_n);
assign tmp_s_fu_176_p2 = (wordCounter_V + ap_const_lv10_1);


endmodule //udp_rxEngineUdpChecksumVerificatio

