----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:10:48 12/14/2019 
-- Design Name: 
-- Module Name:    arbiter - Behavioral 
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

entity arbiter is
port(	
		enable: in STD_LOGIC_VECTOR(3 downto 0);
		output: out STD_LOGIC_VECTOR(1 downto 0));
		
end arbiter;

architecture dataflow of arbiter is

begin

output <= "00" when enable(3) = '1' else
			 "01" when (enable(3) = '0' and enable(2)='1') else
			 "10" when (enable(3) = '0' and enable(2)='0' and enable(1)='1') else
			 "11" when (enable(3) = '0' and enable(2)='0' and enable(1)='0' and enable(0)='1') else
			 "--";

end dataflow;

