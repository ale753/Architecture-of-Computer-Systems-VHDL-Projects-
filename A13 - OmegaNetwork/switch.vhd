----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:00:09 12/14/2019 
-- Design Name: 
-- Module Name:    switch - Behavioral 
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

entity switch is
port(
		data0,data1: in std_logic_vector(1 downto 0);
		SRC1, DST1: in std_logic;
		dataout0,dataout1: out std_logic_vector(1 downto 0)

);
end switch;

architecture structural of switch is

Component MUX2 
	PORT (
			s0 : in  std_logic;  
			a0,b0: in  std_logic_vector(1 downto 0);
			y : out std_logic_vector(1 downto 0)
);
end component;

Component DEMUX2 
	PORT (
			X : in  std_logic_vector(1 downto 0); 
			s1 : in  std_logic;  
			A1,A2: out  std_logic_vector(1 downto 0)
			);
end component;

signal t: std_logic_vector(1 downto 0) :=(others=>'0');


begin


MUX_1: mux2 port map(
	s0=>SRC1,
	a0=>data0,
	b0=>data1,
	y=>t

);




DEMUX_1: demux2 port map(

	X=>t,
	s1=>DST1,
	A1=>dataout0,
	A2=>dataout1

);


end structural;

