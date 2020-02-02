----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:57:22 12/14/2019 
-- Design Name: 
-- Module Name:    PO - Behavioral 
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

entity PO is
port(
		Dati0,Dati1,Dati2,Dati3 : in std_logic_vector(1 downto 0);
		SRC, DST: in std_logic_vector(1 downto 0);
		D0,D1,D2,D3 : out std_logic_vector(1 downto 0)

);
end PO;

architecture STRUCTURAL of PO is

Component switch
port(
		data0,data1: in std_logic_vector(1 downto 0);
		SRC1, DST1: in std_logic;
		dataout0,dataout1: out std_logic_vector(1 downto 0)
);
end component;

signal t0,t1,t2,t3: std_logic_vector(1 downto 0):=(others=>'0');

begin


SW1: switch port map(

	data0=> Dati0,
	data1=> Dati1,
	SRC1=> SRC(0),
	DST1=> DST(1),
	dataout0=> t0,
	dataout1=>t1

);

SW2: switch port map(

	data0=> Dati2,
	data1=> Dati3,
	SRC1=>  SRC(0),
	DST1=> DST(1),
	dataout0=> t2,
	dataout1=>t3

);


SW3: switch port map(

	data0=> t0,
	data1=> t2,
	SRC1=> SRC(1),
	DST1=> DST(0),
	dataout0=> D0,
	dataout1=>D1


);


SW4: switch port map(

	data0=> t1,
	data1=> t3,
	SRC1=> SRC(1),
	DST1=> DST(0),
	dataout0=> D2,
	dataout1=>D3

);

end STRUCTURAL;

