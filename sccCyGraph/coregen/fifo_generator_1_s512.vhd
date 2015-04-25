--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: fifo_generator_1_s512.vhd
-- /___/   /\     Timestamp: Mon Aug 18 13:51:53 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl /home/ogamal/coregen/tmp/_cg/fifo_generator_1_s512.ngc /home/ogamal/coregen/tmp/_cg/fifo_generator_1_s512.vhd 
-- Device	: 5vlx330ff1760-2
-- Input file	: /home/ogamal/coregen/tmp/_cg/fifo_generator_1_s512.ngc
-- Output file	: /home/ogamal/coregen/tmp/_cg/fifo_generator_1_s512.vhd
-- # of Entities	: 1
-- Design Name	: fifo_generator_1_s512
-- Xilinx	: /remote/Xilinx/13.4/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity fifo_generator_1_s512 is
  port (
    clk : in STD_LOGIC := 'X'; 
    rd_en : in STD_LOGIC := 'X'; 
    almost_full : out STD_LOGIC; 
    rst : in STD_LOGIC := 'X'; 
    empty : out STD_LOGIC; 
    wr_en : in STD_LOGIC := 'X'; 
    valid : out STD_LOGIC; 
    full : out STD_LOGIC; 
    dout : out STD_LOGIC_VECTOR ( 0 downto 0 ); 
    din : in STD_LOGIC_VECTOR ( 0 downto 0 ) 
  );
end fifo_generator_1_s512;

architecture STRUCTURE of fifo_generator_1_s512 is
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_0_1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_0_2 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_0_3 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_1_1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_1_2 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_1_3 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_2_1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_2_2 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_2_3 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_3_1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_3_2 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_3_3 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_4_1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_4_2 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_4_3 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_5_1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_5_2 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_5_3 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_6_1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_6_2 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_6_3 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_7_1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_7_2 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_7_3 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_8_1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_8_2 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_8_3 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_grhf_rhf_ram_valid_d1_143 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_grhf_rhf_ram_valid_i_inv1_inv1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_comp0 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_comp1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_comb : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_i_167 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_comp0 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_comp1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_comp2 : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_afull_i : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_afull_i_or0000 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_comb : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_fb_i_201 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_i_202 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_Mmux_dout_mem_0_6_203 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_Mmux_dout_mem_0_7_204 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_Mmux_dout_mem_0_71_205 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_Mmux_dout_mem_0_8_206 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_241 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_242 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_243 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_244 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d1_248 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_249 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d3_250 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_251 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_252 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_253 : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsms_gsms_15_sms_gram_gsms_0_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  almost_full <= NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_afull_i;
  empty <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_i_167;
  valid <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_grhf_rhf_ram_valid_d1_143;
  full <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_i_202;
  dout(0) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(0);
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => rst,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d3_250,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_241
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d3 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_249,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d3_250
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_243,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_244
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_252,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_253
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d1_248,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_249
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_242,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_243
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg : FDPE
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_252,
      D => N0,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_251
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_251,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_252
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg : FDPE
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_243,
      D => N0,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_242
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => N0,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d1_248
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => N0,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => N0,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsms_sm1_gram_gsms_0_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(0),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(0),
      Q31 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(0),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(1),
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsms_gsms_1_sms_gram_gsms_0_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(0),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(1),
      Q31 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(1),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(1),
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsms_gsms_2_sms_gram_gsms_0_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(1),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(2),
      Q31 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(2),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(1),
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsms_gsms_3_sms_gram_gsms_0_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(2),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(3),
      Q31 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(3),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(1),
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsms_gsms_4_sms_gram_gsms_0_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(3),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(4),
      Q31 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(4),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(1),
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsms_gsms_5_sms_gram_gsms_0_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(4),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(5),
      Q31 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(5),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(1),
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsms_gsms_6_sms_gram_gsms_0_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(5),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(6),
      Q31 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(6),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(1),
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsms_gsms_7_sms_gram_gsms_0_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(6),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(7),
      Q31 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(7),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(1),
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsms_gsms_8_sms_gram_gsms_0_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(7),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(8),
      Q31 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(8),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(1),
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsms_gsms_9_sms_gram_gsms_0_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(8),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(9),
      Q31 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(9),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(1),
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsms_gsms_10_sms_gram_gsms_0_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(9),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(10),
      Q31 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(10),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(1),
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsms_gsms_11_sms_gram_gsms_0_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(10),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(11),
      Q31 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(11),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(1),
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsms_gsms_12_sms_gram_gsms_0_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(11),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(12),
      Q31 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(12),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(1),
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsms_gsms_13_sms_gram_gsms_0_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(12),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(13),
      Q31 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(13),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(1),
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsms_gsms_14_sms_gram_gsms_0_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(13),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(14),
      Q31 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(14),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(1),
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsms_gsms_15_sms_gram_gsms_0_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_shft_connect(14),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(15),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsms_gsms_15_sms_gram_gsms_0_gv5_srl32_Q31_UNCONNECTED,
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(1),
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_Mmux_dout_mem_0_6 : LUT6
    generic map(
      INIT => X"F7E6B3A2D5C49180"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(7),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(4),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(5),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_Mmux_dout_mem_0_6_203
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_Mmux_dout_mem_0_7 : LUT6
    generic map(
      INIT => X"F7E6B3A2D5C49180"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(0),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(1),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_Mmux_dout_mem_0_7_204
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_Mmux_dout_mem_0_71 : LUT6
    generic map(
      INIT => X"F7E6B3A2D5C49180"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(15),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(12),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(13),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(14),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_Mmux_dout_mem_0_71_205
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_Mmux_dout_mem_0_8 : LUT6
    generic map(
      INIT => X"F7E6B3A2D5C49180"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(11),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(8),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(9),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_2d(10),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_Mmux_dout_mem_0_8_206
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_grhf_rhf_ram_valid_i_inv1_inv1,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_afull_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_afull_i_or0000,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_249,
      Q => NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_afull_i
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_comb,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_249,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_i_202
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_fb_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_comb,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_249,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_fb_i_201
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_carrynet(3),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_comp2
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_carrynet(2),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_v1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_carrynet(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_carrynet(1),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_v1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_carrynet(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_carrynet(0),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_v1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_carrynet(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_v1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_carrynet(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_carrynet(3),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_comp1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_carrynet(2),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_v1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_carrynet(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_carrynet(1),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_v1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_carrynet(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_carrynet(0),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_v1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_carrynet(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_v1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_carrynet(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_carrynet(3),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_comp0
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_carrynet(2),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_v1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_carrynet(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_carrynet(1),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_v1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_carrynet(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_carrynet(0),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_v1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_carrynet(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_v1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_carrynet(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_v1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_carrynet(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_carrynet(0),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_v1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_carrynet(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_carrynet(1),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_v1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_carrynet(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_carrynet(2),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_v1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_carrynet(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_carrynet(3),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_comp1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_v1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_carrynet(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_carrynet(0),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_v1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_carrynet(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_carrynet(1),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_v1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_carrynet(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_carrynet(2),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_v1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_carrynet(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_carrynet(3),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_comp0
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_comb,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_comb,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_i_167
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_xor_8_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(7),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_8_2
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_xor_7_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(6),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_7_2
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy_7_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(6),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(7),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_xor_6_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(5),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_6_2
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy_6_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(5),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(6),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_xor_5_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(4),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_5_2
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy_5_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(4),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(5),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_xor_4_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(3),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_4_2
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy_4_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(3),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(4),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_xor_3_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(2),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_3_2
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy_3_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(2),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(3),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_xor_2_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(1),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_2_2
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy_2_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(1),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(2),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_xor_1_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(0),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_1_2
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy_1_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(0),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(1),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_xor_0_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_grhf_rhf_ram_valid_i_inv1_inv1,
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_0_2
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy_0_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_grhf_rhf_ram_valid_i_inv1_inv1,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_cy(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_xor_8_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(7),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_8_1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_xor_7_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(6),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_7_1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy_7_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(6),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(7),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_xor_6_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(5),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_6_1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy_6_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(5),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(6),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_xor_5_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(4),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_5_1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy_5_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(4),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(5),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_xor_4_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(3),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_4_1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy_4_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(3),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(4),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_xor_3_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(2),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_3_1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy_3_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(2),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(3),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_xor_2_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(1),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_2_1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy_2_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(1),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(2),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_xor_1_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(0),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_1_1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy_1_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(0),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(1),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_xor_0_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_grhf_rhf_ram_valid_i_inv1_inv1,
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_0_1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy_0_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_grhf_rhf_ram_valid_i_inv1_inv1,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(0),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_cy(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_xor_8_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(7),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_8_3
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_xor_7_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(6),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_7_3
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy_7_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(6),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(7),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_xor_6_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(5),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_6_3
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy_6_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(5),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(6),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_xor_5_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(4),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_5_3
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy_5_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(4),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(5),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_xor_4_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(3),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_4_3
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy_4_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(3),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(4),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_xor_3_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(2),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_3_3
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy_3_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(2),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(3),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_xor_2_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(1),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_2_3
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy_2_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(1),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(2),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_xor_1_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(0),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_1_3
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy_1_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(0),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(1),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_xor_0_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_grhf_rhf_ram_valid_i_inv1_inv1,
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_0_3
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy_0_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_grhf_rhf_ram_valid_i_inv1_inv1,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(0),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_cy(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_xor_8_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(7),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_xor_7_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(6),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy_7_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(6),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(7),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_xor_6_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(5),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy_6_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(5),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(6),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_xor_5_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(4),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy_5_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(4),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(5),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_xor_4_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(3),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy_4_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(3),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(4),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_xor_3_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(2),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy_3_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(2),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_xor_2_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(1),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy_2_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(1),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_xor_1_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(0),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy_1_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(0),
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(1),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_xor_0_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_grhf_rhf_ram_valid_i_inv1_inv1,
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy_0_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_grhf_rhf_ram_valid_i_inv1_inv1,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(0),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_cy(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_8_3,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_8_1,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_8_2,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_7_2,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_6_2,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_5_2,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_4_2,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_3_2,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_2_2,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_1_2,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_0_2,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_7_3,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_6_3,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_4_3,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_3_3,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_5_3,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_1_3,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_0_3,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_2_3,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_6_1,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_5_1,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_7_1,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_3_1,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_2_1,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_4_1,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_0_1,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count_1 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result_1_1,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count_8 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result(8),
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count_7 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result(7),
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count_6 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result(6),
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count_5 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result(5),
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count_4 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result(4),
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count_3 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result(3),
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count_2 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result(2),
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count_1 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result(1),
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Result(0),
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_grhf_rhf_ram_valid_d1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_grhf_rhf_ram_valid_i_inv1_inv1,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_grhf_rhf_ram_valid_d1_143
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_242,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_244,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_ram_wr_en_i1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_fb_i_201,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_v1_3_and00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_v1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_v1_3_and00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_v1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_v1_3_and00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_v1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_v1_3_and00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_v1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_v1_3_and00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_v1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_v1_2_and00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_v1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_v1_2_and00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_v1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_v1_2_and00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_v1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_v1_2_and00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_v1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_v1_2_and00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_v1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_v1_1_and00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_v1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_v1_1_and00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_v1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_v1_1_and00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_v1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_v1_1_and00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_v1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_v1_1_and00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_v1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_v1_0_and00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_v1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_v1_0_and00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_v1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_v1_0_and00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_v1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_v1_0_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_v1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_v1_0_and00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_v1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_afull_i_or00001 : LUT6
    generic map(
      INIT => X"080CAEAE080C0C0C"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      I1 => NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_afull_i,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_241,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_comp1,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_grhf_rhf_ram_valid_i_inv1_inv1,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_comp2,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_afull_i_or0000
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_grhf_rhf_ram_valid_i1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_grhf_rhf_ram_valid_i_inv1_inv1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_RD_PNTR_8_1 : LUT6
    generic map(
      INIT => X"F7E6B3A2D5C49180"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_Mmux_dout_mem_0_71_205,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_Mmux_dout_mem_0_7_204,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_Mmux_dout_mem_0_6_203,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_Mmux_dout_mem_0_8_206,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut_0_Q : LUT3
    generic map(
      INIT => X"59"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      I1 => rd_en,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut_0_Q : LUT3
    generic map(
      INIT => X"59"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(0),
      I1 => rd_en,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut_0_Q : LUT3
    generic map(
      INIT => X"59"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(0),
      I1 => rd_en,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut_0_Q : LUT3
    generic map(
      INIT => X"59"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(0),
      I1 => rd_en,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut_1_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut_1_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut_1_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut_1_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut_2_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut_2_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut_2_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut_2_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut_3_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut_3_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut_3_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut_3_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut_4_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut_4_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut_4_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut_4_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut_5_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut_5_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut_5_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut_5_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut_6_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut_6_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut_6_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut_6_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut_7_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut_7_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut_7_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut_7_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_comb1 : LUT6
    generic map(
      INIT => X"0702020227222222"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_fb_i_201,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_241,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_grhf_rhf_ram_valid_i_inv1_inv1,
      I3 => wr_en,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_comp1,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_comp0,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_comb
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_comb1 : LUT6
    generic map(
      INIT => X"AEFF8CCC8CCC8CCC"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_fb_i_201,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_comp0,
      I3 => wr_en,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_comp1,
      I5 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_comb
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut_8_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_lut(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut_8_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_Mcount_count_lut(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut_8_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_Mcount_count_lut(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut_8_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_Mcount_count_lut(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Mxor_cntr_en_Result1 : LUT4
    generic map(
      INIT => X"6530"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_166,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_fb_i_201,
      I2 => wr_en,
      I3 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_cntr_en
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_v1_4_not00001_INV_0 : INV
    port map (
      I => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c2_count(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_gaf_c2_v1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_v1_4_not00001_INV_0 : INV
    port map (
      I => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c1_v1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_v1_4_not00001_INV_0 : INV
    port map (
      I => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_c0_v1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_v1_4_not00001_INV_0 : INV
    port map (
      I => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c1_v1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_v1_4_not00001_INV_0 : INV
    port map (
      I => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_c0_v1(4)
    );

end STRUCTURE;

-- synthesis translate_on
