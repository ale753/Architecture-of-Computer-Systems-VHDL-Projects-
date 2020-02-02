
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 use ieee.std_logic_unsigned.all;
 library UNISIM;
use UNISIM.Vcomponents.ALL;

entity contatore_serie is

port (
		clock_50Mhz : in std_logic;
		RESET : in std_logic;
		Y : out std_logic_vector(3 downto 0)
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

signal t:  std_logic_vector (3 downto 0) := (others => '0') ;


begin


FFT0 : FFT port map (
		T => '1',
		CLK => clock_50Mhz,
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

Y <= t;

end Structural;