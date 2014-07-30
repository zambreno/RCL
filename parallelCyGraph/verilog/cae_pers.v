/*****************************************************************************/
//
// Module      : cae_pers.v
// Last Modified On: 2013/07/22 14:37
// Last Modified By: Osama Attia
//
//-----------------------------------------------------------------------------
//
// Original Author : gedwards
// Created On      : Wed Oct 10 09:26:08 2007
// TODO: add author information
//-----------------------------------------------------------------------------
//
// Description     : parallelCyGraph personality
//
//                   Top-level of parallelCyGraph personality.  For a complete list of 
//                   optional ports, see 
//                   /opt/convey/pdk/<rev>/<platform>/doc/cae_pers.v
//
//-----------------------------------------------------------------------------
//
// Copyright (c) 2007-2011 : created by Convey Computer Corp. This model is the
// confidential and proprietary property of Convey Computer Corp.
//
/*****************************************************************************/
/* $Id: cae_pers.v,v 1.4.1.4 2012/03/07 15:41:55 ktown Exp ktown $ */

`timescale 1 ns / 1 ps

`include "pdk_fpga_defines.vh"

(* keep_hierarchy = "true" *)
module cae_pers (
   input        clk_csr,
   input        clk,
   input        clk2x,
   input        i_reset,
   input        i_csr_reset_n,
   input  [1:0]     i_aeid,

   input        ppll_reset,
   output       ppll_locked,
   output       clk_per,

   //
   // Dispatch Interface
   //
   input  [31:0]    cae_inst,
   input  [63:0]    cae_data,
   input        cae_inst_vld,

   output [17:0]    cae_aeg_cnt,
   output [15:0]    cae_exception,
   output [63:0]    cae_ret_data,
   output       cae_ret_data_vld,
   output       cae_idle,
   output       cae_stall,

   //
   // MC Interface(s)
   //
   output       mc0_req_ld_e, mc0_req_ld_o,
   output       mc0_req_st_e, mc0_req_st_o,
   output [1:0]     mc0_req_size_e, mc0_req_size_o,
   output [47:0]    mc0_req_vadr_e, mc0_req_vadr_o,
   output [63:0]    mc0_req_wrd_rdctl_e, mc0_req_wrd_rdctl_o,
   output       mc0_rsp_stall_e, mc0_rsp_stall_o,
   input        mc0_rd_rq_stall_e, mc0_rd_rq_stall_o,
   input        mc0_wr_rq_stall_e, mc0_wr_rq_stall_o,
   input  [63:0]    mc0_rsp_data_e, mc0_rsp_data_o,
   input        mc0_rsp_push_e, mc0_rsp_push_o,
   input  [31:0]    mc0_rsp_rdctl_e, mc0_rsp_rdctl_o,
   output       mc1_req_ld_e, mc1_req_ld_o,
   output       mc1_req_st_e, mc1_req_st_o,
   output [1:0]     mc1_req_size_e, mc1_req_size_o,
   output [47:0]    mc1_req_vadr_e, mc1_req_vadr_o,
   output [63:0]    mc1_req_wrd_rdctl_e, mc1_req_wrd_rdctl_o,
   output       mc1_rsp_stall_e, mc1_rsp_stall_o,
   input        mc1_rd_rq_stall_e, mc1_rd_rq_stall_o,
   input        mc1_wr_rq_stall_e, mc1_wr_rq_stall_o,
   input  [63:0]    mc1_rsp_data_e, mc1_rsp_data_o,
   input        mc1_rsp_push_e, mc1_rsp_push_o,
   input  [31:0]    mc1_rsp_rdctl_e, mc1_rsp_rdctl_o,
   output       mc2_req_ld_e, mc2_req_ld_o,
   output       mc2_req_st_e, mc2_req_st_o,
   output [1:0]     mc2_req_size_e, mc2_req_size_o,
   output [47:0]    mc2_req_vadr_e, mc2_req_vadr_o,
   output [63:0]    mc2_req_wrd_rdctl_e, mc2_req_wrd_rdctl_o,
   output       mc2_rsp_stall_e, mc2_rsp_stall_o,
   input        mc2_rd_rq_stall_e, mc2_rd_rq_stall_o,
   input        mc2_wr_rq_stall_e, mc2_wr_rq_stall_o,
   input  [63:0]    mc2_rsp_data_e, mc2_rsp_data_o,
   input        mc2_rsp_push_e, mc2_rsp_push_o,
   input  [31:0]    mc2_rsp_rdctl_e, mc2_rsp_rdctl_o,
   output       mc3_req_ld_e, mc3_req_ld_o,
   output       mc3_req_st_e, mc3_req_st_o,
   output [1:0]     mc3_req_size_e, mc3_req_size_o,
   output [47:0]    mc3_req_vadr_e, mc3_req_vadr_o,
   output [63:0]    mc3_req_wrd_rdctl_e, mc3_req_wrd_rdctl_o,
   output       mc3_rsp_stall_e, mc3_rsp_stall_o,
   input        mc3_rd_rq_stall_e, mc3_rd_rq_stall_o,
   input        mc3_wr_rq_stall_e, mc3_wr_rq_stall_o,
   input  [63:0]    mc3_rsp_data_e, mc3_rsp_data_o,
   input        mc3_rsp_push_e, mc3_rsp_push_o,
   input  [31:0]    mc3_rsp_rdctl_e, mc3_rsp_rdctl_o,
   output       mc4_req_ld_e, mc4_req_ld_o,
   output       mc4_req_st_e, mc4_req_st_o,
   output [1:0]     mc4_req_size_e, mc4_req_size_o,
   output [47:0]    mc4_req_vadr_e, mc4_req_vadr_o,
   output [63:0]    mc4_req_wrd_rdctl_e, mc4_req_wrd_rdctl_o,
   output       mc4_rsp_stall_e, mc4_rsp_stall_o,
   input        mc4_rd_rq_stall_e, mc4_rd_rq_stall_o,
   input        mc4_wr_rq_stall_e, mc4_wr_rq_stall_o,
   input  [63:0]    mc4_rsp_data_e, mc4_rsp_data_o,
   input        mc4_rsp_push_e, mc4_rsp_push_o,
   input  [31:0]    mc4_rsp_rdctl_e, mc4_rsp_rdctl_o,
   output       mc5_req_ld_e, mc5_req_ld_o,
   output       mc5_req_st_e, mc5_req_st_o,
   output [1:0]     mc5_req_size_e, mc5_req_size_o,
   output [47:0]    mc5_req_vadr_e, mc5_req_vadr_o,
   output [63:0]    mc5_req_wrd_rdctl_e, mc5_req_wrd_rdctl_o,
   output       mc5_rsp_stall_e, mc5_rsp_stall_o,
   input        mc5_rd_rq_stall_e, mc5_rd_rq_stall_o,
   input        mc5_wr_rq_stall_e, mc5_wr_rq_stall_o,
   input  [63:0]    mc5_rsp_data_e, mc5_rsp_data_o,
   input        mc5_rsp_push_e, mc5_rsp_push_o,
   input  [31:0]    mc5_rsp_rdctl_e, mc5_rsp_rdctl_o,
   output       mc6_req_ld_e, mc6_req_ld_o,
   output       mc6_req_st_e, mc6_req_st_o,
   output [1:0]     mc6_req_size_e, mc6_req_size_o,
   output [47:0]    mc6_req_vadr_e, mc6_req_vadr_o,
   output [63:0]    mc6_req_wrd_rdctl_e, mc6_req_wrd_rdctl_o,
   output       mc6_rsp_stall_e, mc6_rsp_stall_o,
   input        mc6_rd_rq_stall_e, mc6_rd_rq_stall_o,
   input        mc6_wr_rq_stall_e, mc6_wr_rq_stall_o,
   input  [63:0]    mc6_rsp_data_e, mc6_rsp_data_o,
   input        mc6_rsp_push_e, mc6_rsp_push_o,
   input  [31:0]    mc6_rsp_rdctl_e, mc6_rsp_rdctl_o,
   output       mc7_req_ld_e, mc7_req_ld_o,
   output       mc7_req_st_e, mc7_req_st_o,
   output [1:0]     mc7_req_size_e, mc7_req_size_o,
   output [47:0]    mc7_req_vadr_e, mc7_req_vadr_o,
   output [63:0]    mc7_req_wrd_rdctl_e, mc7_req_wrd_rdctl_o,
   output       mc7_rsp_stall_e, mc7_rsp_stall_o,
   input        mc7_rd_rq_stall_e, mc7_rd_rq_stall_o,
   input        mc7_wr_rq_stall_e, mc7_wr_rq_stall_o,
   input  [63:0]    mc7_rsp_data_e, mc7_rsp_data_o,
   input        mc7_rsp_push_e, mc7_rsp_push_o,
   input  [31:0]    mc7_rsp_rdctl_e, mc7_rsp_rdctl_o,

   //
   // Write flush
   //
   output       mc0_req_flush_e, mc0_req_flush_o,
   input        mc0_rsp_flush_cmplt_e, mc0_rsp_flush_cmplt_o,
   output       mc1_req_flush_e, mc1_req_flush_o,
   input        mc1_rsp_flush_cmplt_e, mc1_rsp_flush_cmplt_o,
   output       mc2_req_flush_e, mc2_req_flush_o,
   input        mc2_rsp_flush_cmplt_e, mc2_rsp_flush_cmplt_o,
   output       mc3_req_flush_e, mc3_req_flush_o,
   input        mc3_rsp_flush_cmplt_e, mc3_rsp_flush_cmplt_o,
   output       mc4_req_flush_e, mc4_req_flush_o,
   input        mc4_rsp_flush_cmplt_e, mc4_rsp_flush_cmplt_o,
   output       mc5_req_flush_e, mc5_req_flush_o,
   input        mc5_rsp_flush_cmplt_e, mc5_rsp_flush_cmplt_o,
   output       mc6_req_flush_e, mc6_req_flush_o,
   input        mc6_rsp_flush_cmplt_e, mc6_rsp_flush_cmplt_o,
   output       mc7_req_flush_e, mc7_req_flush_o,
   input        mc7_rsp_flush_cmplt_e, mc7_rsp_flush_cmplt_o,

   //
   // AE-to-AE Interface
   //
//`ifdef AE_AE_IF
   input  [31:0]    nxtae_rx_data, prvae_rx_data,
   input        nxtae_rx_vld, prvae_rx_vld,
   output       nxtae_rx_stall, prvae_rx_stall,

   output [31:0]    nxtae_tx_data, prvae_tx_data,
   output       nxtae_tx_vld, prvae_tx_vld,
   input        nxtae_tx_stall, prvae_tx_stall,

   output [65:0]    prvae_nd0_tx_data,
   output       prvae_nd0_tx_vld,
   input        prvae_nd0_tx_stall,
   input  [65:0]    nxtae_nd0_rx_data,
   input        nxtae_nd0_rx_vld,
   output       nxtae_nd0_rx_stall,
//`endif


   //
   // Management/Debug Interface
   //
   input  [3:0]     cae_ring_ctl_in,
   input  [15:0]    cae_ring_data_in,
   output [3:0]     cae_ring_ctl_out,
   output [15:0]    cae_ring_data_out,

   input        csr_31_31_intlv_dis
);

initial $display("starting cae personality aeid:%d\n", i_aeid);

`include "pdk_fpga_param.vh"

   //
   // Local clock generation
   //
   (* KEEP = "true" *) wire reset_per;
   cae_clock clock (
      .clk(clk),
      .i_reset(i_reset),
      .ppll_reset(ppll_reset),

      .clk_per(clk_per),
      .ppll_locked(ppll_locked),
      .reset_per(reset_per)
   );


     //
     // Instruction decode
     //
     wire [4:0]   inst_caep;
     wire [17:0]  inst_aeg_idx;
     instdec dec (
        .cae_inst(cae_inst),
        .cae_data(cae_data),
        .cae_inst_vld(cae_inst_vld),

        .inst_val(inst_val),
        .inst_caep(inst_caep),
        .inst_aeg_wr(inst_aeg_wr),
        .inst_aeg_rd(inst_aeg_rd),
        .inst_aeg_idx(inst_aeg_idx),
        .err_unimpl(err_unimpl)
    );


   //**************************************************************************
   //              PERSONALITY SPECIFIC LOGIC
   //**************************************************************************

   //
   // AEG[0..NA-1] Registers
   //
    localparam NA = 51;
    localparam NB = 6;       // Number of bits to represent NAEG

    assign cae_aeg_cnt = NA;

    //output of aeg registers
    wire [63:0]  w_aeg[NA-1:0];
    wire cygraph_enable;
    wire cygraph_busy;
    wire cygraph_done;
    wire [63:0] nq_count;

    genvar g;
    generate for (g=0; g<NA; g=g+1) begin : g0
      reg [63:0] c_aeg, r_aeg;

      always @* begin
        case (g)
            //TODO: add cases for registers to be written to
            8: begin
               if (cygraph_done == 1'b1) begin
                  c_aeg = nq_count;
               end
            end
            default: c_aeg = r_aeg;
        endcase
      end

      wire c_aeg_we = inst_aeg_wr && inst_aeg_idx[NB-1:0] == g;

      always @(posedge clk) begin
        if (c_aeg_we) begin
            r_aeg <= cae_data;
            $display("writing: %x", cae_data);
        end
        else
            r_aeg <= c_aeg;
        end
      assign w_aeg[g] = r_aeg;
    end endgenerate

   reg      r_ret_val, r_err_unimpl, r_err_aegidx;
   reg [63:0]   r_ret_data;

   wire c_val_aegidx = inst_aeg_idx < NA;

    //return logic
   always @(posedge clk) begin
      r_ret_val    <= inst_aeg_rd && c_val_aegidx;
      r_ret_data   <= w_aeg[inst_aeg_idx[NB-1:0]];
      r_err_aegidx <= (inst_aeg_wr || inst_aeg_rd) && !c_val_aegidx;
      //TODO: add logic to decide which instructions are implemented -- OSAMA
      r_err_unimpl <= err_unimpl || (inst_val && (inst_caep !== 'd0/* && inst_caep !== 'd1 && inst_caep !== 'd2*/)); 
   end
   assign cae_ret_data_vld = r_ret_val;
   assign cae_ret_data     = r_ret_data;

   assign cae_exception[1:0] = {r_err_aegidx, r_err_unimpl};

   // ISE can have issues with global wires attached to D(flop)/I(lut) inputs
   wire r_reset;
   FDSE rst (.C(clk_per),.S(reset_per),.CE(r_reset),.D(!r_reset),.Q(r_reset));

   //logic for using cae IMPORTANT. cae_idle should be 0 when executing a custom instruction and 1 otherwise.
   //cae_stall should be 1 when when exectuting a custom instruction and 0 otherwise.
   // assign cae_idle  = 1'b1;
   // assign cae_stall = 1'b0;
   wire c_caep00;
   reg r_caep00;
   assign c_caep00 = (inst_caep == 5'd0) && inst_val;
   always @(posedge clk) begin
      r_caep00 <= c_caep00;
   end
   assign cae_idle = !r_caep00 && !cygraph_busy;
   assign cae_stall = c_caep00 || r_caep00 || cygraph_busy;


   // start triggering CyGraph
   reg cy_en;
   always @(posedge clk) begin
      if(inst_caep == 5'd0 && inst_val) begin
         // start logic for custom instruction
         $display("@simulation: Hello World from simulated ae%d", i_aeid);
         cy_en <= 1'b1;
         $display("@simulation: Grayscale module enabled!");
      end
      else begin
         cy_en <= 1'b0;
      end
   end
   assign cygraph_enable = cy_en;

   //
   // default state
   //
   assign cae_ring_ctl_out    = cae_ring_ctl_in;
   assign cae_ring_data_out   = cae_ring_data_in;

   assign nxtae_rx_stall             = 1'b0;
   assign prvae_rx_stall             = 1'b0;
   // assign nxtae_tx_data              = 32'b0;
   // assign prvae_tx_data              = 32'b0;
   // assign nxtae_tx_vld               = 1'b0;
   // assign prvae_tx_vld               = 1'b0;
   assign prvae_nd0_tx_data          = 66'b0;
   assign prvae_nd0_tx_vld           = 1'b0;
   assign nxtae_nd0_rx_stall         = 1'b0;

   assign prvae_nd1_tx_data			= 66'b0;
   assign prvae_nd1_tx_vld			= 1'b0;
   assign nxtae_nd1_rx_stall		= 1'b0;

   // assign mc0_req_ld_e        = 1'b0;
   // assign mc0_req_st_e        = 1'b0;
   // assign mc0_req_wrd_rdctl_e = 64'd0;
   // assign mc0_req_vadr_e      = 48'd0;
   // assign mc0_req_size_e      = 2'd0;
   // assign mc0_req_flush_e     = 1'b0;
   // assign mc0_rsp_stall_e     = 1'b0;
   // assign mc0_req_ld_o        = 1'b0;
   // assign mc0_req_st_o        = 1'b0;
   // assign mc0_req_wrd_rdctl_o = 64'd0;
   // assign mc0_req_vadr_o      = 48'd0;
   // assign mc0_req_size_o      = 2'd0;
   // assign mc0_req_flush_o     = 1'b0;
   // assign mc0_rsp_stall_o     = 1'b0;
   // assign mc1_req_ld_e        = 1'b0;
   // assign mc1_req_st_e        = 1'b0;
   // assign mc1_req_wrd_rdctl_e = 64'd0;
   // assign mc1_req_vadr_e      = 48'd0;
   // assign mc1_req_size_e      = 2'd0;
   // assign mc1_req_flush_e     = 1'b0;
   // assign mc1_rsp_stall_e     = 1'b0;
   // assign mc1_req_ld_o        = 1'b0;
   // assign mc1_req_st_o        = 1'b0;
   // assign mc1_req_wrd_rdctl_o = 64'd0;
   // assign mc1_req_vadr_o      = 48'd0;
   // assign mc1_req_size_o      = 2'd0;
   // assign mc1_req_flush_o     = 1'b0;
   // assign mc1_rsp_stall_o     = 1'b0;
   // assign mc2_req_ld_e        = 1'b0;
   // assign mc2_req_st_e        = 1'b0;
   // assign mc2_req_wrd_rdctl_e = 64'd0;
   // assign mc2_req_vadr_e      = 48'd0;
   // assign mc2_req_size_e      = 2'd0;
   // assign mc2_req_flush_e     = 1'b0;
   // assign mc2_rsp_stall_e     = 1'b0;
   // assign mc2_req_ld_o        = 1'b0;
   // assign mc2_req_st_o        = 1'b0;
   // assign mc2_req_wrd_rdctl_o = 64'd0;
   // assign mc2_req_vadr_o      = 48'd0;
   // assign mc2_req_size_o      = 2'd0;
   // assign mc2_req_flush_o     = 1'b0;
   // assign mc2_rsp_stall_o     = 1'b0;
   // assign mc3_req_ld_e        = 1'b0;
   // assign mc3_req_st_e        = 1'b0;
   // assign mc3_req_wrd_rdctl_e = 64'd0;
   // assign mc3_req_vadr_e      = 48'd0;
   // assign mc3_req_size_e      = 2'd0;
   // assign mc3_req_flush_e     = 1'b0;
   // assign mc3_rsp_stall_e     = 1'b0;
   // assign mc3_req_ld_o        = 1'b0;
   // assign mc3_req_st_o        = 1'b0;
   // assign mc3_req_wrd_rdctl_o = 64'd0;
   // assign mc3_req_vadr_o      = 48'd0;
   // assign mc3_req_size_o      = 2'd0;
   // assign mc3_req_flush_o     = 1'b0;
   // assign mc3_rsp_stall_o     = 1'b0;
   // assign mc4_req_ld_e        = 1'b0;
   // assign mc4_req_st_e        = 1'b0;
   // assign mc4_req_wrd_rdctl_e = 64'd0;
   // assign mc4_req_vadr_e      = 48'd0;
   // assign mc4_req_size_e      = 2'd0;
   // assign mc4_req_flush_e     = 1'b0;
   // assign mc4_rsp_stall_e     = 1'b0;
   // assign mc4_req_ld_o        = 1'b0;
   // assign mc4_req_st_o        = 1'b0;
   // assign mc4_req_wrd_rdctl_o = 64'd0;
   // assign mc4_req_vadr_o      = 48'd0;
   // assign mc4_req_size_o      = 2'd0;
   // assign mc4_req_flush_o     = 1'b0;
   // assign mc4_rsp_stall_o     = 1'b0;
   // assign mc5_req_ld_e        = 1'b0;
   // assign mc5_req_st_e        = 1'b0;
   // assign mc5_req_wrd_rdctl_e = 64'd0;
   // assign mc5_req_vadr_e      = 48'd0;
   // assign mc5_req_size_e      = 2'd0;
   // assign mc5_req_flush_e     = 1'b0;
   // assign mc5_rsp_stall_e     = 1'b0;
   // assign mc5_req_ld_o        = 1'b0;
   // assign mc5_req_st_o        = 1'b0;
   // assign mc5_req_wrd_rdctl_o = 64'd0;
   // assign mc5_req_vadr_o      = 48'd0;
   // assign mc5_req_size_o      = 2'd0;
   // assign mc5_req_flush_o     = 1'b0;
   // assign mc5_rsp_stall_o     = 1'b0;
   // assign mc6_req_ld_e        = 1'b0;
   // assign mc6_req_st_e        = 1'b0;
   // assign mc6_req_wrd_rdctl_e = 64'd0;
   // assign mc6_req_vadr_e      = 48'd0;
   // assign mc6_req_size_e      = 2'd0;
   // assign mc6_req_flush_e     = 1'b0;
   // assign mc6_rsp_stall_e     = 1'b0;
   // assign mc6_req_ld_o        = 1'b0;
   // assign mc6_req_st_o        = 1'b0;
   // assign mc6_req_wrd_rdctl_o = 64'd0;
   // assign mc6_req_vadr_o      = 48'd0;
   // assign mc6_req_size_o      = 2'd0;
   // assign mc6_req_flush_o     = 1'b0;
   // assign mc6_rsp_stall_o     = 1'b0;
   // assign mc7_req_ld_e        = 1'b0;
   // assign mc7_req_st_e        = 1'b0;
   // assign mc7_req_wrd_rdctl_e = 64'd0;
   // assign mc7_req_vadr_e      = 48'd0;
   // assign mc7_req_size_e      = 2'd0;
   // assign mc7_req_flush_e     = 1'b0;
   // assign mc7_rsp_stall_e     = 1'b0;
   // assign mc7_req_ld_o        = 1'b0;
   // assign mc7_req_st_o        = 1'b0;
   // assign mc7_req_wrd_rdctl_o = 64'd0;
   // assign mc7_req_vadr_o      = 48'd0;
   // assign mc7_req_size_o      = 2'd0;
   // assign mc7_req_flush_o     = 1'b0;
   // assign mc7_rsp_stall_o     = 1'b0;


   wire [63:0] cy_n;
   wire [63:0] non_zeros;
   wire [63:0] graphData;
   wire [63:0] graphInfo;
   wire [63:0] queue1_address;
   wire [63:0] queue2_address;
   wire [63:0] current_level;
   wire [63:0] cq_count;
   assign cy_n           = w_aeg[0];
   assign non_zeros      = w_aeg[1];
   assign graphData      = w_aeg[2];
   assign graphInfo      = w_aeg[3];
   assign queue1_address = w_aeg[4];
   assign queue2_address = w_aeg[5];
   assign current_level  = w_aeg[6];
   assign cq_count       = w_aeg[7];


   // Instaintaite CyGraph module
   cygraph cygraph_inst (
      // control signals
      .clk                 (clk_per),               // in
      .rst                 (reset_per),             // in
      .enable              (cygraph_enable),        // in
      .busy                (cygraph_busy),          // out
      .done                (cygraph_done),          // out
      // ae-to-ae signals 
      .ae_id               (i_aeid),                // in
      .nxtae_rx_data       (nxtae_rx_data),         // in 32
      .nxtae_rx_vld        (nxtae_rx_vld),          // in
      .prvae_rx_data       (prvae_rx_data),         // in 32
      .prvae_rx_vld        (prvae_rx_vld),          // in
      .nxtae_tx_data       (nxtae_tx_data),         // out 32
      .nxtae_tx_vld        (nxtae_tx_vld),          // out
      .prvae_tx_data       (prvae_tx_data),         // out 32
      .prvae_tx_vld        (prvae_tx_vld),          // out
      // Graph Parameters
      .n_in                (cy_n),                  // in 64
      .non_zeros_in        (non_zeros),             // in 64
      .current_level_in    (current_level),         // in 64
      .cq_count_in         (cq_count),              // in 64
      .nq_count_out        (nq_count),              // out 64
      // Input Graph Pointers (Represented in Custom CSR)
      .graphData_in        (graphData),             // in 64
      .graphInfo_in        (graphInfo),             // in 64
      // Queue pointers
      .queue1_address_in   (queue1_address),        // in 64
      .queue2_address_in   (queue2_address),        // in 64
      // MC0 port signals
      .mc0_req_ld          (mc0_req_ld_e),          // out
      .mc0_req_st          (mc0_req_st_e),          // out
      .mc0_req_size        (mc0_req_size_e),        // out2
      .mc0_req_vaddr       (mc0_req_vadr_e),        // out48
      .mc0_req_wrd_rdctl   (mc0_req_wrd_rdctl_e),   // out64
      .mc0_req_flush       (mc0_req_flush_e),       // out
      .mc0_rd_rq_stall     (mc0_rd_rq_stall_e),     // in
      .mc0_wr_rq_stall     (mc0_wr_rq_stall_e),     // in
      .mc0_rsp_push        (mc0_rsp_push_e),        // in
      .mc0_rsp_stall       (mc0_rsp_stall_e),       // out
      .mc0_rsp_data        (mc0_rsp_data_e),        // in 64
      .mc0_rsp_rdctl       (mc0_rsp_rdctl_e),       // in 32
      .mc0_rsp_flush_cmplt (mc0_rsp_flush_cmplt_e),  // in
      // MC1 port signals
      .mc1_req_ld          (mc0_req_ld_o),          // out
      .mc1_req_st          (mc0_req_st_o),          // out
      .mc1_req_size        (mc0_req_size_o),        // out2
      .mc1_req_vaddr       (mc0_req_vadr_o),        // out48
      .mc1_req_wrd_rdctl   (mc0_req_wrd_rdctl_o),   // out64
      .mc1_req_flush       (mc0_req_flush_o),       // out
      .mc1_rd_rq_stall     (mc0_rd_rq_stall_o),     // in
      .mc1_wr_rq_stall     (mc0_wr_rq_stall_o),     // in
      .mc1_rsp_push        (mc0_rsp_push_o),        // in
      .mc1_rsp_stall       (mc0_rsp_stall_o),       // out
      .mc1_rsp_data        (mc0_rsp_data_o),        // in 64
      .mc1_rsp_rdctl       (mc0_rsp_rdctl_o),       // in 32
      .mc1_rsp_flush_cmplt (mc0_rsp_flush_cmplt_o), // in
      // MC2 port signals
      .mc2_req_ld          (mc1_req_ld_e),          // out
      .mc2_req_st          (mc1_req_st_e),          // out
      .mc2_req_size        (mc1_req_size_e),        // out2
      .mc2_req_vaddr       (mc1_req_vadr_e),        // out48
      .mc2_req_wrd_rdctl   (mc1_req_wrd_rdctl_e),   // out64
      .mc2_req_flush       (mc1_req_flush_e),       // out
      .mc2_rd_rq_stall     (mc1_rd_rq_stall_e),     // in
      .mc2_wr_rq_stall     (mc1_wr_rq_stall_e),     // in
      .mc2_rsp_push        (mc1_rsp_push_e),        // in
      .mc2_rsp_stall       (mc1_rsp_stall_e),       // out
      .mc2_rsp_data        (mc1_rsp_data_e),        // in 64
      .mc2_rsp_rdctl       (mc1_rsp_rdctl_e),       // in 32
      .mc2_rsp_flush_cmplt (mc1_rsp_flush_cmplt_e), // in
      // MC3 port signals
      .mc3_req_ld          (mc1_req_ld_o),          // out
      .mc3_req_st          (mc1_req_st_o),          // out
      .mc3_req_size        (mc1_req_size_o),        // out2
      .mc3_req_vaddr       (mc1_req_vadr_o),        // out48
      .mc3_req_wrd_rdctl   (mc1_req_wrd_rdctl_o),   // out64
      .mc3_req_flush       (mc1_req_flush_o),       // out
      .mc3_rd_rq_stall     (mc1_rd_rq_stall_o),     // in
      .mc3_wr_rq_stall     (mc1_wr_rq_stall_o),     // in
      .mc3_rsp_push        (mc1_rsp_push_o),        // in
      .mc3_rsp_stall       (mc1_rsp_stall_o),       // out
      .mc3_rsp_data        (mc1_rsp_data_o),        // in 64
      .mc3_rsp_rdctl       (mc1_rsp_rdctl_o),       // in 32
      .mc3_rsp_flush_cmplt (mc1_rsp_flush_cmplt_o), // in
      // MC4 port signals
      .mc4_req_ld          (mc2_req_ld_e),          // out
      .mc4_req_st          (mc2_req_st_e),          // out
      .mc4_req_size        (mc2_req_size_e),        // out2
      .mc4_req_vaddr       (mc2_req_vadr_e),        // out48
      .mc4_req_wrd_rdctl   (mc2_req_wrd_rdctl_e),   // out64
      .mc4_req_flush       (mc2_req_flush_e),       // out
      .mc4_rd_rq_stall     (mc2_rd_rq_stall_e),     // in
      .mc4_wr_rq_stall     (mc2_wr_rq_stall_e),     // in
      .mc4_rsp_push        (mc2_rsp_push_e),        // in
      .mc4_rsp_stall       (mc2_rsp_stall_e),       // out
      .mc4_rsp_data        (mc2_rsp_data_e),        // in 64
      .mc4_rsp_rdctl       (mc2_rsp_rdctl_e),       // in 32
      .mc4_rsp_flush_cmplt (mc2_rsp_flush_cmplt_e), // in
      // MC5 port signals
      .mc5_req_ld          (mc2_req_ld_o),          // out
      .mc5_req_st          (mc2_req_st_o),          // out
      .mc5_req_size        (mc2_req_size_o),        // out2
      .mc5_req_vaddr       (mc2_req_vadr_o),        // out48
      .mc5_req_wrd_rdctl   (mc2_req_wrd_rdctl_o),   // out64
      .mc5_req_flush       (mc2_req_flush_o),       // out
      .mc5_rd_rq_stall     (mc2_rd_rq_stall_o),     // in
      .mc5_wr_rq_stall     (mc2_wr_rq_stall_o),     // in
      .mc5_rsp_push        (mc2_rsp_push_o),        // in
      .mc5_rsp_stall       (mc2_rsp_stall_o),       // out
      .mc5_rsp_data        (mc2_rsp_data_o),        // in 64
      .mc5_rsp_rdctl       (mc2_rsp_rdctl_o),       // in 32
      .mc5_rsp_flush_cmplt (mc2_rsp_flush_cmplt_o), // in
      // MC6 port signals
      .mc6_req_ld          (mc3_req_ld_e),          // out
      .mc6_req_st          (mc3_req_st_e),          // out
      .mc6_req_size        (mc3_req_size_e),        // out2
      .mc6_req_vaddr       (mc3_req_vadr_e),        // out48
      .mc6_req_wrd_rdctl   (mc3_req_wrd_rdctl_e),   // out64
      .mc6_req_flush       (mc3_req_flush_e),       // out
      .mc6_rd_rq_stall     (mc3_rd_rq_stall_e),     // in
      .mc6_wr_rq_stall     (mc3_wr_rq_stall_e),     // in
      .mc6_rsp_push        (mc3_rsp_push_e),        // in
      .mc6_rsp_stall       (mc3_rsp_stall_e),       // out
      .mc6_rsp_data        (mc3_rsp_data_e),        // in 64
      .mc6_rsp_rdctl       (mc3_rsp_rdctl_e),       // in 32
      .mc6_rsp_flush_cmplt (mc3_rsp_flush_cmplt_e), // in
      // MC7 port signals
      .mc7_req_ld          (mc3_req_ld_o),          // out
      .mc7_req_st          (mc3_req_st_o),          // out
      .mc7_req_size        (mc3_req_size_o),        // out2
      .mc7_req_vaddr       (mc3_req_vadr_o),        // out48
      .mc7_req_wrd_rdctl   (mc3_req_wrd_rdctl_o),   // out64
      .mc7_req_flush       (mc3_req_flush_o),       // out
      .mc7_rd_rq_stall     (mc3_rd_rq_stall_o),     // in
      .mc7_wr_rq_stall     (mc3_wr_rq_stall_o),     // in
      .mc7_rsp_push        (mc3_rsp_push_o),        // in
      .mc7_rsp_stall       (mc3_rsp_stall_o),       // out
      .mc7_rsp_data        (mc3_rsp_data_o),        // in 64
      .mc7_rsp_rdctl       (mc3_rsp_rdctl_o),       // in 32
      .mc7_rsp_flush_cmplt (mc3_rsp_flush_cmplt_o), // in
      // MC8 port signals
      .mc8_req_ld          (mc4_req_ld_e),          // out
      .mc8_req_st          (mc4_req_st_e),          // out
      .mc8_req_size        (mc4_req_size_e),        // out2
      .mc8_req_vaddr       (mc4_req_vadr_e),        // out48
      .mc8_req_wrd_rdctl   (mc4_req_wrd_rdctl_e),   // out64
      .mc8_req_flush       (mc4_req_flush_e),       // out
      .mc8_rd_rq_stall     (mc4_rd_rq_stall_e),     // in
      .mc8_wr_rq_stall     (mc4_wr_rq_stall_e),     // in
      .mc8_rsp_push        (mc4_rsp_push_e),        // in
      .mc8_rsp_stall       (mc4_rsp_stall_e),       // out
      .mc8_rsp_data        (mc4_rsp_data_e),        // in 64
      .mc8_rsp_rdctl       (mc4_rsp_rdctl_e),       // in 32
      .mc8_rsp_flush_cmplt (mc4_rsp_flush_cmplt_e), // in
      // MC9 port signals
      .mc9_req_ld          (mc4_req_ld_o),          // out
      .mc9_req_st          (mc4_req_st_o),          // out
      .mc9_req_size        (mc4_req_size_o),        // out2
      .mc9_req_vaddr       (mc4_req_vadr_o),        // out48
      .mc9_req_wrd_rdctl   (mc4_req_wrd_rdctl_o),   // out64
      .mc9_req_flush       (mc4_req_flush_o),       // out
      .mc9_rd_rq_stall     (mc4_rd_rq_stall_o),     // in
      .mc9_wr_rq_stall     (mc4_wr_rq_stall_o),     // in
      .mc9_rsp_push        (mc4_rsp_push_o),        // in
      .mc9_rsp_stall       (mc4_rsp_stall_o),       // out
      .mc9_rsp_data        (mc4_rsp_data_o),        // in 64
      .mc9_rsp_rdctl       (mc4_rsp_rdctl_o),       // in 32
      .mc9_rsp_flush_cmplt (mc4_rsp_flush_cmplt_o), // in
      // MC10 port signals
      .mc10_req_ld          (mc5_req_ld_e),          // out
      .mc10_req_st          (mc5_req_st_e),          // out
      .mc10_req_size        (mc5_req_size_e),        // out2
      .mc10_req_vaddr       (mc5_req_vadr_e),        // out48
      .mc10_req_wrd_rdctl   (mc5_req_wrd_rdctl_e),   // out64
      .mc10_req_flush       (mc5_req_flush_e),       // out
      .mc10_rd_rq_stall     (mc5_rd_rq_stall_e),     // in
      .mc10_wr_rq_stall     (mc5_wr_rq_stall_e),     // in
      .mc10_rsp_push        (mc5_rsp_push_e),        // in
      .mc10_rsp_stall       (mc5_rsp_stall_e),       // out
      .mc10_rsp_data        (mc5_rsp_data_e),        // in 64
      .mc10_rsp_rdctl       (mc5_rsp_rdctl_e),       // in 32
      .mc10_rsp_flush_cmplt (mc5_rsp_flush_cmplt_e), // in
      // MC11 port signals
      .mc11_req_ld          (mc5_req_ld_o),          // out
      .mc11_req_st          (mc5_req_st_o),          // out
      .mc11_req_size        (mc5_req_size_o),        // out2
      .mc11_req_vaddr       (mc5_req_vadr_o),        // out48
      .mc11_req_wrd_rdctl   (mc5_req_wrd_rdctl_o),   // out64
      .mc11_req_flush       (mc5_req_flush_o),       // out
      .mc11_rd_rq_stall     (mc5_rd_rq_stall_o),     // in
      .mc11_wr_rq_stall     (mc5_wr_rq_stall_o),     // in
      .mc11_rsp_push        (mc5_rsp_push_o),        // in
      .mc11_rsp_stall       (mc5_rsp_stall_o),       // out
      .mc11_rsp_data        (mc5_rsp_data_o),        // in 64
      .mc11_rsp_rdctl       (mc5_rsp_rdctl_o),       // in 32
      .mc11_rsp_flush_cmplt (mc5_rsp_flush_cmplt_o), // in
      // MC12 port signals
      .mc12_req_ld          (mc6_req_ld_e),          // out
      .mc12_req_st          (mc6_req_st_e),          // out
      .mc12_req_size        (mc6_req_size_e),        // out2
      .mc12_req_vaddr       (mc6_req_vadr_e),        // out48
      .mc12_req_wrd_rdctl   (mc6_req_wrd_rdctl_e),   // out64
      .mc12_req_flush       (mc6_req_flush_e),       // out
      .mc12_rd_rq_stall     (mc6_rd_rq_stall_e),     // in
      .mc12_wr_rq_stall     (mc6_wr_rq_stall_e),     // in
      .mc12_rsp_push        (mc6_rsp_push_e),        // in
      .mc12_rsp_stall       (mc6_rsp_stall_e),       // out
      .mc12_rsp_data        (mc6_rsp_data_e),        // in 64
      .mc12_rsp_rdctl       (mc6_rsp_rdctl_e),       // in 32
      .mc12_rsp_flush_cmplt (mc6_rsp_flush_cmplt_e), // in
      // MC13 port signals
      .mc13_req_ld          (mc6_req_ld_o),          // out
      .mc13_req_st          (mc6_req_st_o),          // out
      .mc13_req_size        (mc6_req_size_o),        // out2
      .mc13_req_vaddr       (mc6_req_vadr_o),        // out48
      .mc13_req_wrd_rdctl   (mc6_req_wrd_rdctl_o),   // out64
      .mc13_req_flush       (mc6_req_flush_o),       // out
      .mc13_rd_rq_stall     (mc6_rd_rq_stall_o),     // in
      .mc13_wr_rq_stall     (mc6_wr_rq_stall_o),     // in
      .mc13_rsp_push        (mc6_rsp_push_o),        // in
      .mc13_rsp_stall       (mc6_rsp_stall_o),       // out
      .mc13_rsp_data        (mc6_rsp_data_o),        // in 64
      .mc13_rsp_rdctl       (mc6_rsp_rdctl_o),       // in 32
      .mc13_rsp_flush_cmplt (mc6_rsp_flush_cmplt_o), // in
      // MC14 port signals
      .mc14_req_ld          (mc7_req_ld_e),          // out
      .mc14_req_st          (mc7_req_st_e),          // out
      .mc14_req_size        (mc7_req_size_e),        // out2
      .mc14_req_vaddr       (mc7_req_vadr_e),        // out48
      .mc14_req_wrd_rdctl   (mc7_req_wrd_rdctl_e),   // out64
      .mc14_req_flush       (mc7_req_flush_e),       // out
      .mc14_rd_rq_stall     (mc7_rd_rq_stall_e),     // in
      .mc14_wr_rq_stall     (mc7_wr_rq_stall_e),     // in
      .mc14_rsp_push        (mc7_rsp_push_e),        // in
      .mc14_rsp_stall       (mc7_rsp_stall_e),       // out
      .mc14_rsp_data        (mc7_rsp_data_e),        // in 64
      .mc14_rsp_rdctl       (mc7_rsp_rdctl_e),       // in 32
      .mc14_rsp_flush_cmplt (mc7_rsp_flush_cmplt_e), // in
      // MC15 port signals
      .mc15_req_ld          (mc7_req_ld_o),          // out
      .mc15_req_st          (mc7_req_st_o),          // out
      .mc15_req_size        (mc7_req_size_o),        // out2
      .mc15_req_vaddr       (mc7_req_vadr_o),        // out48
      .mc15_req_wrd_rdctl   (mc7_req_wrd_rdctl_o),   // out64
      .mc15_req_flush       (mc7_req_flush_o),       // out
      .mc15_rd_rq_stall     (mc7_rd_rq_stall_o),     // in
      .mc15_wr_rq_stall     (mc7_wr_rq_stall_o),     // in
      .mc15_rsp_push        (mc7_rsp_push_o),        // in
      .mc15_rsp_stall       (mc7_rsp_stall_o),       // out
      .mc15_rsp_data        (mc7_rsp_data_o),        // in 64
      .mc15_rsp_rdctl       (mc7_rsp_rdctl_o),       // in 32
      .mc15_rsp_flush_cmplt (mc7_rsp_flush_cmplt_o)  // in
   );


    /* ---------- debug & synopsys off blocks  ---------- */

    // synopsys translate_off

    // Parameters: 1-Severity: Don't Stop, 2-start check only after negedge of reset
    //assert_never #(1, 2, "***ERROR ASSERT: unimplemented instruction cracked") a0 (.clk(clk), .reset_n(~reset), .test_expr(r_unimplemented_inst));

    // synopsys translate_on

endmodule // cae_pers
