library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux8 is
PORT (
			S : in  std_logic_vector(2 downto 0);   
			D : in  std_logic_vector(7 downto 0);
			y : out std_logic 
			);
end Mux8;

architecture Structural of Mux8 is

Component mux4 
	PORT (
			S1 : in  std_logic_vector(1 downto 0);  
			D1 : in  std_logic_vector(3 downto 0);
			y : out std_logic );
end Component;

Component mux2 
	PORT (
			s0 : in  std_logic;  
			a0,b0: in  std_logic;
			y : out std_logic );
end Component;

signal c0, c1 : std_logic :='0';

begin

MU4_1 : mux4 port map (
		D1(0) => D(0),
		D1(1) => D(1),
		D1(2) => D(2),
		D1(3) => D(3),
		S1(0) => S(1),
		S1(1) => S(0),
		y  => c0
		);
MU4_2 : mux4 port map (
		D1(0) => D(4),
		D1(1) => D(5),
		D1(2) => D(6),
		D1(3) => D(7),
		S1(0) => S(1),
		S1(1) => S(0),
		y	=> c1
		);
MU2 : mux2 port map (
		a0 => c0,
		b0 => c1,
		s0 => S(2),
		y => y
		);
end Structural;