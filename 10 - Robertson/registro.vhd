library IEEE;
use IEEE.STD_LOGIC_1164. ALL;

entity registro is

Port( 
	clock : in STD_LOGIC;
	reset : in STD_LOGIC;
	enable: in STD_LOGIC;
	datain : in STD_LOGIC_VECTOR (7 downto 0);
	dataout : out STD_LOGIC_VECTOR (7 downto 0)
	);
end registro;

architecture behavioral of registro is

begin

process (clock, reset, enable)

variable d: STD_LOGIC_VECTOR (7 downto 0):=(others => '0');

begin

if (reset = '1') then
	d := (others => '0');
	
elsif (enable ='1' and rising_edge(clock)) then
	d := datain;
	
else
	d := d;
end if;

dataout <= d;

end process;

end behavioral;
