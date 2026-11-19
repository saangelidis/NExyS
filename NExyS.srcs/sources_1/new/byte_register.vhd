----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2026 01:23:29 PM
-- Design Name: 
-- Module Name: byte_register - Behavioral
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

entity byte_register is
--  Port ( );
    port(
      value_in: in std_logic_vector(7 downto 0);
      write_enable: in std_logic;
      read_enable: in std_logic;
      clk: in std_logic;
      value_out: out std_logic_vector(7 downto 0)
    );
end byte_register;

architecture Behavioral of byte_register is

signal value: std_logic_vector(7 downto 0);

begin

    clk_proc : process(clk) 
    begin
        if (rising_edge(clk)) then
            if write_enable = '1' then
                value <= value_in;
            end if;
            if read_enable = '1' then
                value_out <= value;
            end if;
        end if;
    end process;

end Behavioral;
