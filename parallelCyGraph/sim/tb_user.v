`timescale 1 ns / 1 ps

module tb_user();

  initial begin
    // Insert user code here, such as signal dumping
    // set CNY_PDK_TB_USER_VLOG variable in makefile

    
	// To trace everything (slow)
	// $wlfdumpvars(0, testbench);
	// To trace cae_pers module and 5 levels below
	`ifdef AE0_PRESENT
		$wlfdumpvars(5,testbench.cae_fpga0.ae_top.core.cae_pers);
	`endif
  end

endmodule
