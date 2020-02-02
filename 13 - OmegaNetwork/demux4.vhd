----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:41:26 12/15/2019 
-- Design Name: 
-- Module Name:    demux4 - Behavioral 
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

entity demux4 is
port(
	inp, sel: in std_logic_vector(1 downto 0);
	y0,y1,y2,y3: out std_logic_vector(1 downto 0)

);

end demux4;

architecture dataflow of demux4 is

begin

y0<= inp when sel="00" else (others=>'-');
y1<= inp when sel="01" else (others=>'-');
y2<= inp when sel="10" else (others=>'-');
y3<= inp when sel="11" else (others=>'-');

end dataflow;

