--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: fifo_generator_64_32.vhd
-- /___/   /\     Timestamp: Wed Jul 16 14:06:02 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl /home/ogamal/coregen/tmp/_cg/fifo_generator_64_32.ngc /home/ogamal/coregen/tmp/_cg/fifo_generator_64_32.vhd 
-- Device	: 5vlx330ff1760-2
-- Input file	: /home/ogamal/coregen/tmp/_cg/fifo_generator_64_32.ngc
-- Output file	: /home/ogamal/coregen/tmp/_cg/fifo_generator_64_32.vhd
-- # of Entities	: 1
-- Design Name	: fifo_generator_64_32
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

entity fifo_generator_64_32 is
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
end fifo_generator_64_32;

architecture STRUCTURE of fifo_generator_64_32 is
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grhf_rhf_ram_valid_d1_13 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grhf_rhf_ram_valid_i : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_15 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000129_17 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000156_18 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000182_19 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000213_20 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000049_21 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000076 : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_i : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_comp1 : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or0000 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or000010_37 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or0000104_38 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or000044_39 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb2_41 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb41_42 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb93_43 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i_44 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_i_45 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_tmp_ram_rd_en : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_64 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_65 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_66 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_67 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d1_71 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_72 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d3_73 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_74 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_75 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_76 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_SBITERR_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_DBITERR_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRL_5_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRL_4_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRL_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRL_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRL_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRL_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRU_5_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRU_4_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRU_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRU_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRU_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRU_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRL_5_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRL_4_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRL_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRL_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRL_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRL_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRU_5_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRU_4_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRU_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRU_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRU_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRU_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_DOP_7_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_DOP_6_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_DOP_5_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_DOP_4_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_DOP_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_DOP_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_DOP_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_DOP_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_ECCPARITY_7_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_ECCPARITY_6_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_ECCPARITY_5_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_ECCPARITY_4_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_ECCPARITY_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_ECCPARITY_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_ECCPARITY_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_ECCPARITY_0_UNCONNECTED : STD_LOGIC;
 
  signal Result : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg : STD_LOGIC_VECTOR ( 1 downto 1 ); 
begin
  almost_full <= NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i;
  empty <= NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_i;
  valid <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grhf_rhf_ram_valid_d1_13;
  full <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_i_45;
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grhf_rhf_ram_valid_d1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grhf_rhf_ram_valid_i,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grhf_rhf_ram_valid_d1_13
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
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
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
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
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
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
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4)
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
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      D => Result(0),
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => Result(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => Result(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => Result(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(3)
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
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2_Q,
      D => Result(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => Result_4_1,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(4)
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
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_15
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => rst,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d3_73,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_64
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d3 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_72,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d3_73
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_66,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_67
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_75,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_76
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d1_71,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_72
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_65,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_66
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg : FDPE
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_75,
      D => N0,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_74
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_74,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_75
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg : FDPE
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_66,
      D => N0,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_65
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => N0,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d1_71
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
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_72,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i_44
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_72,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_i_45
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or0000,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_72,
      Q => NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_74,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_76,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_65,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_67,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grhf_rhf_ram_valid_i1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_en,
      I1 => NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_i,
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
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_4_11 : LUT5
    generic map(
      INIT => X"6CCCCCCC"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(4),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(1),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(2),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(3),
      O => Result_4_1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_4_11 : LUT5
    generic map(
      INIT => X"6CCCCCCC"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(4),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(1),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(2),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(3),
      O => Result(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_tmp_ram_rd_en1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_15,
      I1 => rd_en,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_tmp_ram_rd_en
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_ram_wr_en_i1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i_44,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_ram_rd_en_i1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_15,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_dout_i_SW0 : LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(0),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(1),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      O => N22
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_c1_dout_i : LUT5
    generic map(
      INIT => X"00008421"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(2),
      I4 => N22,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_comp1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb41 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb41_42
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb82 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000076
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb93 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF6FF6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(4),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb41_42,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000076,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb93_43
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or000010 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_64,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or000010_37
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or000044 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(0),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or000044_39
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or0000104 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(2),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or0000104_38
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or0000142 : LUT6
    generic map(
      INIT => X"D4C4C4C4DCCCCCCC"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or000010_37,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or000044_39,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or0000104_38,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_comp1,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_afull_i_or0000
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000049 : LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(4),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000049_21
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000129 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000129_17
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000156 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000156_18
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000182 : LUT6
    generic map(
      INIT => X"9009000000000000"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      I4 => rd_en,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000156_18,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000182_19
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000213 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i_44,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000213_20
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000232 : LUT6
    generic map(
      INIT => X"EEAAECA8AAAAA8A8"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_15,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000213_20,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000076,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000129_17,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or000049_21,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000182_19,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_or0000
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb132 : LUT6
    generic map(
      INIT => X"FF44FF0444440404"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_64,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i_44,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb2_41,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb93_43,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_comp1,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb2 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => rd_en,
      I1 => wr_en,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_fb_i_44,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_grss_rsts_ram_empty_fb_i_15,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwss_wsts_ram_full_comb2_41
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
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP : 
RAMB36SDP_EXP
    generic map(
      DO_REG => 0,
      EN_ECC_READ => FALSE,
      EN_ECC_SCRUB => FALSE,
      EN_ECC_WRITE => FALSE,
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT => X"000000000000000000",
      SRVAL => X"000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_FILE => "NONE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_MODE => "SAFE",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      RDENU => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_tmp_ram_rd_en,
      RDENL => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_tmp_ram_rd_en,
      WRENU => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WRENL => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      SSRU => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      SSRL => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0_Q,
      RDCLKU => clk,
      RDCLKL => clk,
      WRCLKU => clk,
      WRCLKL => clk,
      RDRCLKU => clk,
      RDRCLKL => clk,
      REGCEU => N0,
      REGCEL => N0,
      SBITERR => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_SBITERR_UNCONNECTED
,
      DBITERR => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_DBITERR_UNCONNECTED
,
      DI(63) => din(63),
      DI(62) => din(62),
      DI(61) => din(61),
      DI(60) => din(60),
      DI(59) => din(59),
      DI(58) => din(58),
      DI(57) => din(57),
      DI(56) => din(56),
      DI(55) => din(55),
      DI(54) => din(54),
      DI(53) => din(53),
      DI(52) => din(52),
      DI(51) => din(51),
      DI(50) => din(50),
      DI(49) => din(49),
      DI(48) => din(48),
      DI(47) => din(47),
      DI(46) => din(46),
      DI(45) => din(45),
      DI(44) => din(44),
      DI(43) => din(43),
      DI(42) => din(42),
      DI(41) => din(41),
      DI(40) => din(40),
      DI(39) => din(39),
      DI(38) => din(38),
      DI(37) => din(37),
      DI(36) => din(36),
      DI(35) => din(35),
      DI(34) => din(34),
      DI(33) => din(33),
      DI(32) => din(32),
      DI(31) => din(31),
      DI(30) => din(30),
      DI(29) => din(29),
      DI(28) => din(28),
      DI(27) => din(27),
      DI(26) => din(26),
      DI(25) => din(25),
      DI(24) => din(24),
      DI(23) => din(23),
      DI(22) => din(22),
      DI(21) => din(21),
      DI(20) => din(20),
      DI(19) => din(19),
      DI(18) => din(18),
      DI(17) => din(17),
      DI(16) => din(16),
      DI(15) => din(15),
      DI(14) => din(14),
      DI(13) => din(13),
      DI(12) => din(12),
      DI(11) => din(11),
      DI(10) => din(10),
      DI(9) => din(9),
      DI(8) => din(8),
      DI(7) => din(7),
      DI(6) => din(6),
      DI(5) => din(5),
      DI(4) => din(4),
      DI(3) => din(3),
      DI(2) => din(2),
      DI(1) => din(1),
      DI(0) => din(0),
      DIP(7) => N0,
      DIP(6) => N0,
      DIP(5) => N0,
      DIP(4) => N0,
      DIP(3) => N0,
      DIP(2) => N0,
      DIP(1) => N0,
      DIP(0) => N0,
      RDADDRL(15) => N1,
      RDADDRL(14) => N0,
      RDADDRL(13) => N0,
      RDADDRL(12) => N0,
      RDADDRL(11) => N0,
      RDADDRL(10) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4),
      RDADDRL(9) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      RDADDRL(8) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      RDADDRL(7) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      RDADDRL(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      RDADDRL(5) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRL_5_UNCONNECTED
,
      RDADDRL(4) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRL_4_UNCONNECTED
,
      RDADDRL(3) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRL_3_UNCONNECTED
,
      RDADDRL(2) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRL_2_UNCONNECTED
,
      RDADDRL(1) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRL_1_UNCONNECTED
,
      RDADDRL(0) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRL_0_UNCONNECTED
,
      RDADDRU(14) => N0,
      RDADDRU(13) => N0,
      RDADDRU(12) => N0,
      RDADDRU(11) => N0,
      RDADDRU(10) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4),
      RDADDRU(9) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      RDADDRU(8) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      RDADDRU(7) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      RDADDRU(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      RDADDRU(5) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRU_5_UNCONNECTED
,
      RDADDRU(4) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRU_4_UNCONNECTED
,
      RDADDRU(3) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRU_3_UNCONNECTED
,
      RDADDRU(2) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRU_2_UNCONNECTED
,
      RDADDRU(1) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRU_1_UNCONNECTED
,
      RDADDRU(0) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_RDADDRU_0_UNCONNECTED
,
      WRADDRL(15) => N1,
      WRADDRL(14) => N0,
      WRADDRL(13) => N0,
      WRADDRL(12) => N0,
      WRADDRL(11) => N0,
      WRADDRL(10) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(4),
      WRADDRL(9) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      WRADDRL(8) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      WRADDRL(7) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      WRADDRL(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      WRADDRL(5) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRL_5_UNCONNECTED
,
      WRADDRL(4) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRL_4_UNCONNECTED
,
      WRADDRL(3) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRL_3_UNCONNECTED
,
      WRADDRL(2) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRL_2_UNCONNECTED
,
      WRADDRL(1) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRL_1_UNCONNECTED
,
      WRADDRL(0) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRL_0_UNCONNECTED
,
      WRADDRU(14) => N0,
      WRADDRU(13) => N0,
      WRADDRU(12) => N0,
      WRADDRU(11) => N0,
      WRADDRU(10) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(4),
      WRADDRU(9) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      WRADDRU(8) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      WRADDRU(7) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      WRADDRU(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      WRADDRU(5) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRU_5_UNCONNECTED
,
      WRADDRU(4) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRU_4_UNCONNECTED
,
      WRADDRU(3) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRU_3_UNCONNECTED
,
      WRADDRU(2) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRU_2_UNCONNECTED
,
      WRADDRU(1) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRU_1_UNCONNECTED
,
      WRADDRU(0) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_WRADDRU_0_UNCONNECTED
,
      WEU(7) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEU(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEU(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEU(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEU(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEU(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEU(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEU(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEL(7) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEL(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEL(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEL(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEL(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEL(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEL(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEL(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      DO(63) => dout(63),
      DO(62) => dout(62),
      DO(61) => dout(61),
      DO(60) => dout(60),
      DO(59) => dout(59),
      DO(58) => dout(58),
      DO(57) => dout(57),
      DO(56) => dout(56),
      DO(55) => dout(55),
      DO(54) => dout(54),
      DO(53) => dout(53),
      DO(52) => dout(52),
      DO(51) => dout(51),
      DO(50) => dout(50),
      DO(49) => dout(49),
      DO(48) => dout(48),
      DO(47) => dout(47),
      DO(46) => dout(46),
      DO(45) => dout(45),
      DO(44) => dout(44),
      DO(43) => dout(43),
      DO(42) => dout(42),
      DO(41) => dout(41),
      DO(40) => dout(40),
      DO(39) => dout(39),
      DO(38) => dout(38),
      DO(37) => dout(37),
      DO(36) => dout(36),
      DO(35) => dout(35),
      DO(34) => dout(34),
      DO(33) => dout(33),
      DO(32) => dout(32),
      DO(31) => dout(31),
      DO(30) => dout(30),
      DO(29) => dout(29),
      DO(28) => dout(28),
      DO(27) => dout(27),
      DO(26) => dout(26),
      DO(25) => dout(25),
      DO(24) => dout(24),
      DO(23) => dout(23),
      DO(22) => dout(22),
      DO(21) => dout(21),
      DO(20) => dout(20),
      DO(19) => dout(19),
      DO(18) => dout(18),
      DO(17) => dout(17),
      DO(16) => dout(16),
      DO(15) => dout(15),
      DO(14) => dout(14),
      DO(13) => dout(13),
      DO(12) => dout(12),
      DO(11) => dout(11),
      DO(10) => dout(10),
      DO(9) => dout(9),
      DO(8) => dout(8),
      DO(7) => dout(7),
      DO(6) => dout(6),
      DO(5) => dout(5),
      DO(4) => dout(4),
      DO(3) => dout(3),
      DO(2) => dout(2),
      DO(1) => dout(1),
      DO(0) => dout(0),
      DOP(7) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_DOP_7_UNCONNECTED
,
      DOP(6) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_DOP_6_UNCONNECTED
,
      DOP(5) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_DOP_5_UNCONNECTED
,
      DOP(4) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_DOP_4_UNCONNECTED
,
      DOP(3) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_DOP_3_UNCONNECTED
,
      DOP(2) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_DOP_2_UNCONNECTED
,
      DOP(1) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_DOP_1_UNCONNECTED
,
      DOP(0) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_DOP_0_UNCONNECTED
,
      ECCPARITY(7) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_ECCPARITY_7_UNCONNECTED
,
      ECCPARITY(6) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_ECCPARITY_6_UNCONNECTED
,
      ECCPARITY(5) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_ECCPARITY_5_UNCONNECTED
,
      ECCPARITY(4) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_ECCPARITY_4_UNCONNECTED
,
      ECCPARITY(3) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_ECCPARITY_3_UNCONNECTED
,
      ECCPARITY(2) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_ECCPARITY_2_UNCONNECTED
,
      ECCPARITY(1) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_ECCPARITY_1_UNCONNECTED
,
      ECCPARITY(0) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_WIDE_PRIM36_noeccerr_SDP_ECCPARITY_0_UNCONNECTED

    );

end STRUCTURE;

-- synthesis translate_on
