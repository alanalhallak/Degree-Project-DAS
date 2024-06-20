----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2024 03:12:56 PM
-- Design Name: 
-- Module Name: edge_detector - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity edge_detector is

    Port (reset_n : in STD_LOGIC;
          clk : in STD_LOGIC;
          ps_gpio : in STD_LOGIC;
          pl_gpio : out STD_LOGIC
          );

end edge_detector;

architecture Behavioral of edge_detector is
    signal pl_gpio_s : std_logic := '0';
    constant clk_freq : integer  := 100_000_000; --10 ms
    signal delay_counter : integer range 0 to clk_freq := 0;
    --signal gpio_counter : integer range 0 to 2048 := 0;
    
    
    --attribute mark_debug : string;
    --attribute mark_debug of ps_gpio: signal is "true"; 
    --attribute mark_debug of pl_gpio: signal is "true"; 
begin
    pl_gpio <= pl_gpio_s;
    process(clk,reset_n,ps_gpio)
    begin 
    if reset_n = '0' then
        pl_gpio_s <= '0';
        delay_counter <= 0;
        --gpio_counter <= 0;
    elsif rising_edge(clk) then
        if ps_gpio = '1' then
            pl_gpio_s <= '1';
            delay_counter <= 0;
      
        else
            if delay_counter = clk_freq - 1 then
                delay_counter <= 0;
                pl_gpio_s <= '0';
            else 
                delay_counter <= delay_counter + 1;

            end if;    
        end if;
     end if;
     end process;
end Behavioral;
