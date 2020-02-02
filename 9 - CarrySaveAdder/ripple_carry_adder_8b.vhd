library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ripple_carry_adder_8b is

PORT (
			A : in  std_logic_vector (7 downto 0);  
			B : in  std_logic_vector(7 downto 0);
			c0 : in std_logic;
			c8 : out std_logic;
			S: out std_logic_vector (7 downto 0)
			);

end ripple_carry_adder_8b;

architecture Structural of ripple_carry_adder_8b is

Component ripple_carry_adder_4b 
	PORT (
			a0, a1, a2, a3 : in  std_logic;  
			b0, b1, b2, b3 : in  std_logic;
			c0 : in std_logic;
			c4 : out std_logic;
			s0, s1, s2, s3: out std_logic  );
end Component;

signal c : std_logic;

begin
RCA0 : ripple_carry_adder_4b port map (
		a0 => A(0),
		a1 => A(1),
		a2 => A(2),
		a3 => A(3),
		b0 => B(0),
		b1 => B(1),
		b2 => B(2),
		b3 => B(3),
		c0 => c0,
		s0 => S(0),
		s1 => S(1),
		s2 => S(2),
		s3 => S(3),
		c4 => c
		);
RCA1 : ripple_carry_adder_4b port map (
		a0 => A(4),
		a1 => A(5),
		a2 => A(6),
		a3 => A(7),
		b0 => B(4),
		b1 => B(5),
		b2 => B(6),
		b3 => B(7),
		c0 => c,
		s0 => S(4),
		s1 => S(5),
		s2 => S(6),
		s3 => S(7),
		c4 => c8
		);
end Structural;
