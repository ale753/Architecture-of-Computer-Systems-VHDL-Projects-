library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_signed.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AdderFPGA is

 Port ( clock_50Mhz : in STD_LOGIC;
           reset : in STD_LOGIC; 
			  X1 : in STD_LOGIC_VECTOR (7 downto 0);
			  load1,load2,result : in STD_LOGIC;
           Anode_Activate : out STD_LOGIC_VECTOR (3 downto 0);
           LED_out : out STD_LOGIC_VECTOR (6 downto 0);	
			  LD0 : out STD_LOGIC
			  );

end AdderFPGA;

architecture Behavioural of AdderFPGA is

signal OP_1, OP_2 : boolean := false;
signal op1,op2,sum : std_logic_vector (7 downto 0) := (others => '0') ;
signal value_to_display : std_logic_vector (7 downto 0):= (others => '0');
signal L1: std_logic:='0';


component ripple_carry_adder_8b is
PORT (
			A,B : in  std_logic_vector (7 downto 0);  
			c0 : in std_logic;
			c8: out std_logic;
			S: out std_logic_vector (7 downto 0)
			);
end component;


component SEV_SEG_DISP is
    Port ( clock_50Mhz : in STD_LOGIC;
           reset : in STD_LOGIC; 
			  X: in STD_LOGIC_VECTOR (7 downto 0);
           Anode_Activate : out STD_LOGIC_VECTOR (3 downto 0);
           LED_out : out STD_LOGIC_VECTOR (6 downto 0)

			  );

end component;


begin

FA8 : ripple_carry_adder_8b port map(
		A => op1,
		B => op2,
		c0 => '0',
		S => sum
);


SSD : SEV_SEG_DISP port map(
		clock_50Mhz => clock_50Mhz,
		reset => reset,
		Anode_Activate => Anode_Activate,
		LED_out => LED_out,
		X => value_to_display
);



process (clock_50Mhz, reset) begin
	
	if (reset = '1') then
		op1 <= (others => '0');
		op2 <= (others => '0');
		OP_1 <= false;
		OP_2 <= false;
	elsif (rising_edge(clock_50Mhz)) then
	
		if load1 = '1' then
				op1 <= X1;
				OP_1 <= true;
				OP_2 <= false;
				LD0<='0';
		elsif load2 = '1' then
				op2 <= X1;
				OP_2 <= true;
		end if;
		
		if (OP_1=true and OP_2=true) then
			if (result = '1') then
				value_to_display <=sum;
				
				if ((op1(7)='0' and op2(7)='0' and sum(7)='1') or (op1(7)='1' and op2(7)='1' and sum(7)='0')) then
					LD0<='1';
				else
					LD0<='0';
				end if;
				
			end if;
		else 
			value_to_display <= X1;
			LD0<='0';
		end if;
		
	end if;
		
		
end process;


end Behavioural;