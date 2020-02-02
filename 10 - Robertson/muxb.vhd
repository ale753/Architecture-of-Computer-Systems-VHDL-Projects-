----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:22:10 01/09/2020 
-- Design Name: 
-- Module Name:    muxb - Behavioral 
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

entity muxb is
	PORT (
			a0,b0: in  std_logic_vector(7 downto 0);
			s0 : in  std_logic;  
			y : out std_logic_vector(7 downto 0)
);
end muxb;


architecture dataflow of muxb is

begin

y<= a0 when (s0 = '0') else 
	 b0 when (s0 = '1') else 
	 "00000000";

end dataflow;