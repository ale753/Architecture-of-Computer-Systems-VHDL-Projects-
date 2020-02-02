library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2 is


	PORT (
			s0 : in  std_logic;  
			a0,b0: in  std_logic_vector(1 downto 0);
			y : out std_logic_vector(1 downto 0)
			);


end mux2;

architecture DataFlow of mux2 is

begin

y<= a0 when (s0 ='0') else
	 b0 when (s0='1') else
	 "--";

end DataFlow;