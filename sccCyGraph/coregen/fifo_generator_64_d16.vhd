--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: fifo_generator_64_d16.vhd
-- /___/   /\     Timestamp: Wed Jul 23 15:53:31 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl /home/ogamal/coregen/tmp/_cg/fifo_generator_64_d16.ngc /home/ogamal/coregen/tmp/_cg/fifo_generator_64_d16.vhd 
-- Device	: 5vlx330ff1760-2
-- Input file	: /home/ogamal/coregen/tmp/_cg/fifo_generator_64_d16.ngc
-- Output file	: /home/ogamal/coregen/tmp/_cg/fifo_generator_64_d16.vhd
-- # of Entities	: 1
-- Design Name	: fifo_generator_64_d16
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

entity fifo_generator_64_d16 is
  port (
    clk : in STD_LOGIC := 'X'; 
    rd_en : in STD_LOGIC := 'X'; 
    almost_full : out STD_LOGIC; 
    rst : in STD_LOGIC := 'X'; 
    empty : out STD_LOGIC; 
    wr_en : in STD_LOGIC := 'X'; 
    valid : out STD_LOGIC; 
    full : out STD_LOGIC; 
    dout : out STD_LOGIC_VECTOR ( 63 downto 0 ); 
    din : in STD_LOGIC_VECTOR ( 63 downto 0 ) 
  );
end fifo_generator_64_d16;

architecture STRUCTURE of fifo_generator_64_d16 is
  signal N0 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grhf_rhf_ram_valid_d1_12 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grhf_rhf_ram_valid_i : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_14 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000014_16 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000023_17 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000056_18 : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_i : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_3_1_28 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_comp1 : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or0000 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or000010_32 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or000026_33 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or000081_34 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i_36 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_i_37 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_180 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_181 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_182 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_183 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d1_187 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_188 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d3_189 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_190 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_191 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_192 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM114_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM113_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM112_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM111_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM10_DOD_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM10_DOD_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM8_DOD_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM8_DOD_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM7_DOD_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM7_DOD_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM9_DOD_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM9_DOD_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM5_DOD_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM5_DOD_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM4_DOD_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM4_DOD_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM6_DOD_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM6_DOD_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM2_DOD_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM2_DOD_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM1_DOD_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM1_DOD_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM3_DOD_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM3_DOD_0_UNCONNECTED : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000 : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg : STD_LOGIC_VECTOR ( 1 downto 1 ); 
begin
  almost_full <= NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i;
  empty <= NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_i;
  valid <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grhf_rhf_ram_valid_d1_12;
  full <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_i_37;
  dout(63) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(63);
  dout(62) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(62);
  dout(61) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(61);
  dout(60) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(60);
  dout(59) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(59);
  dout(58) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(58);
  dout(57) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(57);
  dout(56) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(56);
  dout(55) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(55);
  dout(54) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(54);
  dout(53) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(53);
  dout(52) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(52);
  dout(51) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(51);
  dout(50) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(50);
  dout(49) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(49);
  dout(48) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(48);
  dout(47) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(47);
  dout(46) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(46);
  dout(45) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(45);
  dout(44) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(44);
  dout(43) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(43);
  dout(42) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(42);
  dout(41) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(41);
  dout(40) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(40);
  dout(39) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(39);
  dout(38) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(38);
  dout(37) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(37);
  dout(36) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(36);
  dout(35) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(35);
  dout(34) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(34);
  dout(33) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(33);
  dout(32) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(32);
  dout(31) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(31);
  dout(30) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(30);
  dout(29) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(29);
  dout(28) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(28);
  dout(27) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(27);
  dout(26) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(26);
  dout(25) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(25);
  dout(24) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(24);
  dout(23) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(23);
  dout(22) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(22);
  dout(21) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(21);
  dout(20) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(20);
  dout(19) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(19);
  dout(18) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(18);
  dout(17) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(17);
  dout(16) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(16);
  dout(15) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(15);
  dout(14) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(14);
  dout(13) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(13);
  dout(12) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(12);
  dout(11) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(11);
  dout(10) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(10);
  dout(9) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(9);
  dout(8) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(8);
  dout(7) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(7);
  dout(6) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(6);
  dout(5) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(5);
  dout(4) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(4);
  dout(3) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(3);
  dout(2) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(2);
  dout(1) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(1);
  dout(0) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(0);
  XST_GND : GND
    port map (
      G => N0
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grhf_rhf_ram_valid_d1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grhf_rhf_ram_valid_i,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grhf_rhf_ram_valid_d1_12
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
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => Result(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      D => Result(0),
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => Result(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => Result_0_1,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_1 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      D => Result_1_1,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => Result_2_1,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => Result(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => Result_3_1,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(3)
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
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_14
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_188,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i_36
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_188,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_i_37
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or0000,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_188,
      Q => NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => rst,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d3_189,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_180
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d3 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_188,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d3_189
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_182,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_183
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_191,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_192
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d1_187,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_188
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_181,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_182
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg : FDPE
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_191,
      D => N0,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_190
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_190,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_191
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg : FDPE
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_182,
      D => N0,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_181
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => N0,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d1_187
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
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM114 : RAM32X1D
    port map (
      A0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      A1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      A2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      A3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      A4 => N0,
      D => din(63),
      DPRA0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      DPRA1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      DPRA2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      DPRA3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      DPRA4 => N0,
      WCLK => clk,
      WE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      SPO => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM114_SPO_UNCONNECTED,
      DPO => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(63)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM113 : RAM32X1D
    port map (
      A0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      A1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      A2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      A3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      A4 => N0,
      D => din(62),
      DPRA0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      DPRA1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      DPRA2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      DPRA3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      DPRA4 => N0,
      WCLK => clk,
      WE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      SPO => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM113_SPO_UNCONNECTED,
      DPO => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(62)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM112 : RAM32X1D
    port map (
      A0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      A1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      A2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      A3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      A4 => N0,
      D => din(61),
      DPRA0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      DPRA1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      DPRA2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      DPRA3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      DPRA4 => N0,
      WCLK => clk,
      WE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      SPO => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM112_SPO_UNCONNECTED,
      DPO => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(61)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM111 : RAM32X1D
    port map (
      A0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      A1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      A2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      A3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      A4 => N0,
      D => din(60),
      DPRA0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      DPRA1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      DPRA2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      DPRA3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      DPRA4 => N0,
      WCLK => clk,
      WE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      SPO => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM111_SPO_UNCONNECTED,
      DPO => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(60)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM10 : RAM32M
    generic map(
      INIT_C => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_A => X"0000000000000000"
    )
    port map (
      WCLK => clk,
      WE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      DIA(1) => din(55),
      DIA(0) => din(54),
      DIB(1) => din(57),
      DIB(0) => din(56),
      DIC(1) => din(59),
      DIC(0) => din(58),
      DID(1) => N0,
      DID(0) => N0,
      ADDRA(4) => N0,
      ADDRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRB(4) => N0,
      ADDRB(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRB(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRB(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRB(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRC(4) => N0,
      ADDRC(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRC(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRC(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRC(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRD(4) => N0,
      ADDRD(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      ADDRD(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      ADDRD(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      ADDRD(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      DOA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(55),
      DOA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(54),
      DOB(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(57),
      DOB(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(56),
      DOC(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(59),
      DOC(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(58),
      DOD(1) => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM10_DOD_1_UNCONNECTED,
      DOD(0) => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM10_DOD_0_UNCONNECTED
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM8 : RAM32M
    generic map(
      INIT_C => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_A => X"0000000000000000"
    )
    port map (
      WCLK => clk,
      WE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      DIA(1) => din(43),
      DIA(0) => din(42),
      DIB(1) => din(45),
      DIB(0) => din(44),
      DIC(1) => din(47),
      DIC(0) => din(46),
      DID(1) => N0,
      DID(0) => N0,
      ADDRA(4) => N0,
      ADDRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRB(4) => N0,
      ADDRB(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRB(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRB(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRB(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRC(4) => N0,
      ADDRC(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRC(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRC(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRC(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRD(4) => N0,
      ADDRD(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      ADDRD(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      ADDRD(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      ADDRD(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      DOA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(43),
      DOA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(42),
      DOB(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(45),
      DOB(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(44),
      DOC(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(47),
      DOC(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(46),
      DOD(1) => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM8_DOD_1_UNCONNECTED,
      DOD(0) => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM8_DOD_0_UNCONNECTED
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM7 : RAM32M
    generic map(
      INIT_C => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_A => X"0000000000000000"
    )
    port map (
      WCLK => clk,
      WE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      DIA(1) => din(37),
      DIA(0) => din(36),
      DIB(1) => din(39),
      DIB(0) => din(38),
      DIC(1) => din(41),
      DIC(0) => din(40),
      DID(1) => N0,
      DID(0) => N0,
      ADDRA(4) => N0,
      ADDRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRB(4) => N0,
      ADDRB(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRB(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRB(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRB(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRC(4) => N0,
      ADDRC(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRC(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRC(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRC(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRD(4) => N0,
      ADDRD(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      ADDRD(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      ADDRD(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      ADDRD(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      DOA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(37),
      DOA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(36),
      DOB(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(39),
      DOB(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(38),
      DOC(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(41),
      DOC(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(40),
      DOD(1) => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM7_DOD_1_UNCONNECTED,
      DOD(0) => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM7_DOD_0_UNCONNECTED
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM9 : RAM32M
    generic map(
      INIT_C => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_A => X"0000000000000000"
    )
    port map (
      WCLK => clk,
      WE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      DIA(1) => din(49),
      DIA(0) => din(48),
      DIB(1) => din(51),
      DIB(0) => din(50),
      DIC(1) => din(53),
      DIC(0) => din(52),
      DID(1) => N0,
      DID(0) => N0,
      ADDRA(4) => N0,
      ADDRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRB(4) => N0,
      ADDRB(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRB(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRB(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRB(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRC(4) => N0,
      ADDRC(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRC(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRC(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRC(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRD(4) => N0,
      ADDRD(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      ADDRD(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      ADDRD(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      ADDRD(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      DOA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(49),
      DOA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(48),
      DOB(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(51),
      DOB(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(50),
      DOC(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(53),
      DOC(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(52),
      DOD(1) => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM9_DOD_1_UNCONNECTED,
      DOD(0) => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM9_DOD_0_UNCONNECTED
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM5 : RAM32M
    generic map(
      INIT_C => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_A => X"0000000000000000"
    )
    port map (
      WCLK => clk,
      WE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      DIA(1) => din(25),
      DIA(0) => din(24),
      DIB(1) => din(27),
      DIB(0) => din(26),
      DIC(1) => din(29),
      DIC(0) => din(28),
      DID(1) => N0,
      DID(0) => N0,
      ADDRA(4) => N0,
      ADDRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRB(4) => N0,
      ADDRB(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRB(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRB(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRB(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRC(4) => N0,
      ADDRC(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRC(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRC(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRC(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRD(4) => N0,
      ADDRD(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      ADDRD(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      ADDRD(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      ADDRD(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      DOA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(25),
      DOA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(24),
      DOB(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(27),
      DOB(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(26),
      DOC(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(29),
      DOC(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(28),
      DOD(1) => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM5_DOD_1_UNCONNECTED,
      DOD(0) => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM5_DOD_0_UNCONNECTED
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM4 : RAM32M
    generic map(
      INIT_C => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_A => X"0000000000000000"
    )
    port map (
      WCLK => clk,
      WE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      DIA(1) => din(19),
      DIA(0) => din(18),
      DIB(1) => din(21),
      DIB(0) => din(20),
      DIC(1) => din(23),
      DIC(0) => din(22),
      DID(1) => N0,
      DID(0) => N0,
      ADDRA(4) => N0,
      ADDRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRB(4) => N0,
      ADDRB(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRB(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRB(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRB(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRC(4) => N0,
      ADDRC(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRC(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRC(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRC(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRD(4) => N0,
      ADDRD(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      ADDRD(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      ADDRD(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      ADDRD(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      DOA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(19),
      DOA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(18),
      DOB(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(21),
      DOB(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(20),
      DOC(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(23),
      DOC(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(22),
      DOD(1) => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM4_DOD_1_UNCONNECTED,
      DOD(0) => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM4_DOD_0_UNCONNECTED
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM6 : RAM32M
    generic map(
      INIT_C => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_A => X"0000000000000000"
    )
    port map (
      WCLK => clk,
      WE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      DIA(1) => din(31),
      DIA(0) => din(30),
      DIB(1) => din(33),
      DIB(0) => din(32),
      DIC(1) => din(35),
      DIC(0) => din(34),
      DID(1) => N0,
      DID(0) => N0,
      ADDRA(4) => N0,
      ADDRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRB(4) => N0,
      ADDRB(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRB(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRB(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRB(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRC(4) => N0,
      ADDRC(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRC(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRC(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRC(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRD(4) => N0,
      ADDRD(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      ADDRD(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      ADDRD(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      ADDRD(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      DOA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(31),
      DOA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(30),
      DOB(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(33),
      DOB(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(32),
      DOC(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(35),
      DOC(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(34),
      DOD(1) => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM6_DOD_1_UNCONNECTED,
      DOD(0) => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM6_DOD_0_UNCONNECTED
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM2 : RAM32M
    generic map(
      INIT_C => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_A => X"0000000000000000"
    )
    port map (
      WCLK => clk,
      WE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      DIA(1) => din(7),
      DIA(0) => din(6),
      DIB(1) => din(9),
      DIB(0) => din(8),
      DIC(1) => din(11),
      DIC(0) => din(10),
      DID(1) => N0,
      DID(0) => N0,
      ADDRA(4) => N0,
      ADDRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRB(4) => N0,
      ADDRB(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRB(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRB(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRB(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRC(4) => N0,
      ADDRC(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRC(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRC(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRC(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRD(4) => N0,
      ADDRD(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      ADDRD(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      ADDRD(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      ADDRD(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      DOA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(7),
      DOA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(6),
      DOB(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(9),
      DOB(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(8),
      DOC(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(11),
      DOC(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(10),
      DOD(1) => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM2_DOD_1_UNCONNECTED,
      DOD(0) => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM2_DOD_0_UNCONNECTED
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM1 : RAM32M
    generic map(
      INIT_C => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_A => X"0000000000000000"
    )
    port map (
      WCLK => clk,
      WE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      DIA(1) => din(1),
      DIA(0) => din(0),
      DIB(1) => din(3),
      DIB(0) => din(2),
      DIC(1) => din(5),
      DIC(0) => din(4),
      DID(1) => N0,
      DID(0) => N0,
      ADDRA(4) => N0,
      ADDRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRB(4) => N0,
      ADDRB(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRB(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRB(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRB(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRC(4) => N0,
      ADDRC(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRC(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRC(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRC(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRD(4) => N0,
      ADDRD(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      ADDRD(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      ADDRD(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      ADDRD(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      DOA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(1),
      DOA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(0),
      DOB(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(3),
      DOB(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(2),
      DOC(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(5),
      DOC(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(4),
      DOD(1) => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM1_DOD_1_UNCONNECTED,
      DOD(0) => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM1_DOD_0_UNCONNECTED
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM3 : RAM32M
    generic map(
      INIT_C => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_A => X"0000000000000000"
    )
    port map (
      WCLK => clk,
      WE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      DIA(1) => din(13),
      DIA(0) => din(12),
      DIB(1) => din(15),
      DIB(0) => din(14),
      DIC(1) => din(17),
      DIC(0) => din(16),
      DID(1) => N0,
      DID(0) => N0,
      ADDRA(4) => N0,
      ADDRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRB(4) => N0,
      ADDRB(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRB(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRB(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRB(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRC(4) => N0,
      ADDRC(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRC(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRC(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRC(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRD(4) => N0,
      ADDRD(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      ADDRD(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      ADDRD(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      ADDRD(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      DOA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(13),
      DOA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(12),
      DOB(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(15),
      DOB(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(14),
      DOC(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(17),
      DOC(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(16),
      DOD(1) => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM3_DOD_1_UNCONNECTED,
      DOD(0) => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM3_DOD_0_UNCONNECTED
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_63 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(63),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(63)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_62 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(62),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(62)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_61 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(61),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(61)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_60 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(60),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(60)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_59 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(59),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(59)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_58 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(58),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(58)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_57 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(57),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(57)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_56 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(56),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(56)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_55 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(55),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(55)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_54 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(54),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(54)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_53 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(53),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(53)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_52 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(52),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(52)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_51 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(51),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(51)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_50 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(50),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(50)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_49 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(49),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(49)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_48 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(48),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(48)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_47 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(47),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(47)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_46 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(46),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(46)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_45 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(45),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(45)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_44 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(44),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(44)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_43 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(43),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(43)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_42 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(42),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(42)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_41 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(41),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(41)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_40 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(40),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(40)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_39 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(39),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(39)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_38 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(38),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(38)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_37 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(37),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(37)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_36 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(36),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(36)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_35 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(35),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(35)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_34 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(34),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(34)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_33 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(33),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(33)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_32 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(32),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(32)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_31 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(31),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(31)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_30 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(30),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(30)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_29 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(29),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(29)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_28 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(28),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(28)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_27 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(27),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(27)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_26 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(26),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(26)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_25 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(25),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(25)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_24 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(24),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(24)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_23 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(23),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(23)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_22 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(22),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(22)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_21 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(21),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(21)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_20 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(20),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(20)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_19 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(19),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(19)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_18 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(18),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(18)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_17 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(17),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(17)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_16 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(16),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(16)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(15),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(15)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(14),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(14)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(13),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(13)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(12),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(12)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(11),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(11)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(10),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(10)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_varindex0000(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_192,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_190,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_183,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_181,
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
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(0),
      O => Result_1_1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(0),
      O => Result(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_2_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(1),
      O => Result_2_1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_2_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(1),
      O => Result(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_3_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(1),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(2),
      O => Result_3_1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_3_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(1),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(2),
      O => Result(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_14,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_ram_wr_en_i1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i_36,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb1 : LUT6
    generic map(
      INIT => X"303A3030003A0030"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_180,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i_36,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_comp1,
      I5 => N111,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_dout_i_SW0 : LUT4
    generic map(
      INIT => X"7BDE"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_3_1_28,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      O => N19
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_dout_i : LUT5
    generic map(
      INIT => X"00008241"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(0),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(1),
      I4 => N19,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_comp1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or000010 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_180,
      I1 => NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or000010_32
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or000026 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or000026_33
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or000081 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(2),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or000081_34
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or0000119 : LUT6
    generic map(
      INIT => X"A0EAA0AAAAEAAAAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or000010_32,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or000026_33,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or000081_34,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_comp1,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or0000
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000031_SW0 : LUT4
    generic map(
      INIT => X"7BDE"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_3_1_28,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      O => N21
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000031 : LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      I4 => N21,
      O => N111
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000014 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000014_16
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000023 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000023_17
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000056 : LUT5
    generic map(
      INIT => X"80082002"
    )
    port map (
      I0 => rd_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000056_18
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000105 : LUT6
    generic map(
      INIT => X"BAAAAAAA32222222"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_14,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000014_16,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000023_17,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000056_18,
      I5 => N111,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_3_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_3_1_28
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_0_11_INV_0 : INV
    port map (
      I => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(0),
      O => Result_0_1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_0_11_INV_0 : INV
    port map (
      I => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(0),
      O => Result(0)
    );

end STRUCTURE;

-- synthesis translate_on
