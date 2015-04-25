/*****************************************************************************/
//
// Module	   : cae_clock.vpp
// Revision	   : $Revision: 1.4 $
// Last Modified On: $Date: 2011/09/29 17:44:03 $
// Last Modified By: $Author: mruff $
//
//-----------------------------------------------------------------------------
//
// Original Author : mruff
// Created On      : Tue Sep 27 14:12:23 CDT 2011
//
//-----------------------------------------------------------------------------
//
// Description     : Sample Custom Personality clock logic
//
//-----------------------------------------------------------------------------
//
// Copyright (c) 2007-2011 : created by Convey Computer Corp. This model is the
// confidential and proprietary property of Convey Computer Corp.
//
/*****************************************************************************/
/* $Id: cae_clock.vpp,v 1.4 2011/09/29 17:44:03 mruff Exp $ */

module cae_clock (
input	clk,
input	i_reset,
input	ppll_reset,

output	clk_per,
output	ppll_locked,
output	reset_per
);

`include "pdk_fpga_param.vh"

   generate if (RATIO == 0) begin : gsync
      assign clk_per = clk;
      assign ppll_locked = 1'b1;
      assign reset_per = i_reset;
   end else begin : gasync
      wire pll_clkout;
      BUFG clk_per_bufg (.O(clk_per), .I(pll_clkout));

      if (CNY_PDK_PLATFORM == "hc-1") begin : ghc1
	 PLL_BASE #(
	   .CLKIN_PERIOD  (6.667),	// 150 MHz
	   .DIVCLK_DIVIDE (1),		// 150 MHz (Fpfd)
	   .CLKFBOUT_MULT (5),		// 750 MHz (Fvco)
	   .CLKOUT0_DIVIDE(6)		// 125 MHz
	 ) pll (
	   .CLKIN(clk),
	   .RST(ppll_reset),
	   .CLKFBOUT(pll_clkfbout),
	   .CLKFBIN(pll_clkfbout),
	   .LOCKED(ppll_locked),
	   .CLKOUT0(pll_clkout),
	   .CLKOUT1(), .CLKOUT2(), .CLKOUT3(), .CLKOUT4(), .CLKOUT5()
	 );
      end else begin : ghc1ex
	 MMCM_BASE #(
	   .CLKIN1_PERIOD   (6.667),	// 150 MHz
	   .DIVCLK_DIVIDE   (1),	// 150 MHz (Fpfd)
	   .CLKFBOUT_MULT_F (5),	// 750 MHz (Fvco)
	   .CLKOUT0_DIVIDE_F(6)		// 125 MHz
	 ) pll (
	   .CLKIN1(clk),
	   .RST(ppll_reset),
	   .CLKFBOUT(pll_clkfbout),
	   .CLKFBIN(pll_clkfbout),
	   .LOCKED(ppll_locked),
	   .CLKOUT0(pll_clkout),
	   .PWRDWN(1'b0),
	   .CLKFBOUTB(),
	   .CLKOUT0B(), .CLKOUT1(), .CLKOUT1B(),
	   .CLKOUT2(), .CLKOUT2B(), .CLKOUT3(), .CLKOUT3B(),
	   .CLKOUT4(), .CLKOUT5(), .CLKOUT6()
	 );
      end

      (* KEEP = "true" *)(* TIG = "true" *) wire r_AsYnC_reset;
      FDSE rst0 (.C(clk), .S(i_reset),
		 .CE(r_AsYnC_reset), .D(!r_AsYnC_reset), .Q(r_AsYnC_reset));
      FD   rst1 (.C(clk_per), .D(r_AsYnC_reset), .Q(r_reset_sync));
      BUFG brst (.O(reset_per), .I(r_reset_sync));
   end endgenerate

endmodule
