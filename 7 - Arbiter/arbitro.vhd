library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity arbitro is 
	Port ( A1 : in STD_LOGIC;
	       A2 : in STD_LOGIC;
	       A3 : in STD_LOGIC;
	       U : out STD_LOGIC
	);
end arbitro;

architecture dataflow of arbitro is

begin

U <= (A2 AND A3) OR (A1 AND (NOT A2) AND A3) OR (A1 AND A2 AND (NOT A3)); 


end dataflow;
