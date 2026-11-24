----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/24/2026 12:49:13 PM
-- Design Name: 
-- Module Name: ram - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ram is
--  Port ( );
port(
    clk: in std_logic;
    address: in std_logic_vector(10 downto 0);
    data_in: in std_logic_vector(7 downto 0);
    cs: in std_logic;
    we: in std_logic;
    data_out: out std_logic_vector(7 downto 0)
);
end ram;

architecture Behavioral of ram is
    type byte_arr is array(0 to 1024) of std_logic_vector(7 downto 0);
    signal ram: byte_arr := (others => (others => '0'));
begin

clk_proc: process(clk)
begin
    if rising_edge(clk) and cs = '1' then
        if we = '1' then
            ram(to_integer(unsigned(address))) <= data_in;
        else
            data_out <= ram(to_integer(unsigned(address)));
        end if;
    end if;
end process;

end Behavioral;
