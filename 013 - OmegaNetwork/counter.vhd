----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:55:37 01/09/2020 
-- Design Name: 
-- Module Name:    counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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


-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
port(
	clockfx,reset: in std_logic;
	counter: out std_logic_vector(1 downto 0) -- 2 bit contatore mod 4


);
end counter;

architecture Behavioral of counter is

signal c: std_logic_vector(1 downto 0):=(others=>'0');

begin


process(clockfx,reset)
begin 
   if(reset='1') then
        c <= (others => '0');
    elsif(rising_edge(clockfx)) then
        c <= std_logic_vector(unsigned(c) + 1);
    end if;
end process;

counter<=c;

end Behavioral;

