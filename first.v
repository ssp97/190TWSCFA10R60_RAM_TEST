module qsys_hello_world(
	input clk,
	input rst_n,
	output led,
	//sram0 IC47
	output [10:0]sram0_addr,
	output [1:0] sram0_ba,
	output sram0_cke,
	output sram0_cs_n,
	output sram0_ras_n,
	output sram0_cas_n,
	output sram0_we_n,
	output [3:0] sram0_dqm,
	inout  [31:0]sram0_dq,
	output sram0_clk,
	//sram1 IC48
	output [10:0]sram1_addr,
	output [1:0] sram1_ba,
	output sram1_cke,
	output sram1_cs_n,
	output sram1_ras_n,
	output sram1_cas_n,
	output sram1_we_n,
	output [3:0] sram1_dqm,
	inout  [31:0]sram1_dq,
	output sram1_clk
);

wire clk_80m;
wire clk_80m_shift;
wire locked;
wire sys_rst_n;

assign sys_rst_n = rst_n & locked;
assign sram0_clk = clk_80m_shift;
assign sram1_clk = clk_80m_shift;

	ppl0 comb_5(
		.inclk0(clk),
		.areset(~rst_n),
		
		.c0(clk_80m),
		.c1(clk_80m_shift),
		.locked(locked)
	);

    qsys u0 (
        .clk_clk       (clk),       //   clk.clk
        .reset_reset_n (rst_n),  // reset.reset_n
		  .led_export(led),
		  
		  .sram0_addr    (sram0_addr),    // sram0.addr
        .sram0_ba      (sram0_ba),      //      .ba
        .sram0_cas_n   (sram0_cas_n),   //      .cas_n
        .sram0_cke     (sram0_cke),     //      .cke
        .sram0_cs_n    (sram0_cs_n),    //      .cs_n
        .sram0_dq      (sram0_dq),      //      .dq
        .sram0_dqm     (sram0_dqm),     //      .dqm
        .sram0_ras_n   (sram0_ras_n),   //      .ras_n
        .sram0_we_n    (sram0_we_n),    //      .we_n
		  
		  .sram1_addr    (sram1_addr),    // sram1.addr
        .sram1_ba      (sram1_ba),      //      .ba
        .sram1_cas_n   (sram1_cas_n),   //      .cas_n
        .sram1_cke     (sram1_cke),     //      .cke
        .sram1_cs_n    (sram1_cs_n),    //      .cs_n
        .sram1_dq      (sram1_dq),      //      .dq
        .sram1_dqm     (sram1_dqm),     //      .dqm
        .sram1_ras_n   (sram1_ras_n),   //      .ras_n
        .sram1_we_n    (sram1_we_n)     //      .we_n
    );
	 
endmodule