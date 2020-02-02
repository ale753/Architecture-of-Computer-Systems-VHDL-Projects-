library IEEE;
use IEEE.STD_LOGIC_1164. ALL;

entity FlipFlopD is
Port ( 
		D: in STD_LOGIC;
		clock: in STD_LOGIC;
		enable,reset : in STD_LOGIC;
		Q,Qn : out STD_LOGIC
);
end FlipFlopD;

architecture Behavioral of FlipFlopD is

begin
process (clock, reset, enable)
variable dato: STD_LOGIC:= '0';
begin

if (reset='1') then
	dato := '0';
elsif (enable='1' and rising_edge(clock)) then
	dato := D;
end if;


Q <= dato;
Qn <= not(dato);

end process;

end Behavioral;

