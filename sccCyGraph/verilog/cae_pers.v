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
    output [65 :0]    prvae_nd1_tx_data,
    output       prvae_nd1_tx_vld,
    input        prvae_nd1_tx_stall,
    input  [65 :0]    nxtae_nd1_rx_data,
    input        nxtae_nd1_rx_vld,
    output       nxtae_nd1_rx_stall,
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
	// CyGraph registers
	wire cygraph_enable;
	wire cygraph_busy;
	wire cygraph_done;
	wire [63:0] nq_count;
	// SCC intersection registers
	wire scc_enable;
	wire scc_busy;
	wire scc_done;
	wire [63:0] scc_nextv;

	genvar g;
	generate for (g=0; g<NA; g=g+1) begin : g0
		reg [63:0] c_aeg, r_aeg;

		always @* begin
			case (g)
				//TODO: add cases for registers to be written to
				8: c_aeg = (cygraph_busy || cygraph_done) ? nq_count[63:0] : r_aeg;	// c_aeg = cygraph_done ? nq_count[63:0] : r_aeg;
				9: c_aeg = (scc_busy || scc_done) ? scc_nextv[63:0] : r_aeg;		// c_aeg = scc_done ? scc_nextv[63:0] : r_aeg;
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

	reg r_ret_val, r_err_unimpl, r_err_aegidx;
	reg [63:0] r_ret_data;
	wire c_val_aegidx = inst_aeg_idx < NA;

	//return logic
	always @(posedge clk) begin
		r_ret_val    <= inst_aeg_rd && c_val_aegidx;
		r_ret_data   <= w_aeg[inst_aeg_idx[NB-1:0]];
		r_err_aegidx <= (inst_aeg_wr || inst_aeg_rd) && !c_val_aegidx;
		//TODO: add logic to decide which instructions are implemented -- OSAMA
		r_err_unimpl <= err_unimpl || (inst_val && (inst_caep !== 'd0 && inst_caep !== 'd1 /* && inst_caep !== 'd2*/));
	end
	assign cae_ret_data_vld = r_ret_val;
	assign cae_ret_data     = r_ret_data;

	assign cae_exception[1:0] = {r_err_aegidx, r_err_unimpl};

	// ISE can have issues with global wires attached to D(flop)/I(lut) inputs
	wire r_reset;
	FDSE rst (.C(clk_per),.S(reset_per),.CE(r_reset),.D(!r_reset),.Q(r_reset));

	// start triggering CyGraph, SCC_intersection
	reg cy_en, scc_en;
	reg cy_en_temp, scc_en_temp;
	// CyGraph input signals
	reg [63:0] cy_n;
	reg [63:0] non_zeros;
	reg [63:0] graphData;
	reg [63:0] graphInfo;
	reg [63:0] queue1_address;
	reg [63:0] queue2_address;
	reg [63:0] current_level;
	reg [63:0] cq_count;
	reg [63:0] reach_queue;
	// SCC input parameters
	reg [63:0] scc_results;
	reg [63:0] scc_graphInfo;
	reg [63:0] scc_rgraphInfo;
	reg [63:0] scc_fw_addr;
	reg [63:0] scc_fw_count;
	reg [63:0] scc_bw_addr;
	reg [63:0] scc_bw_count;
	reg [63:0] scc_N;
	reg [63:0] scc_color;


	always @(posedge clk) begin
		if(inst_caep == 5'd0 && inst_val) begin
			// start logic for custom instruction
			$display("@simulation: Hello World from simulated CyGraph ae%d", i_aeid);
			cy_en_temp	    <= 1'b1;
			scc_en_temp	    <= 1'b0;
			cy_n            <= w_aeg[0];
			non_zeros       <= w_aeg[1];
			graphData       <= w_aeg[2];
			graphInfo       <= w_aeg[3];
			queue1_address  <= w_aeg[4];
			queue2_address  <= w_aeg[5];
			current_level   <= 64'b1;   // assign current_level = w_aeg[6];
			reach_queue     <= w_aeg[6];
			cq_count        <= w_aeg[7];
			$display("@simulation: CyGraph hardware got enabled!");
		end
		else if(inst_caep == 5'd1 && inst_val) begin
			$display("@simulation: Hello World from simulated SCC ae%d", i_aeid);
			cy_en_temp		<= 1'b0;
			scc_en_temp		<= 1'b1;
			scc_results		<= w_aeg[0];
			scc_graphInfo	<= w_aeg[1];
			scc_rgraphInfo	<= w_aeg[2];
			scc_fw_addr		<= w_aeg[3];
			scc_fw_count	<= w_aeg[4];
			scc_bw_addr		<= w_aeg[5];
			scc_bw_count	<= w_aeg[6];
			scc_color		<= w_aeg[7];
			scc_N			<= w_aeg[8];
			$display("@simulation: SCC Intersection hardware got enabled!");
		end
		else begin
			// $display("@simulation: Unimplemented instruction!");
			cy_en_temp      <= 1'b0;
			scc_en_temp     <= 1'b0;
		end
		cy_en  <= cy_en_temp;
		scc_en <= scc_en_temp;
	end
	assign cygraph_enable	= cy_en;
	assign scc_enable		= scc_en;
	wire inter_enable = cy_en || cy_en_temp || scc_en || scc_en_temp;

	//logic for using cae IMPORTANT. cae_idle should be 0 when executing a custom instruction and 1 otherwise.
	//cae_stall should be 1 when when exectuting a custom instruction and 0 otherwise.
	// assign cae_idle  = 1'b1;
	// assign cae_stall = 1'b0;
	wire c_caep00, c_caep01;
	reg r_caep00, r_caep01;
	assign c_caep00 = (inst_caep == 5'd0) && inst_val;
	assign c_caep01 = (inst_caep == 5'd1) && inst_val;
	always @(posedge clk) begin
		r_caep00 <= c_caep00;
		r_caep01 <= c_caep01;
	end
	assign cae_idle = !r_caep00 && !r_caep01 && !cygraph_busy && !scc_busy && !inter_enable;
	assign cae_stall = c_caep00 || c_caep01 || r_caep00 || r_caep01 || cygraph_busy || scc_busy || inter_enable;
	wire full_reset = r_reset || inst_val;


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

	// CyGraph BFS arguments
	// AE-to-AE interface
	wire [31:0] cy_nxtae_tx_data;
	wire cy_nxtae_tx_vld;
	wire [31:0] cy_prvae_tx_data;
	wire cy_prvae_tx_vld;
	// MC0 even request port signals
	wire cy_mc0_req_ld_e;
	wire cy_mc0_req_st_e;
	wire [1:0] cy_mc0_req_size_e;
	wire [47:0] cy_mc0_req_vadr_e;
	wire [63:0] cy_mc0_req_wrd_rdctl_e;
	wire cy_mc0_req_flush_e;
	// MC0 even response port signals
	wire cy_mc0_rsp_stall_e;
	// MC0 odd request port signals
	wire cy_mc0_req_ld_o;
	wire cy_mc0_req_st_o;
	wire [1:0] cy_mc0_req_size_o;
	wire [47:0] cy_mc0_req_vadr_o;
	wire [63:0] cy_mc0_req_wrd_rdctl_o;
	wire cy_mc0_req_flush_o;
	// MC0 odd response port signals
	wire cy_mc0_rsp_stall_o;
	// MC1 even request port signals
	wire cy_mc1_req_ld_e;
	wire cy_mc1_req_st_e;
	wire [1:0] cy_mc1_req_size_e;
	wire [47:0] cy_mc1_req_vadr_e;
	wire [63:0] cy_mc1_req_wrd_rdctl_e;
	wire cy_mc1_req_flush_e;
	// MC1 even response port signals
	wire cy_mc1_rsp_stall_e;
	// MC1 odd request port signals
	wire cy_mc1_req_ld_o;
	wire cy_mc1_req_st_o;
	wire [1:0] cy_mc1_req_size_o;
	wire [47:0] cy_mc1_req_vadr_o;
	wire [63:0] cy_mc1_req_wrd_rdctl_o;
	wire cy_mc1_req_flush_o;
	// MC1 odd response port signals
	wire cy_mc1_rsp_stall_o;
	// MC2 even request port signals
	wire cy_mc2_req_ld_e;
	wire cy_mc2_req_st_e;
	wire [1:0] cy_mc2_req_size_e;
	wire [47:0] cy_mc2_req_vadr_e;
	wire [63:0] cy_mc2_req_wrd_rdctl_e;
	wire cy_mc2_req_flush_e;
	// MC2 even response port signals
	wire cy_mc2_rsp_stall_e;
	// MC2 odd request port signals
	wire cy_mc2_req_ld_o;
	wire cy_mc2_req_st_o;
	wire [1:0] cy_mc2_req_size_o;
	wire [47:0] cy_mc2_req_vadr_o;
	wire [63:0] cy_mc2_req_wrd_rdctl_o;
	wire cy_mc2_req_flush_o;
	// MC2 odd response port signals
	wire cy_mc2_rsp_stall_o;
	// MC3 even request port signals
	wire cy_mc3_req_ld_e;
	wire cy_mc3_req_st_e;
	wire [1:0] cy_mc3_req_size_e;
	wire [47:0] cy_mc3_req_vadr_e;
	wire [63:0] cy_mc3_req_wrd_rdctl_e;
	wire cy_mc3_req_flush_e;
	// MC3 even response port signals
	wire cy_mc3_rsp_stall_e;
	// MC3 odd request port signals
	wire cy_mc3_req_ld_o;
	wire cy_mc3_req_st_o;
	wire [1:0] cy_mc3_req_size_o;
	wire [47:0] cy_mc3_req_vadr_o;
	wire [63:0] cy_mc3_req_wrd_rdctl_o;
	wire cy_mc3_req_flush_o;
	// MC3 odd response port signals
	wire cy_mc3_rsp_stall_o;
	// MC4 even request port signals
	wire cy_mc4_req_ld_e;
	wire cy_mc4_req_st_e;
	wire [1:0] cy_mc4_req_size_e;
	wire [47:0] cy_mc4_req_vadr_e;
	wire [63:0] cy_mc4_req_wrd_rdctl_e;
	wire cy_mc4_req_flush_e;
	// MC4 even response port signals
	wire cy_mc4_rsp_stall_e;
	// MC4 odd request port signals
	wire cy_mc4_req_ld_o;
	wire cy_mc4_req_st_o;
	wire [1:0] cy_mc4_req_size_o;
	wire [47:0] cy_mc4_req_vadr_o;
	wire [63:0] cy_mc4_req_wrd_rdctl_o;
	wire cy_mc4_req_flush_o;
	// MC4 odd response port signals
	wire cy_mc4_rsp_stall_o;
	// MC5 even request port signals
	wire cy_mc5_req_ld_e;
	wire cy_mc5_req_st_e;
	wire [1:0] cy_mc5_req_size_e;
	wire [47:0] cy_mc5_req_vadr_e;
	wire [63:0] cy_mc5_req_wrd_rdctl_e;
	wire cy_mc5_req_flush_e;
	// MC5 even response port signals
	wire cy_mc5_rsp_stall_e;
	// MC5 odd request port signals
	wire cy_mc5_req_ld_o;
	wire cy_mc5_req_st_o;
	wire [1:0] cy_mc5_req_size_o;
	wire [47:0] cy_mc5_req_vadr_o;
	wire [63:0] cy_mc5_req_wrd_rdctl_o;
	wire cy_mc5_req_flush_o;
	// MC5 odd response port signals
	wire cy_mc5_rsp_stall_o;
	// MC6 even request port signals
	wire cy_mc6_req_ld_e;
	wire cy_mc6_req_st_e;
	wire [1:0] cy_mc6_req_size_e;
	wire [47:0] cy_mc6_req_vadr_e;
	wire [63:0] cy_mc6_req_wrd_rdctl_e;
	wire cy_mc6_req_flush_e;
	// MC6 even response port signals
	wire cy_mc6_rsp_stall_e;
	// MC6 odd request port signals
	wire cy_mc6_req_ld_o;
	wire cy_mc6_req_st_o;
	wire [1:0] cy_mc6_req_size_o;
	wire [47:0] cy_mc6_req_vadr_o;
	wire [63:0] cy_mc6_req_wrd_rdctl_o;
	wire cy_mc6_req_flush_o;
	// MC6 odd response port signals
	wire cy_mc6_rsp_stall_o;
	// MC7 even request port signals
	wire cy_mc7_req_ld_e;
	wire cy_mc7_req_st_e;
	wire [1:0] cy_mc7_req_size_e;
	wire [47:0] cy_mc7_req_vadr_e;
	wire [63:0] cy_mc7_req_wrd_rdctl_e;
	wire cy_mc7_req_flush_e;
	// MC7 even response port signals
	wire cy_mc7_rsp_stall_e;
	// MC7 odd request port signals
	wire cy_mc7_req_ld_o;
	wire cy_mc7_req_st_o;
	wire [1:0] cy_mc7_req_size_o;
	wire [47:0] cy_mc7_req_vadr_o;
	wire [63:0] cy_mc7_req_wrd_rdctl_o;
	wire cy_mc7_req_flush_o;
	// MC7 odd response port signals
	wire cy_mc7_rsp_stall_o;

	// SCC Intersection arguments
	// AE-to-AE interface
	wire [31:0] scc_nxtae_tx_data;
	wire scc_nxtae_tx_vld;
	wire [31:0] scc_prvae_tx_data;
	wire scc_prvae_tx_vld;
	// MC0 even request port signals
	wire scc_mc0_req_ld_e;
	wire scc_mc0_req_st_e;
	wire [1:0] scc_mc0_req_size_e;
	wire [47:0] scc_mc0_req_vadr_e;
	wire [63:0] scc_mc0_req_wrd_rdctl_e;
	wire scc_mc0_req_flush_e;
	// MC0 even response port signals
	wire scc_mc0_rsp_stall_e;
	// MC0 odd request port signals
	wire scc_mc0_req_ld_o;
	wire scc_mc0_req_st_o;
	wire [1:0] scc_mc0_req_size_o;
	wire [47:0] scc_mc0_req_vadr_o;
	wire [63:0] scc_mc0_req_wrd_rdctl_o;
	wire scc_mc0_req_flush_o;
	// MC0 odd response port signals
	wire scc_mc0_rsp_stall_o;
	// MC1 even request port signals
	wire scc_mc1_req_ld_e;
	wire scc_mc1_req_st_e;
	wire [1:0] scc_mc1_req_size_e;
	wire [47:0] scc_mc1_req_vadr_e;
	wire [63:0] scc_mc1_req_wrd_rdctl_e;
	wire scc_mc1_req_flush_e;
	// MC1 even response port signals
	wire scc_mc1_rsp_stall_e;
	// MC1 odd request port signals
	wire scc_mc1_req_ld_o;
	wire scc_mc1_req_st_o;
	wire [1:0] scc_mc1_req_size_o;
	wire [47:0] scc_mc1_req_vadr_o;
	wire [63:0] scc_mc1_req_wrd_rdctl_o;
	wire scc_mc1_req_flush_o;
	// MC1 odd response port signals
	wire scc_mc1_rsp_stall_o;
	// MC2 even request port signals
	wire scc_mc2_req_ld_e;
	wire scc_mc2_req_st_e;
	wire [1:0] scc_mc2_req_size_e;
	wire [47:0] scc_mc2_req_vadr_e;
	wire [63:0] scc_mc2_req_wrd_rdctl_e;
	wire scc_mc2_req_flush_e;
	// MC2 even response port signals
	wire scc_mc2_rsp_stall_e;
	// MC2 odd request port signals
	wire scc_mc2_req_ld_o;
	wire scc_mc2_req_st_o;
	wire [1:0] scc_mc2_req_size_o;
	wire [47:0] scc_mc2_req_vadr_o;
	wire [63:0] scc_mc2_req_wrd_rdctl_o;
	wire scc_mc2_req_flush_o;
	// MC2 odd response port signals
	wire scc_mc2_rsp_stall_o;
	// MC3 even request port signals
	wire scc_mc3_req_ld_e;
	wire scc_mc3_req_st_e;
	wire [1:0] scc_mc3_req_size_e;
	wire [47:0] scc_mc3_req_vadr_e;
	wire [63:0] scc_mc3_req_wrd_rdctl_e;
	wire scc_mc3_req_flush_e;
	// MC3 even response port signals
	wire scc_mc3_rsp_stall_e;
	// MC3 odd request port signals
	wire scc_mc3_req_ld_o;
	wire scc_mc3_req_st_o;
	wire [1:0] scc_mc3_req_size_o;
	wire [47:0] scc_mc3_req_vadr_o;
	wire [63:0] scc_mc3_req_wrd_rdctl_o;
	wire scc_mc3_req_flush_o;
	// MC3 odd response port signals
	wire scc_mc3_rsp_stall_o;
	// MC4 even request port signals
	wire scc_mc4_req_ld_e;
	wire scc_mc4_req_st_e;
	wire [1:0] scc_mc4_req_size_e;
	wire [47:0] scc_mc4_req_vadr_e;
	wire [63:0] scc_mc4_req_wrd_rdctl_e;
	wire scc_mc4_req_flush_e;
	// MC4 even response port signals
	wire scc_mc4_rsp_stall_e;
	// MC4 odd request port signals
	wire scc_mc4_req_ld_o;
	wire scc_mc4_req_st_o;
	wire [1:0] scc_mc4_req_size_o;
	wire [47:0] scc_mc4_req_vadr_o;
	wire [63:0] scc_mc4_req_wrd_rdctl_o;
	wire scc_mc4_req_flush_o;
	// MC4 odd response port signals
	wire scc_mc4_rsp_stall_o;
	// MC5 even request port signals
	wire scc_mc5_req_ld_e;
	wire scc_mc5_req_st_e;
	wire [1:0] scc_mc5_req_size_e;
	wire [47:0] scc_mc5_req_vadr_e;
	wire [63:0] scc_mc5_req_wrd_rdctl_e;
	wire scc_mc5_req_flush_e;
	// MC5 even response port signals
	wire scc_mc5_rsp_stall_e;
	// MC5 odd request port signals
	wire scc_mc5_req_ld_o;
	wire scc_mc5_req_st_o;
	wire [1:0] scc_mc5_req_size_o;
	wire [47:0] scc_mc5_req_vadr_o;
	wire [63:0] scc_mc5_req_wrd_rdctl_o;
	wire scc_mc5_req_flush_o;
	// MC5 odd response port signals
	wire scc_mc5_rsp_stall_o;
	// MC6 even request port signals
	wire scc_mc6_req_ld_e;
	wire scc_mc6_req_st_e;
	wire [1:0] scc_mc6_req_size_e;
	wire [47:0] scc_mc6_req_vadr_e;
	wire [63:0] scc_mc6_req_wrd_rdctl_e;
	wire scc_mc6_req_flush_e;
	// MC6 even response port signals
	wire scc_mc6_rsp_stall_e;
	// MC6 odd request port signals
	wire scc_mc6_req_ld_o;
	wire scc_mc6_req_st_o;
	wire [1:0] scc_mc6_req_size_o;
	wire [47:0] scc_mc6_req_vadr_o;
	wire [63:0] scc_mc6_req_wrd_rdctl_o;
	wire scc_mc6_req_flush_o;
	// MC6 odd response port signals
	wire scc_mc6_rsp_stall_o;
	// MC7 even request port signals
	wire scc_mc7_req_ld_e;
	wire scc_mc7_req_st_e;
	wire [1:0] scc_mc7_req_size_e;
	wire [47:0] scc_mc7_req_vadr_e;
	wire [63:0] scc_mc7_req_wrd_rdctl_e;
	wire scc_mc7_req_flush_e;
	// MC7 even response port signals
	wire scc_mc7_rsp_stall_e;
	// MC7 odd request port signals
	wire scc_mc7_req_ld_o;
	wire scc_mc7_req_st_o;
	wire [1:0] scc_mc7_req_size_o;
	wire [47:0] scc_mc7_req_vadr_o;
	wire [63:0] scc_mc7_req_wrd_rdctl_o;
	wire scc_mc7_req_flush_o;
	// MC7 odd response port signals
	wire scc_mc7_rsp_stall_o;

	// Instaintaite CyGraph module
	cygraph cygraph_inst (
		// control signals
		.clk                 (clk_per),               // in
		.rst                 (full_reset),            // in
		.enable              (cygraph_enable),        // in
		.busy                (cygraph_busy),          // out
		.done                (cygraph_done),          // out
		// ae-to-ae signals
		.ae_id               (i_aeid),                // in
		.nxtae_rx_data       (nxtae_rx_data),         // in 32
		.nxtae_rx_vld        (nxtae_rx_vld),          // in
		.prvae_rx_data       (prvae_rx_data),         // in 32
		.prvae_rx_vld        (prvae_rx_vld),          // in
		.nxtae_tx_data       (cy_nxtae_tx_data),      // out 32
		.nxtae_tx_vld        (cy_nxtae_tx_vld),       // out
		.prvae_tx_data       (cy_prvae_tx_data),      // out 32
		.prvae_tx_vld        (cy_prvae_tx_vld),       // out
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
		.reach_queue_in      (reach_queue),           // in 64
		// MC0 port signals
		.mc0_req_ld          (cy_mc0_req_ld_e),       // out
		.mc0_req_st          (cy_mc0_req_st_e),       // out
		.mc0_req_size        (cy_mc0_req_size_e),     // out 2
		.mc0_req_vaddr       (cy_mc0_req_vadr_e),     // out 48
		.mc0_req_wrd_rdctl   (cy_mc0_req_wrd_rdctl_e),// out 64
		.mc0_req_flush       (cy_mc0_req_flush_e),    // out
		.mc0_rd_rq_stall     (mc0_rd_rq_stall_e),     // in
		.mc0_wr_rq_stall     (mc0_wr_rq_stall_e),     // in
		.mc0_rsp_push        (mc0_rsp_push_e),        // in
		.mc0_rsp_stall       (cy_mc0_rsp_stall_e),    // out
		.mc0_rsp_data        (mc0_rsp_data_e),        // in 64
		.mc0_rsp_rdctl       (mc0_rsp_rdctl_e),       // in 32
		.mc0_rsp_flush_cmplt (mc0_rsp_flush_cmplt_e), // in
		// MC1 port signals
		.mc1_req_ld          (cy_mc0_req_ld_o),       // out
		.mc1_req_st          (cy_mc0_req_st_o),       // out
		.mc1_req_size        (cy_mc0_req_size_o),     // out 2
		.mc1_req_vaddr       (cy_mc0_req_vadr_o),     // out 48
		.mc1_req_wrd_rdctl   (cy_mc0_req_wrd_rdctl_o),// out 64
		.mc1_req_flush       (cy_mc0_req_flush_o),    // out
		.mc1_rd_rq_stall     (mc0_rd_rq_stall_o),     // in
		.mc1_wr_rq_stall     (mc0_wr_rq_stall_o),     // in
		.mc1_rsp_push        (mc0_rsp_push_o),        // in
		.mc1_rsp_stall       (cy_mc0_rsp_stall_o),    // out
		.mc1_rsp_data        (mc0_rsp_data_o),        // in 64
		.mc1_rsp_rdctl       (mc0_rsp_rdctl_o),       // in 32
		.mc1_rsp_flush_cmplt (mc0_rsp_flush_cmplt_o), // in
		// MC2 port signals
		.mc2_req_ld          (cy_mc1_req_ld_e),       // out
		.mc2_req_st          (cy_mc1_req_st_e),       // out
		.mc2_req_size        (cy_mc1_req_size_e),     // out 2
		.mc2_req_vaddr       (cy_mc1_req_vadr_e),     // out 48
		.mc2_req_wrd_rdctl   (cy_mc1_req_wrd_rdctl_e),// out 64
		.mc2_req_flush       (cy_mc1_req_flush_e),    // out
		.mc2_rd_rq_stall     (mc1_rd_rq_stall_e),     // in
		.mc2_wr_rq_stall     (mc1_wr_rq_stall_e),     // in
		.mc2_rsp_push        (mc1_rsp_push_e),        // in
		.mc2_rsp_stall       (cy_mc1_rsp_stall_e),    // out
		.mc2_rsp_data        (mc1_rsp_data_e),        // in 64
		.mc2_rsp_rdctl       (mc1_rsp_rdctl_e),       // in 32
		.mc2_rsp_flush_cmplt (mc1_rsp_flush_cmplt_e), // in
		// MC3 port signals
		.mc3_req_ld          (cy_mc1_req_ld_o),       // out
		.mc3_req_st          (cy_mc1_req_st_o),       // out
		.mc3_req_size        (cy_mc1_req_size_o),     // out 2
		.mc3_req_vaddr       (cy_mc1_req_vadr_o),     // out 48
		.mc3_req_wrd_rdctl   (cy_mc1_req_wrd_rdctl_o),// out 64
		.mc3_req_flush       (cy_mc1_req_flush_o),    // out
		.mc3_rd_rq_stall     (mc1_rd_rq_stall_o),     // in
		.mc3_wr_rq_stall     (mc1_wr_rq_stall_o),     // in
		.mc3_rsp_push        (mc1_rsp_push_o),        // in
		.mc3_rsp_stall       (cy_mc1_rsp_stall_o),    // out
		.mc3_rsp_data        (mc1_rsp_data_o),        // in 64
		.mc3_rsp_rdctl       (mc1_rsp_rdctl_o),       // in 32
		.mc3_rsp_flush_cmplt (mc1_rsp_flush_cmplt_o), // in
		// MC4 port signals
		.mc4_req_ld          (cy_mc2_req_ld_e),       // out
		.mc4_req_st          (cy_mc2_req_st_e),       // out
		.mc4_req_size        (cy_mc2_req_size_e),     // out 2
		.mc4_req_vaddr       (cy_mc2_req_vadr_e),     // out 48
		.mc4_req_wrd_rdctl   (cy_mc2_req_wrd_rdctl_e),// out 64
		.mc4_req_flush       (cy_mc2_req_flush_e),    // out
		.mc4_rd_rq_stall     (mc2_rd_rq_stall_e),     // in
		.mc4_wr_rq_stall     (mc2_wr_rq_stall_e),     // in
		.mc4_rsp_push        (mc2_rsp_push_e),        // in
		.mc4_rsp_stall       (cy_mc2_rsp_stall_e),    // out
		.mc4_rsp_data        (mc2_rsp_data_e),        // in 64
		.mc4_rsp_rdctl       (mc2_rsp_rdctl_e),       // in 32
		.mc4_rsp_flush_cmplt (mc2_rsp_flush_cmplt_e), // in
		// MC5 port signals
		.mc5_req_ld          (cy_mc2_req_ld_o),       // out
		.mc5_req_st          (cy_mc2_req_st_o),       // out
		.mc5_req_size        (cy_mc2_req_size_o),     // out 2
		.mc5_req_vaddr       (cy_mc2_req_vadr_o),     // out 48
		.mc5_req_wrd_rdctl   (cy_mc2_req_wrd_rdctl_o),// out 64
		.mc5_req_flush       (cy_mc2_req_flush_o),    // out
		.mc5_rd_rq_stall     (mc2_rd_rq_stall_o),     // in
		.mc5_wr_rq_stall     (mc2_wr_rq_stall_o),     // in
		.mc5_rsp_push        (mc2_rsp_push_o),        // in
		.mc5_rsp_stall       (cy_mc2_rsp_stall_o),    // out
		.mc5_rsp_data        (mc2_rsp_data_o),        // in 64
		.mc5_rsp_rdctl       (mc2_rsp_rdctl_o),       // in 32
		.mc5_rsp_flush_cmplt (mc2_rsp_flush_cmplt_o), // in
		// MC6 port signals
		.mc6_req_ld          (cy_mc3_req_ld_e),       // out
		.mc6_req_st          (cy_mc3_req_st_e),       // out
		.mc6_req_size        (cy_mc3_req_size_e),     // out 2
		.mc6_req_vaddr       (cy_mc3_req_vadr_e),     // out 48
		.mc6_req_wrd_rdctl   (cy_mc3_req_wrd_rdctl_e),// out 64
		.mc6_req_flush       (cy_mc3_req_flush_e),    // out
		.mc6_rd_rq_stall     (mc3_rd_rq_stall_e),     // in
		.mc6_wr_rq_stall     (mc3_wr_rq_stall_e),     // in
		.mc6_rsp_push        (mc3_rsp_push_e),        // in
		.mc6_rsp_stall       (cy_mc3_rsp_stall_e),    // out
		.mc6_rsp_data        (mc3_rsp_data_e),        // in 64
		.mc6_rsp_rdctl       (mc3_rsp_rdctl_e),       // in 32
		.mc6_rsp_flush_cmplt (mc3_rsp_flush_cmplt_e), // in
		// MC7 port signals
		.mc7_req_ld          (cy_mc3_req_ld_o),       // out
		.mc7_req_st          (cy_mc3_req_st_o),       // out
		.mc7_req_size        (cy_mc3_req_size_o),     // out 2
		.mc7_req_vaddr       (cy_mc3_req_vadr_o),     // out 48
		.mc7_req_wrd_rdctl   (cy_mc3_req_wrd_rdctl_o),// out 64
		.mc7_req_flush       (cy_mc3_req_flush_o),    // out
		.mc7_rd_rq_stall     (mc3_rd_rq_stall_o),     // in
		.mc7_wr_rq_stall     (mc3_wr_rq_stall_o),     // in
		.mc7_rsp_push        (mc3_rsp_push_o),        // in
		.mc7_rsp_stall       (cy_mc3_rsp_stall_o),    // out
		.mc7_rsp_data        (mc3_rsp_data_o),        // in 64
		.mc7_rsp_rdctl       (mc3_rsp_rdctl_o),       // in 32
		.mc7_rsp_flush_cmplt (mc3_rsp_flush_cmplt_o), // in
		// MC8 port signals
		.mc8_req_ld          (cy_mc4_req_ld_e),       // out
		.mc8_req_st          (cy_mc4_req_st_e),       // out
		.mc8_req_size        (cy_mc4_req_size_e),     // out 2
		.mc8_req_vaddr       (cy_mc4_req_vadr_e),     // out 48
		.mc8_req_wrd_rdctl   (cy_mc4_req_wrd_rdctl_e),// out 64
		.mc8_req_flush       (cy_mc4_req_flush_e),    // out
		.mc8_rd_rq_stall     (mc4_rd_rq_stall_e),     // in
		.mc8_wr_rq_stall     (mc4_wr_rq_stall_e),     // in
		.mc8_rsp_push        (mc4_rsp_push_e),        // in
		.mc8_rsp_stall       (cy_mc4_rsp_stall_e),    // out
		.mc8_rsp_data        (mc4_rsp_data_e),        // in 64
		.mc8_rsp_rdctl       (mc4_rsp_rdctl_e),       // in 32
		.mc8_rsp_flush_cmplt (mc4_rsp_flush_cmplt_e), // in
		// MC9 port signals
		.mc9_req_ld          (cy_mc4_req_ld_o),       // out
		.mc9_req_st          (cy_mc4_req_st_o),       // out
		.mc9_req_size        (cy_mc4_req_size_o),     // out 2
		.mc9_req_vaddr       (cy_mc4_req_vadr_o),     // out 48
		.mc9_req_wrd_rdctl   (cy_mc4_req_wrd_rdctl_o),// out 64
		.mc9_req_flush       (cy_mc4_req_flush_o),    // out
		.mc9_rd_rq_stall     (mc4_rd_rq_stall_o),     // in
		.mc9_wr_rq_stall     (mc4_wr_rq_stall_o),     // in
		.mc9_rsp_push        (mc4_rsp_push_o),        // in
		.mc9_rsp_stall       (cy_mc4_rsp_stall_o),    // out
		.mc9_rsp_data        (mc4_rsp_data_o),        // in 64
		.mc9_rsp_rdctl       (mc4_rsp_rdctl_o),       // in 32
		.mc9_rsp_flush_cmplt (mc4_rsp_flush_cmplt_o), // in
		// MC10 port signals
		.mc10_req_ld          (cy_mc5_req_ld_e),       // out
		.mc10_req_st          (cy_mc5_req_st_e),       // out
		.mc10_req_size        (cy_mc5_req_size_e),     // out 2
		.mc10_req_vaddr       (cy_mc5_req_vadr_e),     // out 48
		.mc10_req_wrd_rdctl   (cy_mc5_req_wrd_rdctl_e),// out 64
		.mc10_req_flush       (cy_mc5_req_flush_e),    // out
		.mc10_rd_rq_stall     (mc5_rd_rq_stall_e),     // in
		.mc10_wr_rq_stall     (mc5_wr_rq_stall_e),     // in
		.mc10_rsp_push        (mc5_rsp_push_e),        // in
		.mc10_rsp_stall       (cy_mc5_rsp_stall_e),    // out
		.mc10_rsp_data        (mc5_rsp_data_e),        // in 64
		.mc10_rsp_rdctl       (mc5_rsp_rdctl_e),       // in 32
		.mc10_rsp_flush_cmplt (mc5_rsp_flush_cmplt_e), // in
		// MC11 port signals
		.mc11_req_ld          (cy_mc5_req_ld_o),       // out
		.mc11_req_st          (cy_mc5_req_st_o),       // out
		.mc11_req_size        (cy_mc5_req_size_o),     // out 2
		.mc11_req_vaddr       (cy_mc5_req_vadr_o),     // out 48
		.mc11_req_wrd_rdctl   (cy_mc5_req_wrd_rdctl_o),// out 64
		.mc11_req_flush       (cy_mc5_req_flush_o),    // out
		.mc11_rd_rq_stall     (mc5_rd_rq_stall_o),     // in
		.mc11_wr_rq_stall     (mc5_wr_rq_stall_o),     // in
		.mc11_rsp_push        (mc5_rsp_push_o),        // in
		.mc11_rsp_stall       (cy_mc5_rsp_stall_o),    // out
		.mc11_rsp_data        (mc5_rsp_data_o),        // in 64
		.mc11_rsp_rdctl       (mc5_rsp_rdctl_o),       // in 32
		.mc11_rsp_flush_cmplt (mc5_rsp_flush_cmplt_o), // in
		// MC12 port signals
		.mc12_req_ld          (cy_mc6_req_ld_e),       // out
		.mc12_req_st          (cy_mc6_req_st_e),       // out
		.mc12_req_size        (cy_mc6_req_size_e),     // out 2
		.mc12_req_vaddr       (cy_mc6_req_vadr_e),     // out 48
		.mc12_req_wrd_rdctl   (cy_mc6_req_wrd_rdctl_e),// out 64
		.mc12_req_flush       (cy_mc6_req_flush_e),    // out
		.mc12_rd_rq_stall     (mc6_rd_rq_stall_e),     // in
		.mc12_wr_rq_stall     (mc6_wr_rq_stall_e),     // in
		.mc12_rsp_push        (mc6_rsp_push_e),        // in
		.mc12_rsp_stall       (cy_mc6_rsp_stall_e),    // out
		.mc12_rsp_data        (mc6_rsp_data_e),        // in 64
		.mc12_rsp_rdctl       (mc6_rsp_rdctl_e),       // in 32
		.mc12_rsp_flush_cmplt (mc6_rsp_flush_cmplt_e), // in
		// MC13 port signals
		.mc13_req_ld          (cy_mc6_req_ld_o),       // out
		.mc13_req_st          (cy_mc6_req_st_o),       // out
		.mc13_req_size        (cy_mc6_req_size_o),     // out 2
		.mc13_req_vaddr       (cy_mc6_req_vadr_o),     // out 48
		.mc13_req_wrd_rdctl   (cy_mc6_req_wrd_rdctl_o),// out 64
		.mc13_req_flush       (cy_mc6_req_flush_o),    // out
		.mc13_rd_rq_stall     (mc6_rd_rq_stall_o),     // in
		.mc13_wr_rq_stall     (mc6_wr_rq_stall_o),     // in
		.mc13_rsp_push        (mc6_rsp_push_o),        // in
		.mc13_rsp_stall       (cy_mc6_rsp_stall_o),    // out
		.mc13_rsp_data        (mc6_rsp_data_o),        // in 64
		.mc13_rsp_rdctl       (mc6_rsp_rdctl_o),       // in 32
		.mc13_rsp_flush_cmplt (mc6_rsp_flush_cmplt_o), // in
		// MC14 port signals
		.mc14_req_ld          (cy_mc7_req_ld_e),       // out
		.mc14_req_st          (cy_mc7_req_st_e),       // out
		.mc14_req_size        (cy_mc7_req_size_e),     // out 2
		.mc14_req_vaddr       (cy_mc7_req_vadr_e),     // out 48
		.mc14_req_wrd_rdctl   (cy_mc7_req_wrd_rdctl_e),// out 64
		.mc14_req_flush       (cy_mc7_req_flush_e),    // out
		.mc14_rd_rq_stall     (mc7_rd_rq_stall_e),     // in
		.mc14_wr_rq_stall     (mc7_wr_rq_stall_e),     // in
		.mc14_rsp_push        (mc7_rsp_push_e),        // in
		.mc14_rsp_stall       (cy_mc7_rsp_stall_e),    // out
		.mc14_rsp_data        (mc7_rsp_data_e),        // in 64
		.mc14_rsp_rdctl       (mc7_rsp_rdctl_e),       // in 32
		.mc14_rsp_flush_cmplt (mc7_rsp_flush_cmplt_e), // in
		// MC15 port signals
		.mc15_req_ld          (cy_mc7_req_ld_o),       // out
		.mc15_req_st          (cy_mc7_req_st_o),       // out
		.mc15_req_size        (cy_mc7_req_size_o),     // out 2
		.mc15_req_vaddr       (cy_mc7_req_vadr_o),     // out 48
		.mc15_req_wrd_rdctl   (cy_mc7_req_wrd_rdctl_o),// out 64
		.mc15_req_flush       (cy_mc7_req_flush_o),    // out
		.mc15_rd_rq_stall     (mc7_rd_rq_stall_o),     // in
		.mc15_wr_rq_stall     (mc7_wr_rq_stall_o),     // in
		.mc15_rsp_push        (mc7_rsp_push_o),        // in
		.mc15_rsp_stall       (cy_mc7_rsp_stall_o),    // out
		.mc15_rsp_data        (mc7_rsp_data_o),        // in 64
		.mc15_rsp_rdctl       (mc7_rsp_rdctl_o),       // in 32
		.mc15_rsp_flush_cmplt (mc7_rsp_flush_cmplt_o)  // in
	);

	// Instaintaite SCC Intersection module
	scc scc_inst (
		// control signals
		.clk                 (clk_per),                // in
		.rst                 (full_reset),             // in
		.enable              (scc_enable),             // in
		.busy                (scc_busy),               // out
		.done                (scc_done),               // out
		// SCC Parameters
		.color_in			 (scc_color),              // in 64
		.scc_addr_in         (scc_results),            // in 64
		.nextv_out			 (scc_nextv),              // out 64
		// Graph/ReversedGraph Pointers
		.n_in				 (scc_N),                  // in 64
		.graph_info_in		 (scc_graphInfo),          // in 64
		.rgraph_info_in	     (scc_rgraphInfo),         // in 64
		// Reach queues pointers
		.fw_addr_in			 (scc_fw_addr),            // in 64
		.fw_count_in		 (scc_fw_count),           // in 64
		.bw_addr_in			 (scc_bw_addr),            // in 64
		.bw_count_in		 (scc_bw_count),           // in 64
		// ae-to-ae signals
		.ae_id               (i_aeid),                 // in
		.nxtae_rx_data       (nxtae_rx_data),          // in 32
		.nxtae_rx_vld        (nxtae_rx_vld),           // in
		.prvae_rx_data       (prvae_rx_data),          // in 32
		.prvae_rx_vld        (prvae_rx_vld),           // in
		.nxtae_tx_data       (scc_nxtae_tx_data),      // out 32
		.nxtae_tx_vld        (scc_nxtae_tx_vld),       // out
		.prvae_tx_data       (scc_prvae_tx_data),      // out 32
		.prvae_tx_vld        (scc_prvae_tx_vld),       // out
		// MC0 port signals
		.mc0_req_ld          (scc_mc0_req_ld_e),       // out
		.mc0_req_st          (scc_mc0_req_st_e),       // out
		.mc0_req_size        (scc_mc0_req_size_e),     // out 2
		.mc0_req_vaddr       (scc_mc0_req_vadr_e),     // out 48
		.mc0_req_wrd_rdctl   (scc_mc0_req_wrd_rdctl_e),// out 64
		.mc0_req_flush       (scc_mc0_req_flush_e),    // out
		.mc0_rd_rq_stall     (mc0_rd_rq_stall_e),      // in
		.mc0_wr_rq_stall     (mc0_wr_rq_stall_e),      // in
		.mc0_rsp_push        (mc0_rsp_push_e),         // in
		.mc0_rsp_stall       (scc_mc0_rsp_stall_e),    // out
		.mc0_rsp_data        (mc0_rsp_data_e),         // in 64
		.mc0_rsp_rdctl       (mc0_rsp_rdctl_e),        // in 32
		.mc0_rsp_flush_cmplt (mc0_rsp_flush_cmplt_e),  // in
		// MC1 port signals
		.mc1_req_ld          (scc_mc0_req_ld_o),       // out
		.mc1_req_st          (scc_mc0_req_st_o),       // out
		.mc1_req_size        (scc_mc0_req_size_o),     // out 2
		.mc1_req_vaddr       (scc_mc0_req_vadr_o),     // out 48
		.mc1_req_wrd_rdctl   (scc_mc0_req_wrd_rdctl_o),// out 64
		.mc1_req_flush       (scc_mc0_req_flush_o),    // out
		.mc1_rd_rq_stall     (mc0_rd_rq_stall_o),      // in
		.mc1_wr_rq_stall     (mc0_wr_rq_stall_o),      // in
		.mc1_rsp_push        (mc0_rsp_push_o),         // in
		.mc1_rsp_stall       (scc_mc0_rsp_stall_o),    // out
		.mc1_rsp_data        (mc0_rsp_data_o),         // in 64
		.mc1_rsp_rdctl       (mc0_rsp_rdctl_o),        // in 32
		.mc1_rsp_flush_cmplt (mc0_rsp_flush_cmplt_o),  // in
		// MC2 port signals
		.mc2_req_ld          (scc_mc1_req_ld_e),       // out
		.mc2_req_st          (scc_mc1_req_st_e),       // out
		.mc2_req_size        (scc_mc1_req_size_e),     // out 2
		.mc2_req_vaddr       (scc_mc1_req_vadr_e),     // out 48
		.mc2_req_wrd_rdctl   (scc_mc1_req_wrd_rdctl_e),// out 64
		.mc2_req_flush       (scc_mc1_req_flush_e),    // out
		.mc2_rd_rq_stall     (mc1_rd_rq_stall_e),      // in
		.mc2_wr_rq_stall     (mc1_wr_rq_stall_e),      // in
		.mc2_rsp_push        (mc1_rsp_push_e),         // in
		.mc2_rsp_stall       (scc_mc1_rsp_stall_e),    // out
		.mc2_rsp_data        (mc1_rsp_data_e),         // in 64
		.mc2_rsp_rdctl       (mc1_rsp_rdctl_e),        // in 32
		.mc2_rsp_flush_cmplt (mc1_rsp_flush_cmplt_e),  // in
		// MC3 port signals
		.mc3_req_ld          (scc_mc1_req_ld_o),       // out
		.mc3_req_st          (scc_mc1_req_st_o),       // out
		.mc3_req_size        (scc_mc1_req_size_o),     // out 2
		.mc3_req_vaddr       (scc_mc1_req_vadr_o),     // out 48
		.mc3_req_wrd_rdctl   (scc_mc1_req_wrd_rdctl_o),// out 64
		.mc3_req_flush       (scc_mc1_req_flush_o),    // out
		.mc3_rd_rq_stall     (mc1_rd_rq_stall_o),      // in
		.mc3_wr_rq_stall     (mc1_wr_rq_stall_o),      // in
		.mc3_rsp_push        (mc1_rsp_push_o),         // in
		.mc3_rsp_stall       (scc_mc1_rsp_stall_o),    // out
		.mc3_rsp_data        (mc1_rsp_data_o),         // in 64
		.mc3_rsp_rdctl       (mc1_rsp_rdctl_o),        // in 32
		.mc3_rsp_flush_cmplt (mc1_rsp_flush_cmplt_o),  // in
		// MC4 port signals
		.mc4_req_ld          (scc_mc2_req_ld_e),       // out
		.mc4_req_st          (scc_mc2_req_st_e),       // out
		.mc4_req_size        (scc_mc2_req_size_e),     // out 2
		.mc4_req_vaddr       (scc_mc2_req_vadr_e),     // out 48
		.mc4_req_wrd_rdctl   (scc_mc2_req_wrd_rdctl_e),// out 64
		.mc4_req_flush       (scc_mc2_req_flush_e),    // out
		.mc4_rd_rq_stall     (mc2_rd_rq_stall_e),      // in
		.mc4_wr_rq_stall     (mc2_wr_rq_stall_e),      // in
		.mc4_rsp_push        (mc2_rsp_push_e),         // in
		.mc4_rsp_stall       (scc_mc2_rsp_stall_e),    // out
		.mc4_rsp_data        (mc2_rsp_data_e),         // in 64
		.mc4_rsp_rdctl       (mc2_rsp_rdctl_e),        // in 32
		.mc4_rsp_flush_cmplt (mc2_rsp_flush_cmplt_e),  // in
		// MC5 port signals
		.mc5_req_ld          (scc_mc2_req_ld_o),       // out
		.mc5_req_st          (scc_mc2_req_st_o),       // out
		.mc5_req_size        (scc_mc2_req_size_o),     // out 2
		.mc5_req_vaddr       (scc_mc2_req_vadr_o),     // out 48
		.mc5_req_wrd_rdctl   (scc_mc2_req_wrd_rdctl_o),// out 64
		.mc5_req_flush       (scc_mc2_req_flush_o),    // out
		.mc5_rd_rq_stall     (mc2_rd_rq_stall_o),      // in
		.mc5_wr_rq_stall     (mc2_wr_rq_stall_o),      // in
		.mc5_rsp_push        (mc2_rsp_push_o),         // in
		.mc5_rsp_stall       (scc_mc2_rsp_stall_o),    // out
		.mc5_rsp_data        (mc2_rsp_data_o),         // in 64
		.mc5_rsp_rdctl       (mc2_rsp_rdctl_o),        // in 32
		.mc5_rsp_flush_cmplt (mc2_rsp_flush_cmplt_o),  // in
		// MC6 port signals
		.mc6_req_ld          (scc_mc3_req_ld_e),       // out
		.mc6_req_st          (scc_mc3_req_st_e),       // out
		.mc6_req_size        (scc_mc3_req_size_e),     // out 2
		.mc6_req_vaddr       (scc_mc3_req_vadr_e),     // out 48
		.mc6_req_wrd_rdctl   (scc_mc3_req_wrd_rdctl_e),// out 64
		.mc6_req_flush       (scc_mc3_req_flush_e),    // out
		.mc6_rd_rq_stall     (mc3_rd_rq_stall_e),      // in
		.mc6_wr_rq_stall     (mc3_wr_rq_stall_e),      // in
		.mc6_rsp_push        (mc3_rsp_push_e),         // in
		.mc6_rsp_stall       (scc_mc3_rsp_stall_e),    // out
		.mc6_rsp_data        (mc3_rsp_data_e),         // in 64
		.mc6_rsp_rdctl       (mc3_rsp_rdctl_e),        // in 32
		.mc6_rsp_flush_cmplt (mc3_rsp_flush_cmplt_e),  // in
		// MC7 port signals
		.mc7_req_ld          (scc_mc3_req_ld_o),       // out
		.mc7_req_st          (scc_mc3_req_st_o),       // out
		.mc7_req_size        (scc_mc3_req_size_o),     // out 2
		.mc7_req_vaddr       (scc_mc3_req_vadr_o),     // out 48
		.mc7_req_wrd_rdctl   (scc_mc3_req_wrd_rdctl_o),// out 64
		.mc7_req_flush       (scc_mc3_req_flush_o),    // out
		.mc7_rd_rq_stall     (mc3_rd_rq_stall_o),      // in
		.mc7_wr_rq_stall     (mc3_wr_rq_stall_o),      // in
		.mc7_rsp_push        (mc3_rsp_push_o),         // in
		.mc7_rsp_stall       (scc_mc3_rsp_stall_o),    // out
		.mc7_rsp_data        (mc3_rsp_data_o),         // in 64
		.mc7_rsp_rdctl       (mc3_rsp_rdctl_o),        // in 32
		.mc7_rsp_flush_cmplt (mc3_rsp_flush_cmplt_o),  // in
		// MC8 port signals
		.mc8_req_ld          (scc_mc4_req_ld_e),       // out
		.mc8_req_st          (scc_mc4_req_st_e),       // out
		.mc8_req_size        (scc_mc4_req_size_e),     // out 2
		.mc8_req_vaddr       (scc_mc4_req_vadr_e),     // out 48
		.mc8_req_wrd_rdctl   (scc_mc4_req_wrd_rdctl_e),// out 64
		.mc8_req_flush       (scc_mc4_req_flush_e),    // out
		.mc8_rd_rq_stall     (mc4_rd_rq_stall_e),      // in
		.mc8_wr_rq_stall     (mc4_wr_rq_stall_e),      // in
		.mc8_rsp_push        (mc4_rsp_push_e),         // in
		.mc8_rsp_stall       (scc_mc4_rsp_stall_e),    // out
		.mc8_rsp_data        (mc4_rsp_data_e),         // in 64
		.mc8_rsp_rdctl       (mc4_rsp_rdctl_e),        // in 32
		.mc8_rsp_flush_cmplt (mc4_rsp_flush_cmplt_e),  // in
		// MC9 port signals
		.mc9_req_ld          (scc_mc4_req_ld_o),       // out
		.mc9_req_st          (scc_mc4_req_st_o),       // out
		.mc9_req_size        (scc_mc4_req_size_o),     // out 2
		.mc9_req_vaddr       (scc_mc4_req_vadr_o),     // out 48
		.mc9_req_wrd_rdctl   (scc_mc4_req_wrd_rdctl_o),// out 64
		.mc9_req_flush       (scc_mc4_req_flush_o),    // out
		.mc9_rd_rq_stall     (mc4_rd_rq_stall_o),      // in
		.mc9_wr_rq_stall     (mc4_wr_rq_stall_o),      // in
		.mc9_rsp_push        (mc4_rsp_push_o),         // in
		.mc9_rsp_stall       (scc_mc4_rsp_stall_o),    // out
		.mc9_rsp_data        (mc4_rsp_data_o),         // in 64
		.mc9_rsp_rdctl       (mc4_rsp_rdctl_o),        // in 32
		.mc9_rsp_flush_cmplt (mc4_rsp_flush_cmplt_o),  // in
		// MC10 port signals
		.mc10_req_ld          (scc_mc5_req_ld_e),       // out
		.mc10_req_st          (scc_mc5_req_st_e),       // out
		.mc10_req_size        (scc_mc5_req_size_e),     // out 2
		.mc10_req_vaddr       (scc_mc5_req_vadr_e),     // out 48
		.mc10_req_wrd_rdctl   (scc_mc5_req_wrd_rdctl_e),// out 64
		.mc10_req_flush       (scc_mc5_req_flush_e),    // out
		.mc10_rd_rq_stall     (mc5_rd_rq_stall_e),      // in
		.mc10_wr_rq_stall     (mc5_wr_rq_stall_e),      // in
		.mc10_rsp_push        (mc5_rsp_push_e),         // in
		.mc10_rsp_stall       (scc_mc5_rsp_stall_e),    // out
		.mc10_rsp_data        (mc5_rsp_data_e),         // in 64
		.mc10_rsp_rdctl       (mc5_rsp_rdctl_e),        // in 32
		.mc10_rsp_flush_cmplt (mc5_rsp_flush_cmplt_e),  // in
		// MC11 port signals
		.mc11_req_ld          (scc_mc5_req_ld_o),       // out
		.mc11_req_st          (scc_mc5_req_st_o),       // out
		.mc11_req_size        (scc_mc5_req_size_o),     // out 2
		.mc11_req_vaddr       (scc_mc5_req_vadr_o),     // out 48
		.mc11_req_wrd_rdctl   (scc_mc5_req_wrd_rdctl_o),// out 64
		.mc11_req_flush       (scc_mc5_req_flush_o),    // out
		.mc11_rd_rq_stall     (mc5_rd_rq_stall_o),      // in
		.mc11_wr_rq_stall     (mc5_wr_rq_stall_o),      // in
		.mc11_rsp_push        (mc5_rsp_push_o),         // in
		.mc11_rsp_stall       (scc_mc5_rsp_stall_o),    // out
		.mc11_rsp_data        (mc5_rsp_data_o),         // in 64
		.mc11_rsp_rdctl       (mc5_rsp_rdctl_o),        // in 32
		.mc11_rsp_flush_cmplt (mc5_rsp_flush_cmplt_o),  // in
		// MC12 port signals
		.mc12_req_ld          (scc_mc6_req_ld_e),       // out
		.mc12_req_st          (scc_mc6_req_st_e),       // out
		.mc12_req_size        (scc_mc6_req_size_e),     // out 2
		.mc12_req_vaddr       (scc_mc6_req_vadr_e),     // out 48
		.mc12_req_wrd_rdctl   (scc_mc6_req_wrd_rdctl_e),// out 64
		.mc12_req_flush       (scc_mc6_req_flush_e),    // out
		.mc12_rd_rq_stall     (mc6_rd_rq_stall_e),      // in
		.mc12_wr_rq_stall     (mc6_wr_rq_stall_e),      // in
		.mc12_rsp_push        (mc6_rsp_push_e),         // in
		.mc12_rsp_stall       (scc_mc6_rsp_stall_e),    // out
		.mc12_rsp_data        (mc6_rsp_data_e),         // in 64
		.mc12_rsp_rdctl       (mc6_rsp_rdctl_e),        // in 32
		.mc12_rsp_flush_cmplt (mc6_rsp_flush_cmplt_e),  // in
		// MC13 port signals
		.mc13_req_ld          (scc_mc6_req_ld_o),       // out
		.mc13_req_st          (scc_mc6_req_st_o),       // out
		.mc13_req_size        (scc_mc6_req_size_o),     // out 2
		.mc13_req_vaddr       (scc_mc6_req_vadr_o),     // out 48
		.mc13_req_wrd_rdctl   (scc_mc6_req_wrd_rdctl_o),// out 64
		.mc13_req_flush       (scc_mc6_req_flush_o),    // out
		.mc13_rd_rq_stall     (mc6_rd_rq_stall_o),      // in
		.mc13_wr_rq_stall     (mc6_wr_rq_stall_o),      // in
		.mc13_rsp_push        (mc6_rsp_push_o),         // in
		.mc13_rsp_stall       (scc_mc6_rsp_stall_o),    // out
		.mc13_rsp_data        (mc6_rsp_data_o),         // in 64
		.mc13_rsp_rdctl       (mc6_rsp_rdctl_o),        // in 32
		.mc13_rsp_flush_cmplt (mc6_rsp_flush_cmplt_o),  // in
		// MC14 port signals
		.mc14_req_ld          (scc_mc7_req_ld_e),       // out
		.mc14_req_st          (scc_mc7_req_st_e),       // out
		.mc14_req_size        (scc_mc7_req_size_e),     // out 2
		.mc14_req_vaddr       (scc_mc7_req_vadr_e),     // out 48
		.mc14_req_wrd_rdctl   (scc_mc7_req_wrd_rdctl_e),// out 64
		.mc14_req_flush       (scc_mc7_req_flush_e),    // out
		.mc14_rd_rq_stall     (mc7_rd_rq_stall_e),      // in
		.mc14_wr_rq_stall     (mc7_wr_rq_stall_e),      // in
		.mc14_rsp_push        (mc7_rsp_push_e),         // in
		.mc14_rsp_stall       (scc_mc7_rsp_stall_e),    // out
		.mc14_rsp_data        (mc7_rsp_data_e),         // in 64
		.mc14_rsp_rdctl       (mc7_rsp_rdctl_e),        // in 32
		.mc14_rsp_flush_cmplt (mc7_rsp_flush_cmplt_e),  // in
		// MC15 port signals
		.mc15_req_ld          (scc_mc7_req_ld_o),       // out
		.mc15_req_st          (scc_mc7_req_st_o),       // out
		.mc15_req_size        (scc_mc7_req_size_o),     // out 2
		.mc15_req_vaddr       (scc_mc7_req_vadr_o),     // out 48
		.mc15_req_wrd_rdctl   (scc_mc7_req_wrd_rdctl_o),// out 64
		.mc15_req_flush       (scc_mc7_req_flush_o),    // out
		.mc15_rd_rq_stall     (mc7_rd_rq_stall_o),      // in
		.mc15_wr_rq_stall     (mc7_wr_rq_stall_o),      // in
		.mc15_rsp_push        (mc7_rsp_push_o),         // in
		.mc15_rsp_stall       (scc_mc7_rsp_stall_o),    // out
		.mc15_rsp_data        (mc7_rsp_data_o),         // in 64
		.mc15_rsp_rdctl       (mc7_rsp_rdctl_o),        // in 32
		.mc15_rsp_flush_cmplt (mc7_rsp_flush_cmplt_o)   // in
	);

	// intermediate reg signals
	reg [31:0] r_nxtae_tx_data;
	reg r_nxtae_tx_vld;
	reg [31:0] r_prvae_tx_data;
	reg r_prvae_tx_vld;
	reg r_mc0_req_ld_e;
	reg r_mc0_req_st_e;
	reg [1:0] r_mc0_req_size_e;
	reg [47:0] r_mc0_req_vadr_e;
	reg [63:0] r_mc0_req_wrd_rdctl_e;
	reg r_mc0_req_flush_e;
	reg r_mc0_rsp_stall_e;
	reg r_mc0_req_ld_o;
	reg r_mc0_req_st_o;
	reg [1:0] r_mc0_req_size_o;
	reg [47:0] r_mc0_req_vadr_o;
	reg [63:0] r_mc0_req_wrd_rdctl_o;
	reg r_mc0_req_flush_o;
	reg r_mc0_rsp_stall_o;
	reg r_mc1_req_ld_e;
	reg r_mc1_req_st_e;
	reg [1:0] r_mc1_req_size_e;
	reg [47:0] r_mc1_req_vadr_e;
	reg [63:0] r_mc1_req_wrd_rdctl_e;
	reg r_mc1_req_flush_e;
	reg r_mc1_rsp_stall_e;
	reg r_mc1_req_ld_o;
	reg r_mc1_req_st_o;
	reg [1:0] r_mc1_req_size_o;
	reg [47:0] r_mc1_req_vadr_o;
	reg [63:0] r_mc1_req_wrd_rdctl_o;
	reg r_mc1_req_flush_o;
	reg r_mc1_rsp_stall_o;
	reg r_mc2_req_ld_e;
	reg r_mc2_req_st_e;
	reg [1:0] r_mc2_req_size_e;
	reg [47:0] r_mc2_req_vadr_e;
	reg [63:0] r_mc2_req_wrd_rdctl_e;
	reg r_mc2_req_flush_e;
	reg r_mc2_rsp_stall_e;
	reg r_mc2_req_ld_o;
	reg r_mc2_req_st_o;
	reg [1:0] r_mc2_req_size_o;
	reg [47:0] r_mc2_req_vadr_o;
	reg [63:0] r_mc2_req_wrd_rdctl_o;
	reg r_mc2_req_flush_o;
	reg r_mc2_rsp_stall_o;
	reg r_mc3_req_ld_e;
	reg r_mc3_req_st_e;
	reg [1:0] r_mc3_req_size_e;
	reg [47:0] r_mc3_req_vadr_e;
	reg [63:0] r_mc3_req_wrd_rdctl_e;
	reg r_mc3_req_flush_e;
	reg r_mc3_rsp_stall_e;
	reg r_mc3_req_ld_o;
	reg r_mc3_req_st_o;
	reg [1:0] r_mc3_req_size_o;
	reg [47:0] r_mc3_req_vadr_o;
	reg [63:0] r_mc3_req_wrd_rdctl_o;
	reg r_mc3_req_flush_o;
	reg r_mc3_rsp_stall_o;
	reg r_mc4_req_ld_e;
	reg r_mc4_req_st_e;
	reg [1:0] r_mc4_req_size_e;
	reg [47:0] r_mc4_req_vadr_e;
	reg [63:0] r_mc4_req_wrd_rdctl_e;
	reg r_mc4_req_flush_e;
	reg r_mc4_rsp_stall_e;
	reg r_mc4_req_ld_o;
	reg r_mc4_req_st_o;
	reg [1:0] r_mc4_req_size_o;
	reg [47:0] r_mc4_req_vadr_o;
	reg [63:0] r_mc4_req_wrd_rdctl_o;
	reg r_mc4_req_flush_o;
	reg r_mc4_rsp_stall_o;
	reg r_mc5_req_ld_e;
	reg r_mc5_req_st_e;
	reg [1:0] r_mc5_req_size_e;
	reg [47:0] r_mc5_req_vadr_e;
	reg [63:0] r_mc5_req_wrd_rdctl_e;
	reg r_mc5_req_flush_e;
	reg r_mc5_rsp_stall_e;
	reg r_mc5_req_ld_o;
	reg r_mc5_req_st_o;
	reg [1:0] r_mc5_req_size_o;
	reg [47:0] r_mc5_req_vadr_o;
	reg [63:0] r_mc5_req_wrd_rdctl_o;
	reg r_mc5_req_flush_o;
	reg r_mc5_rsp_stall_o;
	reg r_mc6_req_ld_e;
	reg r_mc6_req_st_e;
	reg [1:0] r_mc6_req_size_e;
	reg [47:0] r_mc6_req_vadr_e;
	reg [63:0] r_mc6_req_wrd_rdctl_e;
	reg r_mc6_req_flush_e;
	reg r_mc6_rsp_stall_e;
	reg r_mc6_req_ld_o;
	reg r_mc6_req_st_o;
	reg [1:0] r_mc6_req_size_o;
	reg [47:0] r_mc6_req_vadr_o;
	reg [63:0] r_mc6_req_wrd_rdctl_o;
	reg r_mc6_req_flush_o;
	reg r_mc6_rsp_stall_o;
	reg r_mc7_req_ld_e;
	reg r_mc7_req_st_e;
	reg [1:0] r_mc7_req_size_e;
	reg [47:0] r_mc7_req_vadr_e;
	reg [63:0] r_mc7_req_wrd_rdctl_e;
	reg r_mc7_req_flush_e;
	reg r_mc7_rsp_stall_e;
	reg r_mc7_req_ld_o;
	reg r_mc7_req_st_o;
	reg [1:0] r_mc7_req_size_o;
	reg [47:0] r_mc7_req_vadr_o;
	reg [63:0] r_mc7_req_wrd_rdctl_o;
	reg r_mc7_req_flush_o;
	reg r_mc7_rsp_stall_o;

	// Decide which custom instruction to control the AE-to-AE interface
	always @(posedge clk) begin
		if (cygraph_busy == 1'b1) begin
			r_nxtae_tx_data       <= cy_nxtae_tx_data;
			r_nxtae_tx_vld        <= cy_nxtae_tx_vld;
			r_prvae_tx_data       <= cy_prvae_tx_data;
			r_prvae_tx_vld        <= cy_prvae_tx_vld;
			r_mc0_req_ld_e        <= cy_mc0_req_ld_e;
			r_mc0_req_st_e        <= cy_mc0_req_st_e;
			r_mc0_req_size_e      <= cy_mc0_req_size_e;
			r_mc0_req_vadr_e      <= cy_mc0_req_vadr_e;
			r_mc0_req_wrd_rdctl_e <= cy_mc0_req_wrd_rdctl_e;
			r_mc0_req_flush_e     <= cy_mc0_req_flush_e;
			r_mc0_rsp_stall_e     <= cy_mc0_rsp_stall_e;
			r_mc0_req_ld_o        <= cy_mc0_req_ld_o;
			r_mc0_req_st_o        <= cy_mc0_req_st_o;
			r_mc0_req_size_o      <= cy_mc0_req_size_o;
			r_mc0_req_vadr_o      <= cy_mc0_req_vadr_o;
			r_mc0_req_wrd_rdctl_o <= cy_mc0_req_wrd_rdctl_o;
			r_mc0_req_flush_o     <= cy_mc0_req_flush_o;
			r_mc0_rsp_stall_o     <= cy_mc0_rsp_stall_o;
			r_mc1_req_ld_e        <= cy_mc1_req_ld_e;
			r_mc1_req_st_e        <= cy_mc1_req_st_e;
			r_mc1_req_size_e      <= cy_mc1_req_size_e;
			r_mc1_req_vadr_e      <= cy_mc1_req_vadr_e;
			r_mc1_req_wrd_rdctl_e <= cy_mc1_req_wrd_rdctl_e;
			r_mc1_req_flush_e     <= cy_mc1_req_flush_e;
			r_mc1_rsp_stall_e     <= cy_mc1_rsp_stall_e;
			r_mc1_req_ld_o        <= cy_mc1_req_ld_o;
			r_mc1_req_st_o        <= cy_mc1_req_st_o;
			r_mc1_req_size_o      <= cy_mc1_req_size_o;
			r_mc1_req_vadr_o      <= cy_mc1_req_vadr_o;
			r_mc1_req_wrd_rdctl_o <= cy_mc1_req_wrd_rdctl_o;
			r_mc1_req_flush_o     <= cy_mc1_req_flush_o;
			r_mc1_rsp_stall_o     <= cy_mc1_rsp_stall_o;
			r_mc2_req_ld_e        <= cy_mc2_req_ld_e;
			r_mc2_req_st_e        <= cy_mc2_req_st_e;
			r_mc2_req_size_e      <= cy_mc2_req_size_e;
			r_mc2_req_vadr_e      <= cy_mc2_req_vadr_e;
			r_mc2_req_wrd_rdctl_e <= cy_mc2_req_wrd_rdctl_e;
			r_mc2_req_flush_e     <= cy_mc2_req_flush_e;
			r_mc2_rsp_stall_e     <= cy_mc2_rsp_stall_e;
			r_mc2_req_ld_o        <= cy_mc2_req_ld_o;
			r_mc2_req_st_o        <= cy_mc2_req_st_o;
			r_mc2_req_size_o      <= cy_mc2_req_size_o;
			r_mc2_req_vadr_o      <= cy_mc2_req_vadr_o;
			r_mc2_req_wrd_rdctl_o <= cy_mc2_req_wrd_rdctl_o;
			r_mc2_req_flush_o     <= cy_mc2_req_flush_o;
			r_mc2_rsp_stall_o     <= cy_mc2_rsp_stall_o;
			r_mc3_req_ld_e        <= cy_mc3_req_ld_e;
			r_mc3_req_st_e        <= cy_mc3_req_st_e;
			r_mc3_req_size_e      <= cy_mc3_req_size_e;
			r_mc3_req_vadr_e      <= cy_mc3_req_vadr_e;
			r_mc3_req_wrd_rdctl_e <= cy_mc3_req_wrd_rdctl_e;
			r_mc3_req_flush_e     <= cy_mc3_req_flush_e;
			r_mc3_rsp_stall_e     <= cy_mc3_rsp_stall_e;
			r_mc3_req_ld_o        <= cy_mc3_req_ld_o;
			r_mc3_req_st_o        <= cy_mc3_req_st_o;
			r_mc3_req_size_o      <= cy_mc3_req_size_o;
			r_mc3_req_vadr_o      <= cy_mc3_req_vadr_o;
			r_mc3_req_wrd_rdctl_o <= cy_mc3_req_wrd_rdctl_o;
			r_mc3_req_flush_o     <= cy_mc3_req_flush_o;
			r_mc3_rsp_stall_o     <= cy_mc3_rsp_stall_o;
			r_mc4_req_ld_e        <= cy_mc4_req_ld_e;
			r_mc4_req_st_e        <= cy_mc4_req_st_e;
			r_mc4_req_size_e      <= cy_mc4_req_size_e;
			r_mc4_req_vadr_e      <= cy_mc4_req_vadr_e;
			r_mc4_req_wrd_rdctl_e <= cy_mc4_req_wrd_rdctl_e;
			r_mc4_req_flush_e     <= cy_mc4_req_flush_e;
			r_mc4_rsp_stall_e     <= cy_mc4_rsp_stall_e;
			r_mc4_req_ld_o        <= cy_mc4_req_ld_o;
			r_mc4_req_st_o        <= cy_mc4_req_st_o;
			r_mc4_req_size_o      <= cy_mc4_req_size_o;
			r_mc4_req_vadr_o      <= cy_mc4_req_vadr_o;
			r_mc4_req_wrd_rdctl_o <= cy_mc4_req_wrd_rdctl_o;
			r_mc4_req_flush_o     <= cy_mc4_req_flush_o;
			r_mc4_rsp_stall_o     <= cy_mc4_rsp_stall_o;
			r_mc5_req_ld_e        <= cy_mc5_req_ld_e;
			r_mc5_req_st_e        <= cy_mc5_req_st_e;
			r_mc5_req_size_e      <= cy_mc5_req_size_e;
			r_mc5_req_vadr_e      <= cy_mc5_req_vadr_e;
			r_mc5_req_wrd_rdctl_e <= cy_mc5_req_wrd_rdctl_e;
			r_mc5_req_flush_e     <= cy_mc5_req_flush_e;
			r_mc5_rsp_stall_e     <= cy_mc5_rsp_stall_e;
			r_mc5_req_ld_o        <= cy_mc5_req_ld_o;
			r_mc5_req_st_o        <= cy_mc5_req_st_o;
			r_mc5_req_size_o      <= cy_mc5_req_size_o;
			r_mc5_req_vadr_o      <= cy_mc5_req_vadr_o;
			r_mc5_req_wrd_rdctl_o <= cy_mc5_req_wrd_rdctl_o;
			r_mc5_req_flush_o     <= cy_mc5_req_flush_o;
			r_mc5_rsp_stall_o     <= cy_mc5_rsp_stall_o;
			r_mc6_req_ld_e        <= cy_mc6_req_ld_e;
			r_mc6_req_st_e        <= cy_mc6_req_st_e;
			r_mc6_req_size_e      <= cy_mc6_req_size_e;
			r_mc6_req_vadr_e      <= cy_mc6_req_vadr_e;
			r_mc6_req_wrd_rdctl_e <= cy_mc6_req_wrd_rdctl_e;
			r_mc6_req_flush_e     <= cy_mc6_req_flush_e;
			r_mc6_rsp_stall_e     <= cy_mc6_rsp_stall_e;
			r_mc6_req_ld_o        <= cy_mc6_req_ld_o;
			r_mc6_req_st_o        <= cy_mc6_req_st_o;
			r_mc6_req_size_o      <= cy_mc6_req_size_o;
			r_mc6_req_vadr_o      <= cy_mc6_req_vadr_o;
			r_mc6_req_wrd_rdctl_o <= cy_mc6_req_wrd_rdctl_o;
			r_mc6_req_flush_o     <= cy_mc6_req_flush_o;
			r_mc6_rsp_stall_o     <= cy_mc6_rsp_stall_o;
			r_mc7_req_ld_e        <= cy_mc7_req_ld_e;
			r_mc7_req_st_e        <= cy_mc7_req_st_e;
			r_mc7_req_size_e      <= cy_mc7_req_size_e;
			r_mc7_req_vadr_e      <= cy_mc7_req_vadr_e;
			r_mc7_req_wrd_rdctl_e <= cy_mc7_req_wrd_rdctl_e;
			r_mc7_req_flush_e     <= cy_mc7_req_flush_e;
			r_mc7_rsp_stall_e     <= cy_mc7_rsp_stall_e;
			r_mc7_req_ld_o        <= cy_mc7_req_ld_o;
			r_mc7_req_st_o        <= cy_mc7_req_st_o;
			r_mc7_req_size_o      <= cy_mc7_req_size_o;
			r_mc7_req_vadr_o      <= cy_mc7_req_vadr_o;
			r_mc7_req_wrd_rdctl_o <= cy_mc7_req_wrd_rdctl_o;
			r_mc7_req_flush_o     <= cy_mc7_req_flush_o;
			r_mc7_rsp_stall_o     <= cy_mc7_rsp_stall_o;

		end else begin // if (scc_busy == 1'b1) begin
			r_nxtae_tx_data       <= scc_nxtae_tx_data;
			r_nxtae_tx_vld        <= scc_nxtae_tx_vld;
			r_prvae_tx_data       <= scc_prvae_tx_data;
			r_prvae_tx_vld        <= scc_prvae_tx_vld;
			r_mc0_req_ld_e        <= scc_mc0_req_ld_e;
			r_mc0_req_st_e        <= scc_mc0_req_st_e;
			r_mc0_req_size_e      <= scc_mc0_req_size_e;
			r_mc0_req_vadr_e      <= scc_mc0_req_vadr_e;
			r_mc0_req_wrd_rdctl_e <= scc_mc0_req_wrd_rdctl_e;
			r_mc0_req_flush_e     <= scc_mc0_req_flush_e;
			r_mc0_rsp_stall_e     <= scc_mc0_rsp_stall_e;
			r_mc0_req_ld_o        <= scc_mc0_req_ld_o;
			r_mc0_req_st_o        <= scc_mc0_req_st_o;
			r_mc0_req_size_o      <= scc_mc0_req_size_o;
			r_mc0_req_vadr_o      <= scc_mc0_req_vadr_o;
			r_mc0_req_wrd_rdctl_o <= scc_mc0_req_wrd_rdctl_o;
			r_mc0_req_flush_o     <= scc_mc0_req_flush_o;
			r_mc0_rsp_stall_o     <= scc_mc0_rsp_stall_o;
			r_mc1_req_ld_e        <= scc_mc1_req_ld_e;
			r_mc1_req_st_e        <= scc_mc1_req_st_e;
			r_mc1_req_size_e      <= scc_mc1_req_size_e;
			r_mc1_req_vadr_e      <= scc_mc1_req_vadr_e;
			r_mc1_req_wrd_rdctl_e <= scc_mc1_req_wrd_rdctl_e;
			r_mc1_req_flush_e     <= scc_mc1_req_flush_e;
			r_mc1_rsp_stall_e     <= scc_mc1_rsp_stall_e;
			r_mc1_req_ld_o        <= scc_mc1_req_ld_o;
			r_mc1_req_st_o        <= scc_mc1_req_st_o;
			r_mc1_req_size_o      <= scc_mc1_req_size_o;
			r_mc1_req_vadr_o      <= scc_mc1_req_vadr_o;
			r_mc1_req_wrd_rdctl_o <= scc_mc1_req_wrd_rdctl_o;
			r_mc1_req_flush_o     <= scc_mc1_req_flush_o;
			r_mc1_rsp_stall_o     <= scc_mc1_rsp_stall_o;
			r_mc2_req_ld_e        <= scc_mc2_req_ld_e;
			r_mc2_req_st_e        <= scc_mc2_req_st_e;
			r_mc2_req_size_e      <= scc_mc2_req_size_e;
			r_mc2_req_vadr_e      <= scc_mc2_req_vadr_e;
			r_mc2_req_wrd_rdctl_e <= scc_mc2_req_wrd_rdctl_e;
			r_mc2_req_flush_e     <= scc_mc2_req_flush_e;
			r_mc2_rsp_stall_e     <= scc_mc2_rsp_stall_e;
			r_mc2_req_ld_o        <= scc_mc2_req_ld_o;
			r_mc2_req_st_o        <= scc_mc2_req_st_o;
			r_mc2_req_size_o      <= scc_mc2_req_size_o;
			r_mc2_req_vadr_o      <= scc_mc2_req_vadr_o;
			r_mc2_req_wrd_rdctl_o <= scc_mc2_req_wrd_rdctl_o;
			r_mc2_req_flush_o     <= scc_mc2_req_flush_o;
			r_mc2_rsp_stall_o     <= scc_mc2_rsp_stall_o;
			r_mc3_req_ld_e        <= scc_mc3_req_ld_e;
			r_mc3_req_st_e        <= scc_mc3_req_st_e;
			r_mc3_req_size_e      <= scc_mc3_req_size_e;
			r_mc3_req_vadr_e      <= scc_mc3_req_vadr_e;
			r_mc3_req_wrd_rdctl_e <= scc_mc3_req_wrd_rdctl_e;
			r_mc3_req_flush_e     <= scc_mc3_req_flush_e;
			r_mc3_rsp_stall_e     <= scc_mc3_rsp_stall_e;
			r_mc3_req_ld_o        <= scc_mc3_req_ld_o;
			r_mc3_req_st_o        <= scc_mc3_req_st_o;
			r_mc3_req_size_o      <= scc_mc3_req_size_o;
			r_mc3_req_vadr_o      <= scc_mc3_req_vadr_o;
			r_mc3_req_wrd_rdctl_o <= scc_mc3_req_wrd_rdctl_o;
			r_mc3_req_flush_o     <= scc_mc3_req_flush_o;
			r_mc3_rsp_stall_o     <= scc_mc3_rsp_stall_o;
			r_mc4_req_ld_e        <= scc_mc4_req_ld_e;
			r_mc4_req_st_e        <= scc_mc4_req_st_e;
			r_mc4_req_size_e      <= scc_mc4_req_size_e;
			r_mc4_req_vadr_e      <= scc_mc4_req_vadr_e;
			r_mc4_req_wrd_rdctl_e <= scc_mc4_req_wrd_rdctl_e;
			r_mc4_req_flush_e     <= scc_mc4_req_flush_e;
			r_mc4_rsp_stall_e     <= scc_mc4_rsp_stall_e;
			r_mc4_req_ld_o        <= scc_mc4_req_ld_o;
			r_mc4_req_st_o        <= scc_mc4_req_st_o;
			r_mc4_req_size_o      <= scc_mc4_req_size_o;
			r_mc4_req_vadr_o      <= scc_mc4_req_vadr_o;
			r_mc4_req_wrd_rdctl_o <= scc_mc4_req_wrd_rdctl_o;
			r_mc4_req_flush_o     <= scc_mc4_req_flush_o;
			r_mc4_rsp_stall_o     <= scc_mc4_rsp_stall_o;
			r_mc5_req_ld_e        <= scc_mc5_req_ld_e;
			r_mc5_req_st_e        <= scc_mc5_req_st_e;
			r_mc5_req_size_e      <= scc_mc5_req_size_e;
			r_mc5_req_vadr_e      <= scc_mc5_req_vadr_e;
			r_mc5_req_wrd_rdctl_e <= scc_mc5_req_wrd_rdctl_e;
			r_mc5_req_flush_e     <= scc_mc5_req_flush_e;
			r_mc5_rsp_stall_e     <= scc_mc5_rsp_stall_e;
			r_mc5_req_ld_o        <= scc_mc5_req_ld_o;
			r_mc5_req_st_o        <= scc_mc5_req_st_o;
			r_mc5_req_size_o      <= scc_mc5_req_size_o;
			r_mc5_req_vadr_o      <= scc_mc5_req_vadr_o;
			r_mc5_req_wrd_rdctl_o <= scc_mc5_req_wrd_rdctl_o;
			r_mc5_req_flush_o     <= scc_mc5_req_flush_o;
			r_mc5_rsp_stall_o     <= scc_mc5_rsp_stall_o;
			r_mc6_req_ld_e        <= scc_mc6_req_ld_e;
			r_mc6_req_st_e        <= scc_mc6_req_st_e;
			r_mc6_req_size_e      <= scc_mc6_req_size_e;
			r_mc6_req_vadr_e      <= scc_mc6_req_vadr_e;
			r_mc6_req_wrd_rdctl_e <= scc_mc6_req_wrd_rdctl_e;
			r_mc6_req_flush_e     <= scc_mc6_req_flush_e;
			r_mc6_rsp_stall_e     <= scc_mc6_rsp_stall_e;
			r_mc6_req_ld_o        <= scc_mc6_req_ld_o;
			r_mc6_req_st_o        <= scc_mc6_req_st_o;
			r_mc6_req_size_o      <= scc_mc6_req_size_o;
			r_mc6_req_vadr_o      <= scc_mc6_req_vadr_o;
			r_mc6_req_wrd_rdctl_o <= scc_mc6_req_wrd_rdctl_o;
			r_mc6_req_flush_o     <= scc_mc6_req_flush_o;
			r_mc6_rsp_stall_o     <= scc_mc6_rsp_stall_o;
			r_mc7_req_ld_e        <= scc_mc7_req_ld_e;
			r_mc7_req_st_e        <= scc_mc7_req_st_e;
			r_mc7_req_size_e      <= scc_mc7_req_size_e;
			r_mc7_req_vadr_e      <= scc_mc7_req_vadr_e;
			r_mc7_req_wrd_rdctl_e <= scc_mc7_req_wrd_rdctl_e;
			r_mc7_req_flush_e     <= scc_mc7_req_flush_e;
			r_mc7_rsp_stall_e     <= scc_mc7_rsp_stall_e;
			r_mc7_req_ld_o        <= scc_mc7_req_ld_o;
			r_mc7_req_st_o        <= scc_mc7_req_st_o;
			r_mc7_req_size_o      <= scc_mc7_req_size_o;
			r_mc7_req_vadr_o      <= scc_mc7_req_vadr_o;
			r_mc7_req_wrd_rdctl_o <= scc_mc7_req_wrd_rdctl_o;
			r_mc7_req_flush_o     <= scc_mc7_req_flush_o;
			r_mc7_rsp_stall_o     <= scc_mc7_rsp_stall_o;
		// end else begin
		// 	r_nxtae_tx_data       <= 32'b0;
		// 	r_nxtae_tx_vld        <= 1'b0;
		// 	r_prvae_tx_data       <= 32'b0;
		// 	r_prvae_tx_vld        <= 1'b0;
		// 	r_mc0_req_ld_e        <= 1'b0;
		// 	r_mc0_req_st_e        <= 1'b0;
		// 	r_mc0_req_size_e      <= 2'd0;
		// 	r_mc0_req_vadr_e      <= 48'd0;
		// 	r_mc0_req_wrd_rdctl_e <= 64'd0;
		// 	r_mc0_req_flush_e     <= 1'b0;
		// 	r_mc0_rsp_stall_e     <= 1'b0;
		// 	r_mc0_req_ld_o        <= 1'b0;
		// 	r_mc0_req_st_o        <= 1'b0;
		// 	r_mc0_req_size_o      <= 2'd0;
		// 	r_mc0_req_vadr_o      <= 48'd0;
		// 	r_mc0_req_wrd_rdctl_o <= 64'd0;
		// 	r_mc0_req_flush_o     <= 1'b0;
		// 	r_mc0_rsp_stall_o     <= 1'b0;
		// 	r_mc1_req_ld_e        <= 1'b0;
		// 	r_mc1_req_st_e        <= 1'b0;
		// 	r_mc1_req_size_e      <= 2'd0;
		// 	r_mc1_req_vadr_e      <= 48'd0;
		// 	r_mc1_req_wrd_rdctl_e <= 64'd0;
		// 	r_mc1_req_flush_e     <= 1'b0;
		// 	r_mc1_rsp_stall_e     <= 1'b0;
		// 	r_mc1_req_ld_o        <= 1'b0;
		// 	r_mc1_req_st_o        <= 1'b0;
		// 	r_mc1_req_size_o      <= 2'd0;
		// 	r_mc1_req_vadr_o      <= 48'd0;
		// 	r_mc1_req_wrd_rdctl_o <= 64'd0;
		// 	r_mc1_req_flush_o     <= 1'b0;
		// 	r_mc1_rsp_stall_o     <= 1'b0;
		// 	r_mc2_req_ld_e        <= 1'b0;
		// 	r_mc2_req_st_e        <= 1'b0;
		// 	r_mc2_req_size_e      <= 2'd0;
		// 	r_mc2_req_vadr_e      <= 48'd0;
		// 	r_mc2_req_wrd_rdctl_e <= 64'd0;
		// 	r_mc2_req_flush_e     <= 1'b0;
		// 	r_mc2_rsp_stall_e     <= 1'b0;
		// 	r_mc2_req_ld_o        <= 1'b0;
		// 	r_mc2_req_st_o        <= 1'b0;
		// 	r_mc2_req_size_o      <= 2'd0;
		// 	r_mc2_req_vadr_o      <= 48'd0;
		// 	r_mc2_req_wrd_rdctl_o <= 64'd0;
		// 	r_mc2_req_flush_o     <= 1'b0;
		// 	r_mc2_rsp_stall_o     <= 1'b0;
		// 	r_mc3_req_ld_e        <= 1'b0;
		// 	r_mc3_req_st_e        <= 1'b0;
		// 	r_mc3_req_size_e      <= 2'd0;
		// 	r_mc3_req_vadr_e      <= 48'd0;
		// 	r_mc3_req_wrd_rdctl_e <= 64'd0;
		// 	r_mc3_req_flush_e     <= 1'b0;
		// 	r_mc3_rsp_stall_e     <= 1'b0;
		// 	r_mc3_req_ld_o        <= 1'b0;
		// 	r_mc3_req_st_o        <= 1'b0;
		// 	r_mc3_req_size_o      <= 2'd0;
		// 	r_mc3_req_vadr_o      <= 48'd0;
		// 	r_mc3_req_wrd_rdctl_o <= 64'd0;
		// 	r_mc3_req_flush_o     <= 1'b0;
		// 	r_mc3_rsp_stall_o     <= 1'b0;
		// 	r_mc4_req_ld_e        <= 1'b0;
		// 	r_mc4_req_st_e        <= 1'b0;
		// 	r_mc4_req_size_e      <= 2'd0;
		// 	r_mc4_req_vadr_e      <= 48'd0;
		// 	r_mc4_req_wrd_rdctl_e <= 64'd0;
		// 	r_mc4_req_flush_e     <= 1'b0;
		// 	r_mc4_rsp_stall_e     <= 1'b0;
		// 	r_mc4_req_ld_o        <= 1'b0;
		// 	r_mc4_req_st_o        <= 1'b0;
		// 	r_mc4_req_size_o      <= 2'd0;
		// 	r_mc4_req_vadr_o      <= 48'd0;
		// 	r_mc4_req_wrd_rdctl_o <= 64'd0;
		// 	r_mc4_req_flush_o     <= 1'b0;
		// 	r_mc4_rsp_stall_o     <= 1'b0;
		// 	r_mc5_req_ld_e        <= 1'b0;
		// 	r_mc5_req_st_e        <= 1'b0;
		// 	r_mc5_req_size_e      <= 2'd0;
		// 	r_mc5_req_vadr_e      <= 48'd0;
		// 	r_mc5_req_wrd_rdctl_e <= 64'd0;
		// 	r_mc5_req_flush_e     <= 1'b0;
		// 	r_mc5_rsp_stall_e     <= 1'b0;
		// 	r_mc5_req_ld_o        <= 1'b0;
		// 	r_mc5_req_st_o        <= 1'b0;
		// 	r_mc5_req_size_o      <= 2'd0;
		// 	r_mc5_req_vadr_o      <= 48'd0;
		// 	r_mc5_req_wrd_rdctl_o <= 64'd0;
		// 	r_mc5_req_flush_o     <= 1'b0;
		// 	r_mc5_rsp_stall_o     <= 1'b0;
		// 	r_mc6_req_ld_e        <= 1'b0;
		// 	r_mc6_req_st_e        <= 1'b0;
		// 	r_mc6_req_size_e      <= 2'd0;
		// 	r_mc6_req_vadr_e      <= 48'd0;
		// 	r_mc6_req_wrd_rdctl_e <= 64'd0;
		// 	r_mc6_req_flush_e     <= 1'b0;
		// 	r_mc6_rsp_stall_e     <= 1'b0;
		// 	r_mc6_req_ld_o        <= 1'b0;
		// 	r_mc6_req_st_o        <= 1'b0;
		// 	r_mc6_req_size_o      <= 2'd0;
		// 	r_mc6_req_vadr_o      <= 48'd0;
		// 	r_mc6_req_wrd_rdctl_o <= 64'd0;
		// 	r_mc6_req_flush_o     <= 1'b0;
		// 	r_mc6_rsp_stall_o     <= 1'b0;
		// 	r_mc7_req_ld_e        <= 1'b0;
		// 	r_mc7_req_st_e        <= 1'b0;
		// 	r_mc7_req_size_e      <= 2'd0;
		// 	r_mc7_req_vadr_e      <= 48'd0;
		// 	r_mc7_req_wrd_rdctl_e <= 64'd0;
		// 	r_mc7_req_flush_e     <= 1'b0;
		// 	r_mc7_rsp_stall_e     <= 1'b0;
		// 	r_mc7_req_ld_o        <= 1'b0;
		// 	r_mc7_req_st_o        <= 1'b0;
		// 	r_mc7_req_size_o      <= 2'd0;
		// 	r_mc7_req_vadr_o      <= 48'd0;
		// 	r_mc7_req_wrd_rdctl_o <= 64'd0;
		// 	r_mc7_req_flush_o     <= 1'b0;
		// 	r_mc7_rsp_stall_o     <= 1'b0;
		end
	end

	// Decide which module to contorl the AE-to-AE interface
	assign nxtae_tx_data		= r_nxtae_tx_data;
	assign nxtae_tx_vld 		= r_nxtae_tx_vld;
	assign prvae_tx_data		= r_prvae_tx_data;
	assign prvae_tx_vld 		= r_prvae_tx_vld;

	// Decide which module to control the memory
	// MC0 even request port signals
	assign mc0_req_ld_e         = r_mc0_req_ld_e;
	assign mc0_req_st_e			= r_mc0_req_st_e;
	assign mc0_req_size_e		= r_mc0_req_size_e;
	assign mc0_req_vadr_e		= r_mc0_req_vadr_e;
	assign mc0_req_wrd_rdctl_e	= r_mc0_req_wrd_rdctl_e;
	assign mc0_req_flush_e		= r_mc0_req_flush_e;
	// MC0 even response port signals
	assign mc0_rsp_stall_e		= r_mc0_rsp_stall_e;
	// MC0 odd request port signals
	assign mc0_req_ld_o			= r_mc0_req_ld_o;
	assign mc0_req_st_o			= r_mc0_req_st_o;
	assign mc0_req_size_o		= r_mc0_req_size_o;
	assign mc0_req_vadr_o		= r_mc0_req_vadr_o;
	assign mc0_req_wrd_rdctl_o	= r_mc0_req_wrd_rdctl_o;
	assign mc0_req_flush_o		= r_mc0_req_flush_o;
	// MC0 odd response port signals
	assign mc0_rsp_stall_o		= r_mc0_rsp_stall_o;
	// MC1 even request port signals
	assign mc1_req_ld_e			= r_mc1_req_ld_e;
	assign mc1_req_st_e			= r_mc1_req_st_e;
	assign mc1_req_size_e		= r_mc1_req_size_e;
	assign mc1_req_vadr_e		= r_mc1_req_vadr_e;
	assign mc1_req_wrd_rdctl_e	= r_mc1_req_wrd_rdctl_e;
	assign mc1_req_flush_e		= r_mc1_req_flush_e;
	// MC1 even response port signals
	assign mc1_rsp_stall_e		= r_mc1_rsp_stall_e;
	// MC1 odd request port signals
	assign mc1_req_ld_o			= r_mc1_req_ld_o;
	assign mc1_req_st_o			= r_mc1_req_st_o;
	assign mc1_req_size_o		= r_mc1_req_size_o;
	assign mc1_req_vadr_o		= r_mc1_req_vadr_o;
	assign mc1_req_wrd_rdctl_o	= r_mc1_req_wrd_rdctl_o;
	assign mc1_req_flush_o		= r_mc1_req_flush_o;
	// MC1 odd response port signals
	assign mc1_rsp_stall_o		= r_mc1_rsp_stall_o;
	// MC2 even request port signals
	assign mc2_req_ld_e			= r_mc2_req_ld_e;
	assign mc2_req_st_e			= r_mc2_req_st_e;
	assign mc2_req_size_e		= r_mc2_req_size_e;
	assign mc2_req_vadr_e		= r_mc2_req_vadr_e;
	assign mc2_req_wrd_rdctl_e	= r_mc2_req_wrd_rdctl_e;
	assign mc2_req_flush_e		= r_mc2_req_flush_e;
	// MC2 even response port signals
	assign mc2_rsp_stall_e		= r_mc2_rsp_stall_e;
	// MC2 odd request port signals
	assign mc2_req_ld_o			= r_mc2_req_ld_o;
	assign mc2_req_st_o			= r_mc2_req_st_o;
	assign mc2_req_size_o		= r_mc2_req_size_o;
	assign mc2_req_vadr_o		= r_mc2_req_vadr_o;
	assign mc2_req_wrd_rdctl_o	= r_mc2_req_wrd_rdctl_o;
	assign mc2_req_flush_o		= r_mc2_req_flush_o;
	// MC2 odd response port signals
	assign mc2_rsp_stall_o		= r_mc2_rsp_stall_o;
	// MC3 even request port signals
	assign mc3_req_ld_e			= r_mc3_req_ld_e;
	assign mc3_req_st_e			= r_mc3_req_st_e;
	assign mc3_req_size_e		= r_mc3_req_size_e;
	assign mc3_req_vadr_e		= r_mc3_req_vadr_e;
	assign mc3_req_wrd_rdctl_e	= r_mc3_req_wrd_rdctl_e;
	assign mc3_req_flush_e		= r_mc3_req_flush_e;
	// MC3 even response port signals
	assign mc3_rsp_stall_e		= r_mc3_rsp_stall_e;
	// MC3 odd request port signals
	assign mc3_req_ld_o			= r_mc3_req_ld_o;
	assign mc3_req_st_o			= r_mc3_req_st_o;
	assign mc3_req_size_o		= r_mc3_req_size_o;
	assign mc3_req_vadr_o		= r_mc3_req_vadr_o;
	assign mc3_req_wrd_rdctl_o	= r_mc3_req_wrd_rdctl_o;
	assign mc3_req_flush_o		= r_mc3_req_flush_o;
	// MC3 odd response port signals
	assign mc3_rsp_stall_o		= r_mc3_rsp_stall_o;
	// MC4 even request port signals
	assign mc4_req_ld_e			= r_mc4_req_ld_e;
	assign mc4_req_st_e			= r_mc4_req_st_e;
	assign mc4_req_size_e		= r_mc4_req_size_e;
	assign mc4_req_vadr_e		= r_mc4_req_vadr_e;
	assign mc4_req_wrd_rdctl_e	= r_mc4_req_wrd_rdctl_e;
	assign mc4_req_flush_e		= r_mc4_req_flush_e;
	// MC4 even response port signals
	assign mc4_rsp_stall_e		= r_mc4_rsp_stall_e;
	// MC4 odd request port signals
	assign mc4_req_ld_o			= r_mc4_req_ld_o;
	assign mc4_req_st_o			= r_mc4_req_st_o;
	assign mc4_req_size_o		= r_mc4_req_size_o;
	assign mc4_req_vadr_o		= r_mc4_req_vadr_o;
	assign mc4_req_wrd_rdctl_o	= r_mc4_req_wrd_rdctl_o;
	assign mc4_req_flush_o		= r_mc4_req_flush_o;
	// MC4 odd response port signals
	assign mc4_rsp_stall_o		= r_mc4_rsp_stall_o;
	// MC5 even request port signals
	assign mc5_req_ld_e			= r_mc5_req_ld_e;
	assign mc5_req_st_e			= r_mc5_req_st_e;
	assign mc5_req_size_e		= r_mc5_req_size_e;
	assign mc5_req_vadr_e		= r_mc5_req_vadr_e;
	assign mc5_req_wrd_rdctl_e	= r_mc5_req_wrd_rdctl_e;
	assign mc5_req_flush_e		= r_mc5_req_flush_e;
	// MC5 even response port signals
	assign mc5_rsp_stall_e		= r_mc5_rsp_stall_e;
	// MC5 odd request port signals
	assign mc5_req_ld_o			= r_mc5_req_ld_o;
	assign mc5_req_st_o			= r_mc5_req_st_o;
	assign mc5_req_size_o		= r_mc5_req_size_o;
	assign mc5_req_vadr_o		= r_mc5_req_vadr_o;
	assign mc5_req_wrd_rdctl_o	= r_mc5_req_wrd_rdctl_o;
	assign mc5_req_flush_o		= r_mc5_req_flush_o;
	// MC5 odd response port signals
	assign mc5_rsp_stall_o		= r_mc5_rsp_stall_o;
	// MC6 even request port signals
	assign mc6_req_ld_e			= r_mc6_req_ld_e;
	assign mc6_req_st_e			= r_mc6_req_st_e;
	assign mc6_req_size_e		= r_mc6_req_size_e;
	assign mc6_req_vadr_e		= r_mc6_req_vadr_e;
	assign mc6_req_wrd_rdctl_e	= r_mc6_req_wrd_rdctl_e;
	assign mc6_req_flush_e		= r_mc6_req_flush_e;
	// MC6 even response port signals
	assign mc6_rsp_stall_e		= r_mc6_rsp_stall_e;
	// MC6 odd request port signals
	assign mc6_req_ld_o			= r_mc6_req_ld_o;
	assign mc6_req_st_o			= r_mc6_req_st_o;
	assign mc6_req_size_o		= r_mc6_req_size_o;
	assign mc6_req_vadr_o		= r_mc6_req_vadr_o;
	assign mc6_req_wrd_rdctl_o	= r_mc6_req_wrd_rdctl_o;
	assign mc6_req_flush_o		= r_mc6_req_flush_o;
	// MC6 odd response port signals
	assign mc6_rsp_stall_o		= r_mc6_rsp_stall_o;
	// MC7 even request port signals
	assign mc7_req_ld_e			= r_mc7_req_ld_e;
	assign mc7_req_st_e			= r_mc7_req_st_e;
	assign mc7_req_size_e		= r_mc7_req_size_e;
	assign mc7_req_vadr_e		= r_mc7_req_vadr_e;
	assign mc7_req_wrd_rdctl_e	= r_mc7_req_wrd_rdctl_e;
	assign mc7_req_flush_e		= r_mc7_req_flush_e;
	// MC7 even response port signals
	assign mc7_rsp_stall_e		= r_mc7_rsp_stall_e;
	// MC7 odd request port signals
	assign mc7_req_ld_o			= r_mc7_req_ld_o;
	assign mc7_req_st_o			= r_mc7_req_st_o;
	assign mc7_req_size_o		= r_mc7_req_size_o;
	assign mc7_req_vadr_o		= r_mc7_req_vadr_o;
	assign mc7_req_wrd_rdctl_o	= r_mc7_req_wrd_rdctl_o;
	assign mc7_req_flush_o		= r_mc7_req_flush_o;
	// MC7 odd response port signals
	assign mc7_rsp_stall_o		= r_mc7_rsp_stall_o;

	/* ---------- debug & synopsys off blocks  ---------- */

	// synopsys translate_off

	// Parameters: 1-Severity: Don't Stop, 2-start check only after negedge of reset
	//assert_never #(1, 2, "***ERROR ASSERT: unimplemented instruction cracked") a0 (.clk(clk), .reset_n(~reset), .test_expr(r_unimplemented_inst));

	// synopsys translate_on

endmodule // cae_pers
