----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/18/2024 02:58:56 PM
-- Design Name: 
-- Module Name: main - Behavioral
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

entity main is
    generic (
        DATA_WIDTH : POSITIVE := 16;
        FIFO_SIZE : POSITIVE := 14
    );
    Port (
        clk                 : in  std_logic;
        areset_n            : in  std_logic;

        -- controll signal from PS
        activate            : in  std_logic; 
        
        -- reset to fifo
        fifo_resetn         : out std_logic;

        -- data from ADC
        data_o              : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        data_ready          : in std_logic;
        
        -- data to FIFO
        fifo_m_axis_tdata     : out std_logic_vector(16*DATA_WIDTH-1 downto 0);
        fifo_m_axis_tvalid    : out std_logic;
        fifo_m_axis_tready    : in  std_logic;
       
        
        -- data to FIFO
        fifo_s_axis_tdata     : in std_logic_vector(16*DATA_WIDTH-1 downto 0);
        fifo_s_axis_tvalid    : in std_logic;
        fifo_s_axis_tready    : out  std_logic;
        
        axis_data_count       : in std_logic_vector(11 downto 0);
        -- data to dma
        dma_axis_tdata      : out std_logic_vector(16*DATA_WIDTH-1 downto 0);
        dma_axis_tvalid     : out std_logic;
        dma_axis_tready     : in  std_logic;
        dma_axis_tlast      : out std_logic
    );
end main;

architecture Behavioral of main is
    signal data_buffer          : std_logic_vector(16*DATA_WIDTH-1 downto 0):= (others=> '0');
    signal data_buffer_index    : integer range 0 to 16 := 0;  -- Index for the next data insertion into the data_buffer
    --signal fifo_m_axis_tvalid_s   : std_logic := '0';
    type state_type is (IDLE, STORE, TRANSFER);
    signal state : state_type := IDLE;
    
    -- signal reset the fifo
    signal fifo_reset_counter : integer range 0 to 100_000_000 := 0;
    signal fifo_resetn_s : std_logic := '0';

begin
    --fifo_m_axis_tvalid <= fifo_m_axis_tvalid_s;
    process(clk, areset_n, activate, data_ready, fifo_m_axis_tready)
    begin
        if areset_n = '0' then
            fifo_m_axis_tdata <= (others => '0');
            fifo_m_axis_tvalid <= '0';
            fifo_s_axis_tready <= '0';
            dma_axis_tdata <= (others => '0');
            dma_axis_tvalid <= '0';
            dma_axis_tlast <= '0';
            data_buffer_index <= 0;
            data_buffer <= (others => '0');
            state <= IDLE;
        elsif rising_edge(clk) then
            case state is 
            when IDLE =>
                fifo_m_axis_tdata <= (others => '0');
                fifo_m_axis_tvalid <= '0';
                fifo_s_axis_tready <= '0';
                dma_axis_tdata <= (others => '0');
                dma_axis_tvalid <= '0';
                dma_axis_tlast <= '0';
                data_buffer_index <= 0;
                data_buffer <= (others => '0');
                if activate = '1' and unsigned(axis_data_count) = to_unsigned(0, axis_data_count'length) then
                    state <= STORE;
                end if;
            
            when STORE => 
                if data_ready = '1' and fifo_m_axis_tready = '1' then
                    -- Store incoming data into the data_buffer
                    --data_buffer <= data_buffer(15*DATA_WIDTH-1 downto 0) & data_o;
                    data_buffer <= data_o & data_buffer(16*DATA_WIDTH-1 downto DATA_WIDTH);
                    data_buffer_index <= data_buffer_index + 1;        
                elsif fifo_m_axis_tready = '1' then            
                    if data_buffer_index = 16 then  -- data_buffer is full
                        fifo_m_axis_tdata <= data_buffer;
                        fifo_m_axis_tvalid <= '1';
                        data_buffer_index <= 0;  -- Reset the data_buffer index for the next data batch
                    else
                        fifo_m_axis_tvalid <= '0';
                    end if;
                elsif fifo_m_axis_tready = '0' then --this correspond to fifo being full
                    state <= TRANSFER;
                else
                    fifo_m_axis_tvalid <= '0';
                end if;
            when TRANSFER =>
                fifo_s_axis_tready <= dma_axis_tready;
                if fifo_s_axis_tvalid = '1' then
                    dma_axis_tvalid <= '1';
                    dma_axis_tlast <= '1';
                    dma_axis_tdata <= fifo_s_axis_tdata;
                elsif unsigned(axis_data_count) = to_unsigned(0, axis_data_count'length) then 
                    state <= IDLE;
                    dma_axis_tvalid <= '0';
                    dma_axis_tlast <= '0';                      
                else
                    dma_axis_tvalid <= '0';
                    dma_axis_tlast <= '0';                    
                end if;   
                    
                --if dma_axis_tready = '1'and fifo_s_axis_tvalid = '1' then
                --    dma_axis_tdata <= fifo_s_axis_tdata;
                --    dma_axis_tvalid <= fifo_s_axis_tvalid;
                --    dma_axis_tlast <= fifo_s_axis_tvalid;  
                --elsif dma_axis_tready = '1' then
                --    dma_axis_tvalid <= '0'
                                           
            when OTHERS =>
                state <= IDLE;
            end case;
        end if;
    end process;
    
    fifo_resetn <= fifo_resetn_s;
    process(clk, areset_n)
    begin
        if areset_n = '0' then
            fifo_reset_counter <= 0;
            fifo_resetn_s <= '1';
        elsif rising_edge(clk) then
            if dma_axis_tready = '0' then
                -- Increment the counter if dma_axis_tready is not ready
                if fifo_reset_counter < 100_000_000 then -- 100 MHz clock for 1 second
                    fifo_reset_counter <= fifo_reset_counter + 1;
                    fifo_resetn_s <= '1';
                else
                    -- If 1 second has elapsed, assert the FIFO reset signal
                    fifo_resetn_s <= '0';
                    fifo_reset_counter <= 0; -- Reset the counter
                end if;
            else
                -- Reset the counter and deassert the FIFO reset if dma_axis_tready is '1'
                fifo_reset_counter <= 0;
                fifo_resetn_s <= '1';
            end if;
        end if;
    end process;
    
end Behavioral;