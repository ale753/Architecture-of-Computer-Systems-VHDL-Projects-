library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4 is
	PORT (
			S1 : in  std_logic_vector(1 downto 0);  
			D1 : in  std_logic_vector(3 downto 0);
			y : out std_logic );
end mux4;

architecture DataFlow of mux4 is

begin
	y <= D1(0)	when S1 = "00" else
		  D1(1)	when S1 = "01" else
		  D1(2)	when S1 = "10" else
		  D1(3)	when S1 = "11" else
		  '-';
end DataFlow;