library IEEE;
use IEEE.STD_LOGIC_1164. ALL;


entity addsub is
Port ( 
		X,Y : in STD_LOGIC_VECTOR (7 downto 0);
		subtract : in STD_LOGIC;
		cout : out STD_LOGIC;
		s : out STD_LOGIC_VECTOR (7 downto 0);
		ov : out STD_LOGIC
		);
end addsub;

architecture Structural of addsub is

component ripple_carry_adder_8b is
Port( 

		A,B : in  std_logic_vector (7 downto 0);  
		c0 : in std_logic;
		c8 : out std_logic;
		S: out std_logic_vector (7 downto 0)
		
);
end component;

signal btemp,stemp : STD_LOGIC_VECTOR (7 downto 0);

begin


process (Y, subtract)
begin

	for i in 0 to 7 loop
	btemp(i) <= Y(i) xor subtract;
	end loop;
	
end process;

adder: ripple_carry_adder_8b port map (X,btemp,subtract,cout,stemp);

ov <= '1' when (X(7)='0' and btemp(7)='0' and stemp(7)='1') or (X(7)='1' and btemp(7)='1' and stemp(7)='0') else
		  '0';
s <= stemp;

end Structural;


