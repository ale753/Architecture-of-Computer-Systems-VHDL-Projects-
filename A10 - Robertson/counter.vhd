library IEEE;
use IEEE.STD_LOGIC_1164. ALL;
use IEEE.NUMERIC_STD. ALL;

entity counter is

Port ( 
	clock : in STD_LOGIC;
	enable : in STD_LOGIC;
	reset: in STD_LOGIC;
	count : out STD_LOGIC_VECTOR (2 downto 0)
);

end counter;

architecture Behavioral of counter is

signal max : STD_LOGIC_VECTOR (2 downto 0) := "111";
signal c : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');


begin


counter_process : process(clock, reset, c)
begin

if (reset = '1') then
	c <= (others =>'0');
elsif (rising_edge(clock) AND enable = '1') then

	if (c = max) then
		c <= (others => '0');
	else
		c <= std_logic_vector(unsigned(c)+1);
	end if;
	
end if;

end process;

count <= c;

end Behavioral;