----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:10:24 12/14/2019 
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
	EN: in std_logic_vector(3 downto 0);
	DAT0,DAT1,DAT2,DAT3: in std_logic_vector (1 downto 0);
	out0,out1,out2,out3: out std_logic_vector (1 downto 0)

);

end PC;

architecture structural of PC is

Component arbiter
port(
		enable: in STD_LOGIC_VECTOR(3 downto 0);
		output: out STD_LOGIC_VECTOR(1 downto 0)

);
end component;

Component mux4
port(
			S1 : in  std_logic_vector(1 downto 0);  
			dt0,dt1,dt2,dt3 : in  std_logic_vector(1 downto 0);
			y : out std_logic_vector(1 downto 0)
);
end component;


Component demux4
port(
	inp, sel: in std_logic_vector(1 downto 0);
	y0,y1,y2,y3: out std_logic_vector(1 downto 0)
);
end component;

signal f1, t1: std_logic_vector(1 downto 0);

begin


MUX: mux4 port map(
	
	S1=>f1,
	dt0=> DAT0,
	dt1=>DAT1,
	dt2=>DAT2,
	dt3=>DAT3,
	y=>t1


);


DEMUX: demux4 port map(
	inp=>t1,
	sel=>f1,
	y0=>out0,
	y1=>out1,
	y2=>out2,
	y3=>out3

);

ARB: arbiter port map(

	enable=>EN,
	output=>f1

);



end structural;

