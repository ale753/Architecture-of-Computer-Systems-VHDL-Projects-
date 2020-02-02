----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:30:12 11/22/2019 
-- Design Name: 
-- Module Name:    debouncer - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity debouncer is

	port(
	clock, reset: in std_logic;
	data_in: in std_logic;
	data_out: out std_logic);
	
	
end debouncer;

architecture Behavioral of debouncer is

signal s1,s2,slow_clk_enable: std_logic :='0';
signal counter: integer:=1;

begin


proc1: process(clock,reset)
begin

 if(reset='1') then 
		counter <= 1;
		slow_clk_enable <= '0';
 elsif(rising_edge(clock)) then
		
		 
		if(counter =1000000) then
			counter <=  1;
			slow_clk_enable <= '1';
		else
		slow_clk_enable <= '0';
		counter <= counter + 1;
		
		end if;
 end if;
 

 
end process;



proc2: process (clock,reset)


begin
	if (reset='1') then
	s1<='0';
	s2<='0';
	elsif (rising_edge(clock)) then
		if(slow_clk_enable='1') then
			s1<= data_in;
			s2<=s1;
		end if;
	end if;
	
	
	
end process; 


data_out<= s1 and (not s2) and slow_clk_enable;


end Behavioral;




