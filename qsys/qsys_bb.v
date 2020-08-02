
module qsys (
	clk_clk,
	led_export,
	reset_reset_n,
	sram0_addr,
	sram0_ba,
	sram0_cas_n,
	sram0_cke,
	sram0_cs_n,
	sram0_dq,
	sram0_dqm,
	sram0_ras_n,
	sram0_we_n,
	sram1_addr,
	sram1_ba,
	sram1_cas_n,
	sram1_cke,
	sram1_cs_n,
	sram1_dq,
	sram1_dqm,
	sram1_ras_n,
	sram1_we_n);	

	input		clk_clk;
	output		led_export;
	input		reset_reset_n;
	output	[10:0]	sram0_addr;
	output	[1:0]	sram0_ba;
	output		sram0_cas_n;
	output		sram0_cke;
	output		sram0_cs_n;
	inout	[31:0]	sram0_dq;
	output	[3:0]	sram0_dqm;
	output		sram0_ras_n;
	output		sram0_we_n;
	output	[10:0]	sram1_addr;
	output	[1:0]	sram1_ba;
	output		sram1_cas_n;
	output		sram1_cke;
	output		sram1_cs_n;
	inout	[31:0]	sram1_dq;
	output	[3:0]	sram1_dqm;
	output		sram1_ras_n;
	output		sram1_we_n;
endmodule
