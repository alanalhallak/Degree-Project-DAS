----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/22/2024 10:33:39 PM
-- Design Name: 
-- Module Name: DAC_DATA - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
-- two packages, first one include data the other one is empty
use work.dac_data_pkg.all; -- Include the package
--use work.dac_data_pkg_2.all; -- Include the package


entity dac_data_entity is
    Port ( sys_clk  : in STD_LOGIC;
           reset_n  : in STD_LOGIC;
           en_n     : in STD_LOGIC;
           send_en  : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR(15 downto 0)
           );
end dac_data_entity;

architecture Behavioral of dac_data_entity is
  type state_type is (IDLE, RUN);
  signal state : state_type := IDLE;
  signal address_counter: integer range 0 to memory_size := 0;
  --signal address_counter_2: integer range 0 to memory_size_2 := 0;
  signal data_reg: std_logic_vector(15 downto 0) := (others => '0');
  signal send_en_detected : STD_LOGIC := '0';
  signal send_en_clk_rise : STD_LOGIC := '0';
  --constant clk_freq : integer := 100_000_000;
  --signal delay_counter : integer range 0 to 100_000 := 0;
   attribute mark_debug : string;
   attribute mark_debug of address_counter: signal is "true"; 
   attribute mark_debug of data_reg: signal is "true"; 
   attribute mark_debug of send_en_clk_rise: signal is "true"; 
   attribute mark_debug of send_en_detected: signal is "true"; 

begin
    process(send_en, send_en_detected)
        begin 
        if send_en = '1' and send_en_detected = '0' then
            send_en_clk_rise <= '1';
        else
            send_en_clk_rise <= '0';    
        end if;
        end process;
    
    data_out <= data_reg;
    process(en_n,sys_clk,reset_n)
    begin
        if(reset_n='0') then
            address_counter     <= 0;
            data_reg    <=  dac_mem(address_counter);
        elsif rising_edge(sys_clk)then
            send_en_detected <= send_en;
            case state is 
            when IDLE => 
                address_counter     <= 0;
                data_reg    <=  dac_mem(address_counter);
                if send_en_clk_rise = '1' then
                    state <= RUN;
                else
                    state <= IDLE;
                end if;
            when RUN => 
                if en_n = '0' then
                    data_reg <= dac_mem(address_counter);
                    if address_counter < memory_size - 1 then
                        address_counter <= address_counter + 1;
                    else 
                        state <= IDLE;
                    end if;             
                end if;
            end CASE;
        end if;
    end process;

end Behavioral;
