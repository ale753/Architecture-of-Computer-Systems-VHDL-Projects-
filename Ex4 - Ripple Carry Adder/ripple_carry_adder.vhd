----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:21:04 11/25/2018 
-- Design Name: 
-- Module Name:    ripple_carry_adder - Behavioral 
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

entity ripple_carry_adder_4b is
PORT (
			a0, a1, a2, a3 : in  std_logic;  
			b0, b1, b2, b3 : in  std_logic;
			c0 : in std_logic;
			c4 : out std_logic;
			s0, s1, s2, s3: out std_logic 
			);
			
end ripple_carry_adder_4b;

architecture Structural of ripple_carry_adder_4b is

Component full_adder 
	PORT (
			x  : in  std_logic; 
			y : in std_logic;
			c0 : in std_logic;
			s : out std_logic;
			c : out std_logic );
end Component;

signal c1, c2, c3 : std_logic;

begin
FA0 : full_adder port map (
		x => a0,
		y => b0,
		c0 => c0,
		s => s0,
		c => c1
		);
		
FA1 : full_adder port map (
		x => a1,
		y => b1,
		c0 => c1,
		s => s1,
		c => c2
		);
		
FA2 : full_adder port map (
		x => a2,
		y => b2,
		c0 => c2,
		s => s2,
		c => c3
		);
FA3 : full_adder port map (
		x => a3,
		y => b3,
		c0 => c3,
		s => s3,
		c => c4
		);

end Structural;

