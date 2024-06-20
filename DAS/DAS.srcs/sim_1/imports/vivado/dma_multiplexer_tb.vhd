library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity DMA_Multiplexer_TB is
end entity DMA_Multiplexer_TB;

architecture testbench of DMA_Multiplexer_TB is
    -- Constants
    constant DATA_WIDTH : integer := 8;
    constant CLK_PERIOD : time := 10 ns;  -- Clock period

    -- Signals
    signal dma_axis_tdata_1   : std_logic_vector(16*DATA_WIDTH-1 downto 0);
    signal dma_axis_tvalid_1  : std_logic := '0';
    signal dma_axis_tready_1  : std_logic := '1';  -- Start with ready
    signal dma_axis_tlast_1   : std_logic := '0';

    signal dma_axis_tdata_2   : std_logic_vector(16*DATA_WIDTH-1 downto 0);
    signal dma_axis_tvalid_2  : std_logic := '0';
    signal dma_axis_tready_2  : std_logic := '1';  -- Start with ready
    signal dma_axis_tlast_2   : std_logic := '0';

    signal dma_axis_tdata     : std_logic_vector(16*DATA_WIDTH-1 downto 0);
    signal dma_axis_tvalid    : std_logic := '0';
    signal dma_axis_tready    : std_logic := '1';  -- Start with ready
    signal dma_axis_tlast     : std_logic := '0';

    -- Clock Signal
    signal clk_tb : std_logic := '0';
    signal reset_n_tb : std_logic := '0';

        -- Instantiate the DMA Multiplexer
        component DMA_Multiplexer
        generic (
            DATA_WIDTH : integer := 8
        );
        port (
            clk                : in std_logic;
            reset_n            : in std_logic;

            dma_axis_tdata_1   : in  std_logic_vector(16*DATA_WIDTH-1 downto 0);
            dma_axis_tvalid_1  : in  std_logic;
            dma_axis_tready_1  : out std_logic;
            dma_axis_tlast_1   : in  std_logic;

            dma_axis_tdata_2   : in  std_logic_vector(16*DATA_WIDTH-1 downto 0);
            dma_axis_tvalid_2  : in  std_logic;
            dma_axis_tready_2  : out std_logic;
            dma_axis_tlast_2   : in  std_logic;

            dma_axis_tdata     : out std_logic_vector(16*DATA_WIDTH-1 downto 0);
            dma_axis_tvalid    : out std_logic;
            dma_axis_tready    : in  std_logic;
            dma_axis_tlast     : out std_logic
        );
    end component;
    signal counter_1 : integer range 0 to 59 := 0;
    signal counter_2 : integer range 60 to 119 := 0;

begin

        -- Instantiate the DMA Multiplexer
        dut: DMA_Multiplexer
        generic map (
            DATA_WIDTH => DATA_WIDTH
        )
        port map (
            clk               => clk_tb,
            reset_n           => reset_n_tb,
            dma_axis_tdata_1   => dma_axis_tdata_1,
            dma_axis_tvalid_1  => dma_axis_tvalid_1,
            dma_axis_tready_1  => dma_axis_tready_1,
            dma_axis_tlast_1   => dma_axis_tlast_1,

            dma_axis_tdata_2   => dma_axis_tdata_2,
            dma_axis_tvalid_2  => dma_axis_tvalid_2,
            dma_axis_tready_2  => dma_axis_tready_2,
            dma_axis_tlast_2   => dma_axis_tlast_2,

            dma_axis_tdata     => dma_axis_tdata,
            dma_axis_tvalid    => dma_axis_tvalid,
            dma_axis_tready    => dma_axis_tready,
            dma_axis_tlast     => dma_axis_tlast
        );

    -- Clock process definitions
    clk_process :process
    begin
        clk_tb <= '0';
        wait for clk_period/2;
        clk_tb <= '1';
        wait for clk_period/2;
    end process;

    -- Process to generate data for DMA Axi 1
    dma_axis_1_process: process
    begin
        --for i in 60 to 119 loop
            if dma_axis_tready_1 = '1' then
                if counter_1 < 59 then
                    counter_1 <= counter_1 + 1; 
                 else
                    counter_1 <= 0;
                 end if;             
            end if;
            dma_axis_tdata_1 <= std_logic_vector(to_unsigned(counter_1, 128));  -- Incrementing data
            dma_axis_tvalid_1 <= '1';
            dma_axis_tlast_1 <= '1';
            wait for clk_period;

            wait;

    end process dma_axis_1_process;
    
    -- Process to generate data for DMA Axi 2
    dma_axis_2_process: process
    begin
        --for i in 60 to 119 loop
            if dma_axis_tready_2 = '1' then
                if counter_2 < 119 then
                    counter_2 <= counter_1 + 1; 
                 else
                    counter_2 <= 60;
                 end if;             
            end if;
            dma_axis_tdata_2 <= std_logic_vector(to_unsigned(counter_2, 128));  -- Incrementing data
            dma_axis_tvalid_2 <= '1';
            dma_axis_tlast_2 <= '1';
            wait for clk_period;

            wait;

    end process dma_axis_2_process;

    tready_process : process
    begin 
        reset_n_tb <= '0';
        wait for 10*CLK_PERIOD;
        reset_n_tb <= '1';
        wait for 1*CLK_PERIOD;
            
        for i in 0 to 1000 loop
            dma_axis_tready <= '1';
            wait for CLK_PERIOD;

            dma_axis_tready <= '0';
            wait for 3*CLK_PERIOD;
        end loop;
        wait;
    end process; 



end architecture testbench;

