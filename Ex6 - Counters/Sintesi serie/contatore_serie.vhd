
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 use ieee.std_logic_unsigned.all;
 library UNISIM;
use UNISIM.Vcomponents.ALL;

entity contatore_serie is

port (
		clock_50Mhz : in std_logic;
		reset : in std_logic;
		count: in std_logic;
		Anode_Activate : out STD_LOGIC_VECTOR (3 downto 0);
      LED_out : out STD_LOGIC_VECTOR (6 downto 0)
		);

end contatore_serie;

architecture Structural of contatore_serie is

Component FFT 
	   port ( CLK : in    std_logic; 
          T   : in    std_logic;
			 reset : in std_logic;
          Q   : out   std_logic
			 );
end Component;


Component debouncer
		port (clock, reset: in std_logic;
				data_in: in std_logic;
				data_out: out std_logic
				);

end Component;



component bin2bcd is
    port (
        input:    in  std_logic_vector (15 downto 0);
        output:    out std_logic_vector (15 downto 0)
    );
end component;

component SEV_SEG_DISP is
    Port ( clock_50Mhz : in STD_LOGIC;
           reset : in STD_LOGIC; 
			  X : in STD_LOGIC_VECTOR (15 downto 0);
           Anode_Activate : out STD_LOGIC_VECTOR (3 downto 0);
           LED_out : out STD_LOGIC_VECTOR (6 downto 0)
			  
			  );
end component;


signal t:  std_logic_vector (3 downto 0) := (others => '0') ;
signal value_to_display : std_logic_vector (15 downto 0);
signal value_converted : std_logic_vector (15 downto 0);
signal c: std_logic :='0';
constant ZERO : std_logic_vector(11 downto 0) := (others => '0');

begin


FFT0 : FFT port map (
		T => c,
		CLK =>clock_50Mhz,
		Q => t(0),
		reset => reset
		);

FFT1 : FFT port map (
		T => '1',
		CLK => t(0),
		Q => t(1),
		reset => reset
		);

FFT2 : FFT port map (
		T => '1',
		CLK => t(1),
		Q => t(2),

		reset => reset
		);
				
FFT3 : FFT port map (
		T => '1',
		CLK => t(2),
		Q => t(3),
		reset => reset
		);


BINBCD : bin2bcd port map(
		input => value_to_display,
		output => value_converted
);

SSD : SEV_SEG_DISP port map(
		clock_50Mhz => clock_50Mhz,
		reset => reset,
		Anode_Activate => Anode_Activate,
		LED_out => LED_out,
		X => value_converted
);



DEB: DEBOUNCER port map(
		clock=>clock_50Mhz,
		reset=>reset,
		data_in=>count,
		data_out=>c

);

value_to_display <= ZERO & t;



end Structural;