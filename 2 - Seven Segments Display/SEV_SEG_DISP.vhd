library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;


entity SEV_SEG_DISP is
    Port ( clock_50Mhz : in STD_LOGIC;
           reset : in STD_LOGIC;
			  X: in STD_LOGIC_VECTOR (3 downto 0);
           Anode_Activate : out STD_LOGIC_VECTOR (3 downto 0);
           LED_out : out STD_LOGIC_VECTOR (6 downto 0)
			  );

end SEV_SEG_DISP;
architecture Behavioral of SEV_SEG_DISP is

Component counter 
port(
	clockfx,reset: in std_logic;
	counter: out std_logic_vector(1 downto 0) 
);
end component;


Component clockfilter
port(
			clock_50Mhz : in STD_LOGIC;
         reset : in STD_LOGIC;
			clock_out:out std_logic

);
end component;

Component anodesmanager
port(
		counter: in std_logic_vector(1 downto 0);
		anodes: out STD_LOGIC_VECTOR (3 downto 0)


);
end component;


Component cathodesmanager
port(
		counter:in std_logic_vector(1 downto 0);
		X: in STD_LOGIC_VECTOR (3 downto 0);
		cath : out STD_LOGIC_VECTOR (6 downto 0)

);
end component;

signal clk: std_logic:='0';
signal count: std_logic_vector(1 downto 0):=(others=>'0');

begin

C: counter port map(
	clockfx=>clk,
	reset=>reset,
	counter=>count

);


AN: anodesmanager port map(

	counter=>count,
	anodes=>Anode_Activate


);


CAT: cathodesmanager port map(
		counter=>count,
		X=>X,
		cath=> LED_out
);



CL: clockfilter port map(
		clock_50Mhz=>clock_50Mhz,
      reset=>reset,
		clock_out=>clk

);


end Behavioral;
