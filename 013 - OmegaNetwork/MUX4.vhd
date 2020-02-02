library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4 is
	PORT (
			S1 : in  std_logic_vector(1 downto 0);  
			dt0,dt1,dt2,dt3 : in  std_logic_vector(1 downto 0);
			y : out std_logic_vector(1 downto 0)
			);
end mux4;

architecture DataFlow of mux4 is

begin
	y <= dt0	when S1 = "00" else
		  dt1	when S1 = "01" else
		  dt2	when S1 = "10" else
		  dt3	when S1 = "11" else
		  "--";
end DataFlow;