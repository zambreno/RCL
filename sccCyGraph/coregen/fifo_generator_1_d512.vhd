--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: fifo_generator_1_d512.vhd
-- /___/   /\     Timestamp: Mon Aug 18 13:21:56 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl /home/ogamal/coregen/tmp/_cg/fifo_generator_1_d512.ngc /home/ogamal/coregen/tmp/_cg/fifo_generator_1_d512.vhd 
-- Device	: 5vlx330ff1760-2
-- Input file	: /home/ogamal/coregen/tmp/_cg/fifo_generator_1_d512.ngc
-- Output file	: /home/ogamal/coregen/tmp/_cg/fifo_generator_1_d512.vhd
-- # of Entities	: 1
-- Design Name	: fifo_generator_1_d512
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

entity fifo_generator_1_d512 is
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
end fifo_generator_1_d512;

architecture STRUCTURE of fifo_generator_1_d512 is
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grhf_rhf_ram_valid_d1_6 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grhf_rhf_ram_valid_i : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_comp0 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_comp1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_28 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000 : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_i : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_1_rt_33 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_2_rt_35 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_3_rt_37 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_4_rt_39 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_5_rt_41 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_6_rt_43 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_7_rt_45 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_8_rt_47 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_comp0 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_comp1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_comp2 : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or0000 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i_108 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_i_109 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_1_rt_112 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_2_rt_114 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_3_rt_116 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_4_rt_118 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_5_rt_120 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_6_rt_122 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_7_rt_124 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_8_rt_126 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM_index0001 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_167 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_168 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_169 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_170 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d1_174 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_175 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d3_176 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_177 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_178 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_179 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb : STD_LOGIC; 
  signal write_ctrl_187 : STD_LOGIC; 
  signal write_ctrl1_188 : STD_LOGIC; 
  signal write_ctrl2_189 : STD_LOGIC; 
  signal write_ctrl3_190 : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM3_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM1_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM2_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM4_SPO_UNCONNECTED : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg : STD_LOGIC_VECTOR ( 1 downto 1 ); 
begin
  almost_full <= NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i;
  empty <= NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_i;
  valid <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grhf_rhf_ram_valid_d1_6;
  full <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_i_109;
  dout(0) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(0);
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM_index0001,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grhf_rhf_ram_valid_d1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grhf_rhf_ram_valid_i,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grhf_rhf_ram_valid_d1_6
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM3 : RAM128X1D
    port map (
      WCLK => clk,
      D => din(0),
      WE => write_ctrl2_189,
      SPO => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM3_SPO_UNCONNECTED,
      DPO => N11,
      A(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(6),
      A(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(5),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      DPRA(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(6),
      DPRA(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(5),
      DPRA(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4),
      DPRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      DPRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      DPRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      DPRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM1 : RAM128X1D
    port map (
      WCLK => clk,
      D => din(0),
      WE => write_ctrl_187,
      SPO => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM1_SPO_UNCONNECTED,
      DPO => N7,
      A(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(6),
      A(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(5),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      DPRA(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(6),
      DPRA(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(5),
      DPRA(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4),
      DPRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      DPRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      DPRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      DPRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM2 : RAM128X1D
    port map (
      WCLK => clk,
      D => din(0),
      WE => write_ctrl1_188,
      SPO => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM2_SPO_UNCONNECTED,
      DPO => N9,
      A(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(6),
      A(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(5),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      DPRA(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(6),
      DPRA(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(5),
      DPRA(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4),
      DPRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      DPRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      DPRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      DPRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM4 : RAM128X1D
    port map (
      WCLK => clk,
      D => din(0),
      WE => write_ctrl3_190,
      SPO => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM4_SPO_UNCONNECTED,
      DPO => N13,
      A(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(6),
      A(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(5),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      DPRA(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(6),
      DPRA(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(5),
      DPRA(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4),
      DPRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      DPRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      DPRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      DPRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      Q => NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_i
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_28
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => rst,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d3_176,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_167
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d3 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_175,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d3_176
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_169,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_170
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_178,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_179
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d1_174,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_175
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_168,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_169
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg : FDPE
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_178,
      D => N0,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_177
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_177,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_178
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg : FDPE
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_169,
      D => N0,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_168
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => N0,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d1_174
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => N0,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => N0,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg_1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => N0,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_8_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(7),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_8_rt_47,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_7_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(6),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_7_rt_45,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_7_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(6),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_7_rt_45,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_6_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(5),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_6_rt_43,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_6_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(5),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_6_rt_43,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_5_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(4),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_5_rt_41,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_5_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(4),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_5_rt_41,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_4_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(3),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_4_rt_39,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_4_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(3),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_4_rt_39,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_3_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(2),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_3_rt_37,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_3_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(2),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_3_rt_37,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_2_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(1),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_2_rt_35,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_2_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(1),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_2_rt_35,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_1_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(0),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_1_rt_33,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_1_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(0),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_1_rt_33,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_lut(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_lut(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(0),
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_carrynet(3),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_comp0
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_carrynet(2),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_v1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_carrynet(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_carrynet(1),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_v1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_carrynet(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_carrynet(0),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_v1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_carrynet(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_v1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_carrynet(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_carrynet(3),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_comp1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_carrynet(2),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_v1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_carrynet(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_carrynet(1),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_v1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_carrynet(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_carrynet(0),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_v1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_carrynet(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_v1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_carrynet(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(0),
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_8_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(7),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_8_rt_126,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_7_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(6),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_7_rt_124,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_7_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(6),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_7_rt_124,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_6_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(5),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_6_rt_122,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_6_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(5),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_6_rt_122,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_5_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(4),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_5_rt_120,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_5_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(4),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_5_rt_120,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_4_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(3),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_4_rt_118,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_4_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(3),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_4_rt_118,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_3_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(2),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_3_rt_116,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_3_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(2),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_3_rt_116,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_2_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(1),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_2_rt_114,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_2_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(1),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_2_rt_114,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_1_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(0),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_1_rt_112,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_1_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(0),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_1_rt_112,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_lut(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_lut(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_1 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(1),
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_v1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_carrynet(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_carrynet(0),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_v1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_carrynet(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_carrynet(1),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_v1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_carrynet(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_carrynet(2),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_v1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_carrynet(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_carrynet(3),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_comp0
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_v1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_carrynet(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_carrynet(0),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_v1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_carrynet(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_carrynet(1),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_v1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_carrynet(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_carrynet(2),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_v1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_carrynet(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_carrynet(3),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_comp1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_v1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_carrynet(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_carrynet(0),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_v1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_carrynet(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_carrynet(1),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_v1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_carrynet(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_carrynet(2),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_v1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_carrynet(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_carrynet(3),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_comp2
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_175,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i_108
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_175,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_i_109
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or0000,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_175,
      Q => NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_179,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_177,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_170,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_168,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grhf_rhf_ram_valid_i1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_i,
      I1 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grhf_rhf_ram_valid_i
    );
  inst_LPM_MUX31 : LUT6
    generic map(
      INIT => X"EFE5EAE04F454A40"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(8),
      I1 => N9,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(7),
      I3 => N11,
      I4 => N7,
      I5 => N13,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM_index0001
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_28,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_ram_wr_en_i1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i_108,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_v1_4_not00001 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_v1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_v1_4_not00001 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_v1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_v1_4_not00001 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_v1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_v1_4_not00001 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_v1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_v1_4_not00001 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_v1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_v1_3_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(6),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_v1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_v1_3_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(6),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_v1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_v1_3_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(6),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_v1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_v1_3_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(6),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_v1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_v1_3_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(6),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_v1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_v1_2_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_v1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_v1_2_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_v1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_v1_2_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_v1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_v1_2_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_v1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_v1_2_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_v1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_v1_1_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_v1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_v1_1_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_v1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_v1_1_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_v1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_v1_1_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_v1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_v1_1_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_v1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_v1_0_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_gaf_c2_v1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_v1_0_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_v1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_v1_0_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c0_v1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_v1_0_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(0),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c2_v1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_v1_0_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_c1_v1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or00001 : LUT6
    generic map(
      INIT => X"FA32F030FAF2F0F0"
    )
    port map (
      I0 => rd_en,
      I1 => wr_en,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_28,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i_108,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_comp1,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_comp0,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or00001 : LUT6
    generic map(
      INIT => X"2F0222022F222222"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_167,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_comp2,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_comp1,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or0000
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_7_rt_45
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_6_rt_43
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_5_rt_41
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_4_rt_39
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_3_rt_37
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_2_rt_35
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_1_rt_33
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_7_rt_124
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_6_rt_122
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_5_rt_120
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_4_rt_118
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_3_rt_116
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_2_rt_114
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_1_rt_112
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_8_rt_47
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_8_rt_126
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb1 : LUT6
    generic map(
      INIT => X"0702020227222222"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i_108,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_167,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      I3 => wr_en,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_comp1,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_comp0,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb
    );
  write_ctrl : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i_108,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(8),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(7),
      O => write_ctrl_187
    );
  write_ctrl1 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i_108,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(8),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(7),
      O => write_ctrl1_188
    );
  write_ctrl2 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i_108,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(7),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(8),
      O => write_ctrl2_189
    );
  write_ctrl3 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i_108,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(8),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(7),
      O => write_ctrl3_190
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_lut_0_INV_0 : INV
    port map (
      I => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_lut(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_lut_0_INV_0 : INV
    port map (
      I => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_lut(0)
    );

end STRUCTURE;

-- synthesis translate_on
