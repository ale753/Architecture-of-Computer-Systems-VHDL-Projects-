library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity RobertsonFPGA is

 Port (    
			  clock_50Mhz : in STD_LOGIC; 
			  X : in STD_LOGIC_VECTOR (7 downto 0);
			  load1,load2,result,reset  : in STD_LOGIC;
           Anode_Activate : out STD_LOGIC_VECTOR (3 downto 0);
           LED_out : out STD_LOGIC_VECTOR (6 downto 0)
			  );

end RobertsonFPGA; 

architecture Behavioral of RobertsonFPGA is

signal OP_1,OP_2 : boolean := false;
signal op1,op2: std_logic_vector (7 downto 0) := (others => '0') ;

signal start: std_logic := '0';
constant zero: std_logic_vector (7 downto 0) := (others => '0') ;
signal A1,Q1 : std_logic_vector (7 downto 0) := (others => '0') ;

signal value_to_display : std_logic_vector (15 downto 0);


component Robertson is 
	Port ( 
		clock : in  STD_LOGIC;
		X,Y : in  STD_LOGIC_VECTOR (7 downto 0); 
		start,reset : in STD_LOGIC;
		A1, Q1: out STD_LOGIC_VECTOR (7 downto 0)
		
	);
end component;


component SEV_SEG_DISP is
    Port ( clock_50Mhz : in STD_LOGIC;
			  X : in STD_LOGIC_VECTOR (15 downto 0);
           reset : in STD_LOGIC; 
           Anode_Activate : out STD_LOGIC_VECTOR (3 downto 0);
           LED_out : out STD_LOGIC_VECTOR (6 downto 0)
			  );

end component;


begin


ROB : Robertson port map (		
		clock => clock_50Mhz,
		X => op1,
		Y => op2,
		start => start,
		reset => reset,
		A1 => A1,
		Q1 => Q1
);



SSD : SEV_SEG_DISP port map(
		clock_50Mhz => clock_50Mhz,
		X => value_to_display,
		reset => reset,
		Anode_Activate => Anode_Activate,
		LED_out => LED_out
);


p: process (clock_50Mhz, reset) 

begin
	
	if (reset= '1') then
		OP_1 <= false;
		OP_2 <= false;
		op1<= (others=>'0');
		op2<= (others=>'0');
		start <= '0';
	elsif (rising_edge(clock_50Mhz)) then
		if load1 = '1' then 
				start <= '0';
				op1 <= X;
				OP_1 <= true;
				OP_2 <= false;
				
		elsif load2 = '1' then
				op2 <= X;
				OP_2 <= true;
		end if;
		
		if (OP_1 = true and OP_2 = true) then
			if result = '1' then
				start <= '1';
				value_to_display <= A1 & Q1;
			end if;
		else 
			value_to_display <= zero & X; 
		end if;
		
	end if;

		
end process;

end Behavioral;