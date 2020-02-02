
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_adder is
	PORT (
			x  : in  std_logic; 
			y : in std_logic;
			c0 : in std_logic;
			s : out std_logic;
			c : out std_logic );

end full_adder;

architecture structural of full_adder is

Component half_adder 
	PORT ( x : in std_logic;
			 y : in std_logic;
			 s : out std_logic;
			 c : out std_logic);
end Component;

signal s1, c1, c2 : std_logic;

begin

HA1 : half_adder port map (
		x => x,
		y => y,
		s => s1,
		c => c1);
HA2 : half_adder port map(
		x => s1,
		y => c0,
		s => s,
		c => c2);
		
c <= c2 or c1;
		

end structural;

