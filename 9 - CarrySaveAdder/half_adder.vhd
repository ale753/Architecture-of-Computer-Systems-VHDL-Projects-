library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
	PORT ( x : in std_logic;
			 y : in std_logic;
			 s : out std_logic;
			 c : out std_logic);
end half_adder;

architecture DataFlow of half_adder is

begin

s <= x xor y;
c <=  x and y;

end DataFlow;
