
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dac_top is
    Port (
        clk           : in  STD_LOGIC;
        reset_n       : in  STD_LOGIC;
        send_en       : in  STD_LOGIC;
        ldac_n        : out STD_LOGIC;
        mosi          : out STD_LOGIC;
        sclk          : buffer STD_LOGIC;
        ss_n          : buffer STD_LOGIC_VECTOR(0 downto 0)
    );
end dac_top;

architecture Behavioral of dac_top is

    -- Signals for inter-module connections
    signal en_n_signal         : STD_LOGIC;
    signal dac_tx_ena_signal   : STD_LOGIC;
    signal busy_signal         : STD_LOGIC;
    signal dac_data_signal     : STD_LOGIC_VECTOR(15 downto 0);
    signal update_output_n_signal : STD_LOGIC;
    
    --attribute mark_debug : string;
    --attribute mark_debug of ldac_n: signal is "true"; 
    --attribute mark_debug of mosi: signal is "true"; 
    --attribute mark_debug of sclk: signal is "true"; 
    --attribute mark_debug of ss_n: signal is "true"; 
    --attribute mark_debug of send_en: signal is "true"; 
    --attribute mark_debug of en_n_signal : signal is "true";

    -- Component declarations for the sub-modules used in dac_top
    component controller
        Port (
            clk            : in STD_LOGIC;
            reset_n        : in STD_LOGIC;
            busy           : in STD_LOGIC;
            en_n           : out STD_LOGIC;
            update_output  : out STD_LOGIC;
            dac_tx_ena     : out STD_LOGIC
        );
    end component;

    component pmod_dac_ad5541a
        Port (
            clk             : in  STD_LOGIC;
            reset_n         : in  STD_LOGIC;
            dac_tx_ena      : in  STD_LOGIC;
            dac_data        : in  STD_LOGIC_VECTOR(15 downto 0);
            update_output_n : in  STD_LOGIC;
            busy            : out STD_LOGIC;
            ldac_n          : out STD_LOGIC;
            mosi            : out STD_LOGIC;
            sclk            : buffer STD_LOGIC;
            ss_n            : buffer STD_LOGIC_VECTOR(0 downto 0)
        );
    end component;

    component dac_data_entity is
        Port ( sys_clk  : in STD_LOGIC;
               reset_n  : in STD_LOGIC;
               en_n     : in STD_LOGIC;
               send_en  : in STD_LOGIC;
               data_out : out STD_LOGIC_VECTOR(15 downto 0)
               );
    end component;

begin

    -- Controller instance
    ctrl_instance : controller
        port map (
            clk            => clk,
            reset_n        => reset_n,
            busy           => busy_signal,
            en_n           => en_n_signal,
            update_output  => update_output_n_signal,
            dac_tx_ena     => dac_tx_ena_signal
        );

    -- pmod_dac_ad5541a instance
    dac_module_instance : pmod_dac_ad5541a
        port map (
            clk             => clk,
            reset_n         => reset_n,
            dac_tx_ena      => dac_tx_ena_signal,
            dac_data        => dac_data_signal,
            update_output_n => update_output_n_signal,
            busy            => busy_signal,
            ldac_n          => ldac_n,
            mosi            => mosi,
            sclk            => sclk,
            ss_n            => ss_n
        );

    -- DAC Data Entity instance
    dac_data_instance : dac_data_entity
        port map (
            en_n      => en_n_signal,
            sys_clk   => clk,
            send_en      => send_en,
            reset_n   => reset_n,
            data_out  => dac_data_signal
        );

end Behavioral;
