----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:11:53 11/25/2018 
-- Design Name: 
-- Module Name:    half_adder - Behavioral 
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

entity half_adder is
	PORT ( x : in std_logic;
			 y : in std_logic;
			 s : out std_logic;
			 c : out std_logic);
end half_adder;

architecture DataFlow of half_adder is

begin

s <= x xor y;
c <=  x and y;

end DataFlow;

