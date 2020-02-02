----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:54:04 01/11/2020 
-- Design Name: 
-- Module Name:    contatore2 - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_arith. all;
use IEEE.MATH_REAL. all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contatore is
Generic (N: integer);
Port ( 
		reset : in STD_LOGIC;
		clk,enable,set : in STD_LOGIC;
		datain: in STD_LOGIC_VECTOR(7 downto 0);
		count : out STD_LOGIC_VECTOR(7 downto 0);
		count_end : out STD_LOGIC
);
end contatore;

architecture Behavioral of contatore is

begin

process(clk,reset,enable)
variable cnt: integer range 0 to N-1:=0;

begin

if (reset='1') then
	cnt:=0;
	count_end<='0';
	
elsif (set='1') then
	cnt:= TO_INTEGER(unsigned(datain));

elsif falling_edge(clk) then

	if(enable='1')then
		if (cnt=N-1) then
		cnt:=0;
		count_end<='1';
		else
		cnt:= cnt+1;
		count_end<='0';
		end if;

	end if;
	
end if;


count<=CONV_STD_LOGIC_VECTOR (cnt,8);

end process;

end Behavioral;

