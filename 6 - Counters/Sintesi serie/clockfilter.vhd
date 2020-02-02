----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:55:50 01/09/2020 
-- Design Name: 
-- Module Name:    clockfilter - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clockfilter is
port(
			clock_50Mhz : in STD_LOGIC;
         reset : in STD_LOGIC;
			clock_out:out std_logic

);
end clockfilter;

architecture Behavioral of clockfilter is

signal clockfx: std_logic:='0';

begin

clkfilter: process(clock_50Mhz, reset)
variable counter : integer := 1;
begin

 if (reset = '1') then
	counter := 1;
	clockfx <= '0';
 elsif(rising_edge(clock_50Mhz)) then
	if (counter = 1000) then
		clockfx <= not clockfx;
		counter := 1;
	else
		counter := counter + 1;
	end if;
 
 end if;

 end process;

clock_out<=clockfx;

end Behavioral;

