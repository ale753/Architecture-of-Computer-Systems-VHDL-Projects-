library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.std_logic_signed.all;


entity CarrySaveFPGA is

 Port ( 	  clock_50Mhz : in STD_LOGIC;
           load1, load2,load3,result: in STD_LOGIC; 
			  X : in STD_LOGIC_VECTOR (7 downto 0);
           Anode_Activate : out STD_LOGIC_VECTOR (3 downto 0);
           LED_out : out STD_LOGIC_VECTOR (6 downto 0)
			  );

end CarrySaveFPGA;

architecture Behavioural of CarrySaveFPGA is


signal OP_1, OP_2, OP_3: boolean := false; 

signal op1, op2,op3 : std_logic_vector (7 downto 0) := (others => '0') ;
signal sum : std_logic_vector (8 downto 0) := (others => '0') ;
signal zero :std_logic_vector (7 downto 0):= (others => '0') ;

signal cout : std_logic;

signal value_to_display: std_logic_vector (8 downto 0);



component carry_save_adder is
	Port ( A,B,C : in STD_LOGIC_VECTOR (7 downto 0);
			 S1 : OUT STD_LOGIC_VECTOR (8 downto 0);
			 Cout : OUT STD_LOGIC);
end component;



component SEV_SEG_DISP is
    Port (
			  X : in STD_LOGIC_VECTOR(8 downto 0);
			  clock_50Mhz : in STD_LOGIC;
           reset : in STD_LOGIC; 
           Anode_Activate : out STD_LOGIC_VECTOR (3 downto 0);
           LED_out : out STD_LOGIC_VECTOR (6 downto 0)
			  );

end component;


begin

CSA : carry_save_adder port map(
		A => op1,
		B => op2,
		C => op3,
		Cout => cout,
		S1 => sum
);


SSD : SEV_SEG_DISP port map(
		X => value_to_display,
		clock_50Mhz => clock_50Mhz,
		reset => '0',
		Anode_Activate => Anode_Activate,
		LED_out => LED_out

);



process (clock_50Mhz) 

begin
	
	if (rising_edge(clock_50Mhz)) then
		if load1 = '1' then 
				op1 <= X;
				OP_1 <= true;
				OP_2 <= false;
				OP_3 <= false;
		elsif load2 = '1' then
				op2 <= X;
				OP_2 <= true;
				OP_3 <= false;
		elsif load3 = '1' then
				op3 <= X;
				OP_3 <= true;
		end if;
		
		if (OP_1 = true and OP_2 = true and OP_3 = true) then
			if result = '1' then
				value_to_display <= sum;
			end if;
		else 
			value_to_display <= '0' & X;
		end if;
		
	end if;
		
		
end process;

end Behavioural;