library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity controller is
    Port (
        clk             : in  STD_LOGIC;
        reset_n         : in  STD_LOGIC;
        busy            : in  STD_LOGIC;
        en_n            : out STD_LOGIC;
        update_output   : out STD_LOGIC;
        dac_tx_ena      : out STD_LOGIC
    );
end controller;

architecture Behavioral of controller is
    type state_type is (gen_read_init, gen_2_dac, gen_read, wait_dac);
    signal state : state_type := gen_read_init;

    attribute mark_debug : string;
    attribute mark_debug of state: signal is "true"; 
    --attribute mark_debug of counter: signal is "true"; 

begin

    -- State transition and output logic
    process (clk, reset_n)
    begin
        if reset_n = '0' then
            state <= gen_read_init;
            --counter <= 0;
        elsif rising_edge(clk) then

            case state is
                when gen_read_init =>
                    en_n <= '1';
                    update_output <= '0';
                    dac_tx_ena <= '0';
                    if busy = '0' then 
                        state <= gen_2_dac;
                    else
                        state <= gen_read_init;
                    end if;

                when gen_2_dac =>
                    en_n <= '1';
                    update_output <= '0';
                    dac_tx_ena <= '1';
                    if busy = '1' then
                        state <= gen_read;
                    else
                        state <= gen_2_dac;
                    end if;

                when gen_read =>
                    en_n <= '0';
                    update_output <= '1';
                    dac_tx_ena <= '0';
                    if busy = '0' then
                        state <= gen_2_dac;
                    else
                        state <= wait_dac;
                    end if;

                when wait_dac =>
                    en_n <= '1';
                    update_output <= '1';
                    dac_tx_ena <= '0';
                    if busy = '0' then
                        state <= gen_2_dac;
                    else
                        state <= wait_dac;
                    end if;
                when others => 
                    state <= gen_read_init;
            end case;
        end if;

    end process;

end Behavioral;

