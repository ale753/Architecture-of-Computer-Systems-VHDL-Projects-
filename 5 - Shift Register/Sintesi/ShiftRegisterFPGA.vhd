----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:53:12 12/26/2019 
-- Design Name: 
-- Module Name:    ShiftRegister - Behavioral 
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

entity ShiftRegisterFPGA is
    Port ( 
			  X : in  STD_LOGIC_VECTOR (7 downto 0);
			  clock_50MHz, reset : in  STD_LOGIC;
           Load,shift :in STD_LOGIC;
           Bitout : out STD_LOGIC;
			  DataOut : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end ShiftRegisterFPGA;

architecture Structural of ShiftRegisterFPGA is
	 
	 
COMPONENT shiftregister 
	PORT(
			  X : in  STD_LOGIC_VECTOR (7 downto 0);
			  clock_50MHz, reset,Load,enable : in  STD_LOGIC;
           Bitout : out STD_LOGIC:='0';
			  DataOut : out  STD_LOGIC_VECTOR (7 downto 0)	
	
	);
END COMPONENT;
	 
COMPONENT debouncer
    PORT(
		clock,reset: in std_logic;
		data_in: in std_logic;
		data_out: out std_logic
        );
    
END COMPONENT;


signal t1, t2 : std_logic_vector(7 downto 0);
signal reset_ff, c: std_logic :='0';


begin

DEB: debouncer PORT MAP(

	clock=>clock_50MHz,
	reset=>reset,
	data_in=>shift,
	data_out=>c



);


SH: shiftregister PORT MAP(
	X=>X,
	clock_50MHz=>clock_50MHz,
	reset=>reset_ff,
	enable=>c,
	Load=>Load,
	Bitout=>Bitout,
	DataOut=>DataOut

);


p: process(clock_50MHz)

begin


if(rising_edge(clock_50MHz)) then
	if (reset='1') then 
		reset_ff<='1';
		
	elsif( Load='1') then
		reset_ff<='0';

	end if;

end if;
end process;

end Structural;