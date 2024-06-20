library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity dac_top_tb is
-- The testbench entity does not have ports.
end entity dac_top_tb;

architecture behavior of dac_top_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component dac_top
        Port (
            clk          : in  STD_LOGIC;
            reset_n      : in  STD_LOGIC;
            send_en      : in  STD_LOGIC;
            ldac_n       : out STD_LOGIC;
            mosi         : out STD_LOGIC;
            sclk         : buffer STD_LOGIC;
            ss_n         : buffer STD_LOGIC_VECTOR(0 downto 0)
        );
    end component;

    -- Inputs
    signal clk_tb       : STD_LOGIC := '0';
    signal reset_n_tb   : STD_LOGIC := '0';
    signal send_en_tb   : STD_LOGIC := '0';

    -- Outputs
    signal ldac_n_tb    : STD_LOGIC;
    signal mosi_tb      : STD_LOGIC;
    signal sclk_tb      : STD_LOGIC;
    signal ss_n_tb      : STD_LOGIC_VECTOR(0 downto 0);

    -- Clock period definitions
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: dac_top
        port map (
            clk      => clk_tb,
            reset_n  => reset_n_tb,
            send_en  => send_en_tb,
            ldac_n   => ldac_n_tb,
            mosi     => mosi_tb,
            sclk     => sclk_tb,
            ss_n     => ss_n_tb
        );

    -- Clock generation
    clk_process : process
    begin
        while true loop
            clk_tb <= '0';
            wait for clk_period/2;
            clk_tb <= '1';
            wait for clk_period/2;
        end loop;
    end process;

    -- Test sequence process
    stim_proc: process
    begin
        -- Initialize Inputs
        reset_n_tb <= '0';
        send_en_tb <= '0';

        -- Wait 100 ns for global reset to finish
        wait for 100 ns;

        -- De-assert reset
        reset_n_tb <= '1';

        -- Add further test commands here
        -- Infinite loop to keep the testbench running
        while true loop
            -- Wait for 1000 clock cycles
            wait for 1000 * clk_period;

            -- Toggle send_en_tb to high
            send_en_tb <= '1';

            -- Short pulse or period for which send_en_tb remains high
            wait for clk_period;

            -- Reset send_en_tb to low
            send_en_tb <= '0';
        end loop;

        -- Finish simulation after some time (not needed in VHDL simulation)
        -- wait for 1000000000;
        -- wait; -- This will cause the process to wait forever, effectively ending the simulation
    end process;

end architecture behavior;

