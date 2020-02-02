library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 use ieee.std_logic_unsigned.all;
 library UNISIM;
use UNISIM.Vcomponents.ALL;

entity contatore_parallelo is

port (
		clock_50Mhz : in std_logic;
		RESET : in std_logic;
		Y : out std_logic_vector(0 to 3)
		);

end contatore_parallelo;

architecture Structural of contatore_parallelo is



Component FFT 
	   port ( CLK : in    std_logic; 
          T   : in    std_logic;
			 reset : in std_logic;
          Q   : out   std_logic
	
         
			 );
end Component;

signal t:  std_logic_vector (6 downto 0) := (others => '0') ;


begin


FFT0 : FFT port map (
		T => '1',
		CLK => clock_50Mhz,
		Q => t(0),
		reset => reset
		);

AND_2 : AND2
		port map (I0=>t(0),
                I1=>clock_50Mhz,
                O=>t(1));	


FFT1 : FFT port map (
		T => t(1),
		CLK => clock_50Mhz,
		Q => t(2),

		reset => reset
		);

AND_3 : AND3
		port map (I0=>t(0),
                I1=>t(2),
					 I2 =>clock_50Mhz,
                O=>t(3));		



FFT2 : FFT port map (
		T => t(3),
		CLK => clock_50Mhz,
		Q => t(4),
		reset => reset
		);
		
AND_4 : AND4
		port map (I0=>t(0),
                I1=>t(2),
					 I2 =>t(4),
					 I3 =>clock_50Mhz,
                O=>t(5));
		
FFT3 : FFT port map (
		T => t(5),
		CLK => clock_50Mhz,
		Q => t(6),
		reset => reset
		);

Y <= t(6) & t(4) & t(2) & t(0);

end Structural;