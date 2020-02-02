----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:14:35 12/14/2019 
-- Design Name: 
-- Module Name:    DEMUX2 - Behavioral 
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

entity DEMUX2 is

	PORT (
			X : in  std_logic_vector(1 downto 0); 
			s1 : in  std_logic;  
			A1,A2: out  std_logic_vector(1 downto 0)
			);
			
end DEMUX2;

architecture dataflow of DEMUX2 is

begin

A1<= X when s1='0' else "--";
A2<= X when s1='1' else "--";

end dataflow;

