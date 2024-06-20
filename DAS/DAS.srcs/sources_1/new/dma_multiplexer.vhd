----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/01/2024 05:47:49 PM
-- Design Name: 
-- Module Name: dma_multiplexer - Behavioral
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

entity dma_multiplexer is
    generic (
        DATA_WIDTH : integer := 16   -- Assuming 8 bits for data width, change as needed
    );
    port (
        clk                : in std_logic;
        reset_n            : in std_logic;
        activate           : in std_logic;

        -- DMA Channel 1
        dma_axis_tdata_1   : in  std_logic_vector(16*DATA_WIDTH-1 downto 0);
        dma_axis_tvalid_1  : in  std_logic;
        dma_axis_tready_1  : out std_logic;
        dma_axis_tlast_1   : in  std_logic;

        -- DMA Channel 2
        dma_axis_tdata_2   : in  std_logic_vector(16*DATA_WIDTH-1 downto 0);
        dma_axis_tvalid_2  : in  std_logic;
        dma_axis_tready_2  : out std_logic;
        dma_axis_tlast_2   : in  std_logic;
        
        -- DMA Channel 3
        dma_axis_tdata_3   : in  std_logic_vector(16*DATA_WIDTH-1 downto 0);
        dma_axis_tvalid_3  : in  std_logic;
        dma_axis_tready_3  : out std_logic;
        dma_axis_tlast_3   : in  std_logic;
        
        -- DMA Channel 4
        dma_axis_tdata_4   : in  std_logic_vector(16*DATA_WIDTH-1 downto 0);
        dma_axis_tvalid_4  : in  std_logic;
        dma_axis_tready_4  : out std_logic;
        dma_axis_tlast_4   : in  std_logic;

        -- Output Channel
        dma_axis_tdata     : out std_logic_vector(16*DATA_WIDTH-1 downto 0);
        dma_axis_tvalid    : out std_logic;
        dma_axis_tready    : in  std_logic;
        dma_axis_tlast     : out std_logic
    );
end entity dma_multiplexer;

architecture Behavioral of dma_multiplexer is
    type state_type is (IDLE, ADC1, ADC2, ADC3, ADC4);
    signal state : state_type := IDLE;
    
    -- Signals for output ports
    signal dma_axis_tdata_s           : std_logic_vector(16*DATA_WIDTH-1 downto 0) := (others => '0');
    signal dma_axis_tvalid_s          : std_logic := '0';
    signal dma_axis_tlast_s           : std_logic := '0';
    signal dma_axis_tready_1_s        : std_logic := '0';
    signal dma_axis_tready_2_s        : std_logic := '0';
    signal dma_axis_tready_3_s        : std_logic := '0';
    signal dma_axis_tready_4_s        : std_logic := '0';
    
    signal axi_stream_state           : std_logic_vector(1 downto 0) := "00";
    
    attribute mark_debug : string;
    --attribute mark_debug of ps_gpio: signal is "true"; 
    --attribute mark_debug of pl_gpio: signal is "true"; 
    attribute mark_debug of state : signal is "true";
    attribute mark_debug of axi_stream_state : signal is "true";
    begin
        dma_axis_tdata <= dma_axis_tdata_s;
        dma_axis_tvalid <= dma_axis_tvalid_s;
        dma_axis_tlast <= dma_axis_tlast_s; 
        dma_axis_tready_1 <= dma_axis_tready_1_s;
        dma_axis_tready_2 <= dma_axis_tready_2_s;
        dma_axis_tready_3 <= dma_axis_tready_3_s;
        dma_axis_tready_4 <= dma_axis_tready_4_s;
        
process (clk, reset_n, dma_axis_tvalid_1, dma_axis_tvalid_2, dma_axis_tvalid_3, dma_axis_tvalid_4, dma_axis_tready)
        begin
            if reset_n = '0' then
                dma_axis_tready_1_s <= '0';
                dma_axis_tready_2_s <= '0';
                dma_axis_tready_3_s <= '0';
                dma_axis_tready_4_s <= '0';                
                dma_axis_tdata_s    <= (others => '0');
                dma_axis_tvalid_s   <= '0';
                dma_axis_tlast_s    <= '0';
                axi_stream_state    <= "00";
            -- Check readiness of output channel
            elsif rising_edge(clk) then
                case state is 
                when IDLE => 
                    dma_axis_tready_1_s <= '0';
                    dma_axis_tready_2_s <= '0';
                    dma_axis_tready_3_s <= '0';
                    dma_axis_tready_4_s <= '0';                    
                    dma_axis_tdata_s    <= (others => '0');
                    dma_axis_tvalid_s   <= '0';
                    dma_axis_tlast_s    <= '0';
                    if dma_axis_tvalid_1 = '1' and axi_stream_state = "00" then
                        state <= ADC1;                        
                    elsif dma_axis_tvalid_2 = '1' and axi_stream_state = "01" then
                        state <= ADC2;
                    elsif dma_axis_tvalid_3 = '1' and axi_stream_state = "10" then
                        state <= ADC3;
                    elsif dma_axis_tvalid_4 = '1' and axi_stream_state = "11" then
                        state <= ADC4;                                                    
                    else
                        state <= IDLE; 
                    end if;
                
                when ADC1 =>  
                    if activate = '1' then 
                        axi_stream_state <= "01";   
                        if dma_axis_tvalid_1 = '1' then
                            dma_axis_tdata_s <= dma_axis_tdata_1;
                            dma_axis_tvalid_s <= dma_axis_tvalid_1;
                            dma_axis_tlast_s <= dma_axis_tlast_1;
                        else 
                            dma_axis_tlast_s <= '0';
                            dma_axis_tdata_s <=  (others => '0');
                            dma_axis_tvalid_s <= '0';
                        end if;
                                
                        if dma_axis_tready = '1' and dma_axis_tvalid_1 = '1' then 
                            state <= IDLE;
                            dma_axis_tready_1_s <= '1';
                        else
                            state <= ADC1;
                            dma_axis_tready_1_s <= '0';
                        end if;
                    else
                       state <= IDLE;
                       axi_stream_state <= "00";
                    end if;
                when ADC2 =>  
                    if activate = '1' then 
                        axi_stream_state <= "10";                   
                        if dma_axis_tvalid_2 = '1' then
                            dma_axis_tdata_s <= dma_axis_tdata_2;
                            dma_axis_tvalid_s <= dma_axis_tvalid_2;
                            dma_axis_tlast_s <= dma_axis_tlast_2;
                            
                          else 
                            dma_axis_tlast_s <= '0';
                            dma_axis_tdata_s <=  (others => '0');
                            dma_axis_tvalid_s <= '0';
                          end if;
    
                        if dma_axis_tready = '1' and dma_axis_tvalid_2 = '1' then 
                            state <= IDLE;
                            dma_axis_tready_2_s <= '1';
                        else 
                            state <= ADC2;
                            dma_axis_tready_2_s <= '0';
                        end if;
                     else
                        state <= IDLE;
                        axi_stream_state <= "00";
                     end if;
                    
                when ADC3 => 
                    if activate = '1' then 
                        axi_stream_state <= "11";                   

                        if dma_axis_tvalid_3 = '1' then
                            dma_axis_tdata_s <= dma_axis_tdata_3;
                            dma_axis_tvalid_s <= dma_axis_tvalid_3;
                            dma_axis_tlast_s <= dma_axis_tlast_3;
                            
                          else 
                            dma_axis_tlast_s <= '0';
                            dma_axis_tdata_s <=  (others => '0');
                            dma_axis_tvalid_s <= '0';
                          end if;
    
                        if dma_axis_tready = '1' and dma_axis_tvalid_3 = '1' then 
                            state <= IDLE;
                            dma_axis_tready_3_s <= '1';
                        else 
                            state <= ADC3;
                            dma_axis_tready_3_s <= '0';
                        end if;
                     else
                        state <= IDLE;
                        axi_stream_state <= "00";
                     end if;
                     
                when ADC4 =>  
                    if activate = '1' then 
                        axi_stream_state <= "00";                   
                        if dma_axis_tvalid_4 = '1' then
                            dma_axis_tdata_s <= dma_axis_tdata_4;
                            dma_axis_tvalid_s <= dma_axis_tvalid_4;
                            dma_axis_tlast_s <= dma_axis_tlast_4;
                            
                          else 
                            dma_axis_tlast_s <= '0';
                            dma_axis_tdata_s <=  (others => '0');
                            dma_axis_tvalid_s <= '0';
                          end if;
    
                        if dma_axis_tready = '1'  and dma_axis_tvalid_4 = '1' then 
                            state <= IDLE;
                            dma_axis_tready_4_s <= '1';
                        else 
                            state <= ADC4;
                            dma_axis_tready_4_s <= '0';
                        end if; 
                    else
                        state <= IDLE;
                        axi_stream_state <= "00";
                    end if;
                
                when OTHERS => 
                    state <= IDLE;

                end case;                       
   
            end if;
        end process;                 

end architecture Behavioral;