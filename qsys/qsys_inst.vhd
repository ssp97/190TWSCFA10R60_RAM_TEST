	component qsys is
		port (
			clk_clk       : in    std_logic                     := 'X';             -- clk
			led_export    : out   std_logic;                                        -- export
			reset_reset_n : in    std_logic                     := 'X';             -- reset_n
			sram0_addr    : out   std_logic_vector(10 downto 0);                    -- addr
			sram0_ba      : out   std_logic_vector(1 downto 0);                     -- ba
			sram0_cas_n   : out   std_logic;                                        -- cas_n
			sram0_cke     : out   std_logic;                                        -- cke
			sram0_cs_n    : out   std_logic;                                        -- cs_n
			sram0_dq      : inout std_logic_vector(31 downto 0) := (others => 'X'); -- dq
			sram0_dqm     : out   std_logic_vector(3 downto 0);                     -- dqm
			sram0_ras_n   : out   std_logic;                                        -- ras_n
			sram0_we_n    : out   std_logic;                                        -- we_n
			sram1_addr    : out   std_logic_vector(10 downto 0);                    -- addr
			sram1_ba      : out   std_logic_vector(1 downto 0);                     -- ba
			sram1_cas_n   : out   std_logic;                                        -- cas_n
			sram1_cke     : out   std_logic;                                        -- cke
			sram1_cs_n    : out   std_logic;                                        -- cs_n
			sram1_dq      : inout std_logic_vector(31 downto 0) := (others => 'X'); -- dq
			sram1_dqm     : out   std_logic_vector(3 downto 0);                     -- dqm
			sram1_ras_n   : out   std_logic;                                        -- ras_n
			sram1_we_n    : out   std_logic                                         -- we_n
		);
	end component qsys;

	u0 : component qsys
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --   clk.clk
			led_export    => CONNECTED_TO_led_export,    --   led.export
			reset_reset_n => CONNECTED_TO_reset_reset_n, -- reset.reset_n
			sram0_addr    => CONNECTED_TO_sram0_addr,    -- sram0.addr
			sram0_ba      => CONNECTED_TO_sram0_ba,      --      .ba
			sram0_cas_n   => CONNECTED_TO_sram0_cas_n,   --      .cas_n
			sram0_cke     => CONNECTED_TO_sram0_cke,     --      .cke
			sram0_cs_n    => CONNECTED_TO_sram0_cs_n,    --      .cs_n
			sram0_dq      => CONNECTED_TO_sram0_dq,      --      .dq
			sram0_dqm     => CONNECTED_TO_sram0_dqm,     --      .dqm
			sram0_ras_n   => CONNECTED_TO_sram0_ras_n,   --      .ras_n
			sram0_we_n    => CONNECTED_TO_sram0_we_n,    --      .we_n
			sram1_addr    => CONNECTED_TO_sram1_addr,    -- sram1.addr
			sram1_ba      => CONNECTED_TO_sram1_ba,      --      .ba
			sram1_cas_n   => CONNECTED_TO_sram1_cas_n,   --      .cas_n
			sram1_cke     => CONNECTED_TO_sram1_cke,     --      .cke
			sram1_cs_n    => CONNECTED_TO_sram1_cs_n,    --      .cs_n
			sram1_dq      => CONNECTED_TO_sram1_dq,      --      .dq
			sram1_dqm     => CONNECTED_TO_sram1_dqm,     --      .dqm
			sram1_ras_n   => CONNECTED_TO_sram1_ras_n,   --      .ras_n
			sram1_we_n    => CONNECTED_TO_sram1_we_n     --      .we_n
		);

