
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;
 
entity carry_save_adder is
Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
B : in STD_LOGIC_VECTOR (7 downto 0);
C : in STD_LOGIC_VECTOR (7 downto 0);
S1 : OUT STD_LOGIC_VECTOR (8 downto 0);
Cout : OUT STD_LOGIC);
end carry_save_adder;
 
architecture Behavioral of carry_save_adder is
 
component ripple_carry_adder_8b
PORT (
			A : in  std_logic_vector (7 downto 0);  
			B : in  std_logic_vector(7 downto 0);
			c0 : in std_logic;
			c8 : out std_logic;
			S: out std_logic_vector (7 downto 0)
			);

end component;


component full_adder is
	PORT (
			x  : in  std_logic; 
			y : in std_logic;
			c0 : in std_logic;
			s : out std_logic;
			c : out std_logic );

end component; 

 
 
-- Intermediate signal
signal X,Y: STD_LOGIC_VECTOR(3 downto 0);
signal C1,C2,C3: STD_LOGIC;

signal carry : STD_LOGIC_VECTOR(7 downto 0);
signal sum : STD_LOGIC_VECTOR(7 downto 0);
 
begin

FA0 : full_adder port map ( x => A(0), y => B(0), c0 => C(0), s => S1(0), c => carry(0) );
FA1 : full_adder port map ( x => A(1), y => B(1), c0 => C(1), s => sum(0), c => carry(1) );
FA2 : full_adder port map ( x => A(2), y => B(2), c0 => C(2), s => sum(1), c => carry(2) );
FA3 : full_adder port map ( x => A(3), y => B(3), c0 => C(3), s => sum(2), c => carry(3) );
FA4 : full_adder port map ( x => A(4), y => B(4), c0 => C(4), s => sum(3), c => carry(4) );
FA5 : full_adder port map ( x => A(5), y => B(5), c0 => C(5), s => sum(4), c => carry(5) );
FA6 : full_adder port map ( x => A(6), y => B(6), c0 => C(6), s => sum(5), c => carry(6) );
FA7 : full_adder port map ( x => A(7), y => B(7), c0 => C(7), s => sum(6), c => carry(7) );
 
  
RCA0 : ripple_carry_adder_8b port map (
		A(0) => sum(0),
		A(1) => sum(1),
		A(2) => sum(2),
		A(3) => sum(3),
		A(4) => sum(4),
		A(5) => sum(5),
		A(6) => sum(6),
		A(7) => '0',
		B => carry,
		c0 => '0',
		c8 => cout,
		S(0) => S1(1),
		S(1) => S1(2),
		S(2) => S1(3),
		S(3) => S1(4),
		S(4) => S1(5),
		S(5) => S1(6),
		S(6) => S1(7),
		S(7) => S1(8)
		);
 
 
end Behavioral;
