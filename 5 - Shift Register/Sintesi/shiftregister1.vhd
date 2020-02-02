----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:11:15 01/08/2020 
-- Design Name: 
-- Module Name:    shiftregister - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shiftregister is
    Port ( 
			  X : in  STD_LOGIC_VECTOR (7 downto 0);
			  clock_50MHz, reset,Load,enable : in  STD_LOGIC;
           Bitout : out STD_LOGIC:='0';
			  DataOut : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end shiftregister;

architecture Structural of shiftregister is

COMPONENT FFD
    PORT(
        D : IN std_logic;
        Clk : IN std_logic;
        reset : IN std_logic;          
        Q3 : OUT std_logic
        );
    END COMPONENT;



signal t1, t2 : std_logic_vector(7 downto 0):=(others=>'0');

begin



flipf: FOR i in 0 to 7 GENERATE

FFD0: FFD PORT MAP(
        D => t1(i),
        Q3 => t2(i),
        Clk => clock_50MHz,
        reset => reset
    );
	 
END GENERATE;

	  
	 
DataOut <= t2;
BitOut <= t2(7);

p: process(clock_50MHz)

begin


if(rising_edge(clock_50MHz)) then

	if (Load='1')then
		t1<=X;
		
	elsif (enable='1') then
	
		t1(7 downto 1)<=t1(6 downto 0);
		t1(0)<=t1(7);
	end if;
	
end if;
end process;

end Structural;