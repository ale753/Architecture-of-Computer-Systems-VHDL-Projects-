----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:51:06 01/09/2020 
-- Design Name: 
-- Module Name:    PC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC is
port(
	clock : in STD_LOGIC;
	start,reset : in STD_LOGIC;
	count: in STD_LOGIC_VECTOR(2 downto 0);
	Q0 : in STD_LOGIC;
	mux_en,reg_en,shift_en,fshift_en : out STD_LOGIC;
	sub : out STD_LOGIC;
	A_en : out STD_LOGIC;
	enablecount: out STD_LOGIC;
	resetcount: out STD_LOGIC
);
end PC;

architecture Behavioral of PC is


type STATE_type is (idle, add, shift, substate, finale, output);
signal State: STATE_type := idle;

begin


mux_en <= Q0;



process (clock,start,reset,Q0,State,count) 
begin

if rising_edge(clock) then
case State is

when idle =>
	resetcount <= '1';
	reg_en <= '1';
	shift_en <= '0';
	fshift_en <= '0';
	A_en <= '0';
	sub <= '0';
	enablecount <='0';

	if (start = '1' and Q0 = '1') then
		State <= add;
	elsif (start = '1' and Q0 = '0') then
		State <= shift;
	else
		State <= idle;
	end if;

when add =>
	reg_en <= '0';
	shift_en <= '0';
	fshift_en <= '0';
	A_en <= '1';
	resetcount <= '0';
	sub <= '0';
	enablecount <='0';

	if reset = '1' then
		State <= idle;
	else
		State <= shift;
	end if;

when shift =>
	reg_en <= '0';
	shift_en <= '1';
	fshift_en <= '0';
	A_en <= '0';
	resetcount <= '0';
	sub <= '0';
	enablecount <= '1';

	if reset = '1' then
		State <=idle;
	elsif count = "110" then
		State <= substate;
	else
		State <= add;
	end if;

when substate =>
	reg_en <= '0';
	shift_en <= '0';
	fshift_en <= '0';
	A_en <= '0';
	resetcount <= '0';

	sub <= '1';
	enablecount <= '0';

	if reset = '1' then
		State <=idle;
	else
		State <= finale;
	end if;


when finale =>
	shift_en <= '0';
	fshift_en <= '1';
	reg_en <= '0';
	A_en <= '0';
	resetcount <= '0';
	sub <= '0';
	enablecount <= '0';

	if reset = '1' then
		State <=idle;
	else
		State <= output;
	end if;


when output =>
	resetcount <= '0';
	shift_en <= '0';
	fshift_en <= '0';
	reg_en <= '0';
	A_en <= '0';
	sub <= '0';
	enablecount <= '0';

	if (reset = '1' or start='0')then
		State <=idle;
	else
		State <= output;
	end if;


end case;


end if;
end process;


end Behavioral;

