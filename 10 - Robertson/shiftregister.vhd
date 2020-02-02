
library IEEE;
use IEEE.STD_LOGIC_1164. ALL;

entity shiftregister is
Port (

	clock : in STD_LOGIC;
	reset : in STD_LOGIC;
	shift : in STD_LOGIC;
	load: in STD_LOGIC;
	serial_in : in STD_LOGIC;
	parallel_in : in STD_LOGIC_VECTOR (7 downto 0);
	serial_out : out STD_LOGIC;
	parallel_out : out STD_LOGIC_VECTOR (7 downto 0)
);
	
end shiftregister;

architecture behavioral of shiftregister is

signal t : std_logic_vector (7 downto 0):=(others => '0');

begin
process (clock)
begin

if rising_edge(clock) then

	if (reset ='1') then
		t <= (others => '0');
	elsif (load = '1') then
		t <= parallel_in;
	elsif (shift = '1') then

		for i in 0 to 6 loop
		t(i) <= t(i+1);
		end loop;
	
		t(7) <= serial_in;
	end if;
	
end if;

end process;

serial_out <= t(0);
parallel_out <= t;

end behavioral;