/*****************************************************************************/
//
// Module:		instdec.v
// Revision:		$Revision: 1.1 $
// Last Modified On:	$Date: 2011/08/11 16:28:50 $
// Last Modified By:	$Author: mruff $
//
//-----------------------------------------------------------------------------
//
// Description: Decode CP instructions
//
//-----------------------------------------------------------------------------
//
// Copyright (c) 2011 : Created by Convey Computer Corp. This file is the
// confidential and proprietary property of Convey Computer Corp.
//
/*****************************************************************************/
/* $Id: instdec.v,v 1.1 2011/08/11 16:28:50 mruff Exp $ */

module instdec (
input	[31:0]	cae_inst,
input	[63:0]	cae_data,
input		cae_inst_vld,

output		inst_val,
output	[4:0]	inst_caep,
output		inst_aeg_wr,
output		inst_aeg_rd,
output	[17:0]	inst_aeg_idx,

output		err_unimpl
);

    reg		c_val, c_aeg_wr, c_aeg_rd, c_unimpl;
    reg [4:0]	c_caep;
    reg [17:0]	c_aeg_idx;

    always @* begin
	c_val = 'b0;
	c_caep = 'b0;
	c_aeg_wr = 'b0;
	c_aeg_rd = 'b0;
	c_aeg_idx = 'b0;
	c_unimpl = 'b0;

	casex (cae_inst[28:24])
	// Format 4 instructions
	5'b1101?: begin
	    case (cae_inst[24:18])
	    7'h40: begin
		c_aeg_idx = cae_inst[17:0];
		c_aeg_wr  = cae_inst_vld;
	    end
	    7'h68: begin
		c_aeg_idx = cae_data[17:0];
		c_aeg_rd  = cae_inst_vld;
	    end
	    7'h70: begin
		c_aeg_idx = {6'b0, cae_inst[17:6]};
		c_aeg_rd  = cae_inst_vld;
	    end
	    default: c_unimpl = cae_inst_vld;
	    endcase
	end
	// Format 5 instructions
	5'b11100: begin
	    case (cae_inst[23:18])
	    6'h18: begin
		c_aeg_idx = {6'b0, cae_inst[17:12], cae_inst[5:0]};
		c_aeg_wr  = cae_inst_vld;
	    end
	    6'h20: begin
		c_aeg_idx = {6'b0, cae_inst[17:12], cae_inst[5:0]};
		c_aeg_wr  = cae_inst_vld;
	    end
	    default: c_unimpl = cae_inst_vld;
	    endcase
	end
	// Format 6 instructions
	5'b11101: begin
	    case (cae_inst[23:18])
	    6'h1c: begin
		c_aeg_idx = {6'b0, cae_inst[17:6]};
		c_aeg_rd  = cae_inst_vld;
	    end
	    default: c_unimpl = cae_inst_vld;
	    endcase
	end
	// Format 7 instructions
	5'b11110: begin
	    // CAEP instructions in range 20-3F
	    c_caep   = cae_inst[22:18];
	    c_val    = cae_inst_vld &  cae_inst[23];
	    c_unimpl = cae_inst_vld & !cae_inst[23];
	end

	default: c_unimpl = cae_inst_vld;
	endcase
    end

    assign inst_val = c_val;
    assign inst_caep = c_caep;
    assign inst_aeg_wr = c_aeg_wr;
    assign inst_aeg_rd = c_aeg_rd;
    assign inst_aeg_idx = c_aeg_idx;
    assign err_unimpl = c_unimpl;

endmodule
