library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity orologioFPGA is 
	Port ( BTN_NEXT : in STD_LOGIC;
	       BTN_RESET : in STD_LOGIC;
			 clock_50Mhz : in STD_LOGIC;
			 X : in STD_LOGIC_VECTOR(7 downto 0);
			 Anode_Activate : out STD_LOGIC_VECTOR (3 downto 0);-- 4 Anode signals
          LED_out : out STD_LOGIC_VECTOR (6 downto 0);	
			 LDS  : out STD_LOGIC_VECTOR (3 downto 0)
			 
	);
end orologioFPGA;

architecture Behavioral of orologioFPGA is

type State_type is (A, B, C, D);  -- Define the states
signal State : State_Type := A; 


signal hour_t, minute_t, second_t : STD_LOGIC_VECTOR(7 downto 0):= (others =>'0'); 
signal enable_out_t : STD_LOGIC := '0';
signal set_t : STD_LOGIC := '1';
signal clock_div, c1 : STD_LOGIC := '0';

signal h,m,s : std_logic_vector (7 downto 0) := (others =>'0');

signal hour_conv,min_conv :  STD_LOGIC_VECTOR(11 downto 0 ) := (others =>'0');

component Orologio is 
	Port ( hour_in, minute_in,second_in  : in std_logic_vector (7 downto 0);
	       clk, enable,reset,set : in STD_LOGIC; 
			 hour_out, minute_out, second_out: out std_logic_vector (7 downto 0)
	);
end component;


Component debouncer
	port(
	clock, reset: in std_logic;
	data_in: in std_logic;
	data_out: out std_logic
	
	);
end Component;

Component Clock_Divider 
port ( 
	clk,reset: in std_logic;
	clock_out: out std_logic
);
end Component;

component bin2bcd is
    port (
        bin:    in  std_logic_vector (7 downto 0);
        bcd:    out std_logic_vector (11 downto 0)
    );
end component;

component SEV_SEG_DISP is
    Port ( clock_50Mhz : in STD_LOGIC;
           reset : in STD_LOGIC; -- reset
           Anode_Activate : out STD_LOGIC_VECTOR (3 downto 0);-- 4 Anode signals
           LED_out : out STD_LOGIC_VECTOR (6 downto 0);	
				X : in STD_LOGIC_VECTOR (15 downto 0)
			  );

end component;



begin


CT : Orologio port map(
	hour_in => hour_t,
	minute_in => minute_t,
	second_in => second_t,
	enable => enable_out_t,
	set=> set_t,
	clk => clock_div,
	reset => BTN_RESET,
	
	hour_out => h,
	minute_out => m,
	second_out => s
);

CD : Clock_Divider port map (
	clk => clock_50Mhz,
	clock_out => clock_div,
	reset => BTN_RESET
	
);


DEB: debouncer port map(
	clock=> clock_50MHz,
	reset=> BTN_RESET,
	data_in=>BTN_NEXT,
	data_out=>c1

);


B2BCD : bin2bcd port map (
	bin => h,
	bcd => hour_conv
);


B2BCD2 : bin2bcd port map (
	bin => m,
	bcd => min_conv
);

SEG : SEV_SEG_DISP port map (
	clock_50Mhz => clock_50Mhz,
	reset => BTN_RESET,
	Anode_Activate => Anode_Activate,
	LED_out => LED_out,
	
	X(15) => hour_conv(7),
	X(14) => hour_conv(6),
	X(13) => hour_conv(5),
	X(12) => hour_conv(4),
	X(11) => hour_conv(3),
	X(10) => hour_conv(2),
	X(9) => hour_conv(1),
	X(8) => hour_conv(0),
	
	X(7) => min_conv(7),
	X(6) => min_conv(6),
	X(5) => min_conv(5),
	X(4) => min_conv(4),
	X(3) => min_conv(3),
	X(2) => min_conv(2),
	X(1) => min_conv(1),
	X(0) =>min_conv(0)

);

process (clock_div, BTN_RESET) 
begin
	

	
 if (BTN_RESET='1') then
				hour_t <= (others =>'0');
				minute_t <= (others =>'0');
				second_t <=(others =>'0');
				enable_out_t <= '0';
				set_t<='1';
				State<=A;
 elsif (rising_edge(clock_50MHz)) then	
	case State is
			when A =>
				if (c1='1') then
				 if (X > "00010111") then	
					State<=A;			 
				 else
					hour_t <= X;
					State<=B;
				 end if;
				 
				end if;
			when B=>

				if (c1='1') then
				
				if (X > "00111011") then	
					State<=B;			 
				 else
					minute_t <= X;
					State<=C;
				 end if;
					

				end if;
			when C=>
				if (c1='1') then
				
				if (X > "00111011") then	
					State<=C;			 
				 else
					second_t <= X;
					State<=D;
				 end if;


				end if;
			when D=>
				if (c1='1') then
					set_t<='0';
					enable_out_t <= '1';
				end if;
			
	end case;
end if;	
	LDS <= s(3 downto 0);	
		
end process;




end Behavioral;