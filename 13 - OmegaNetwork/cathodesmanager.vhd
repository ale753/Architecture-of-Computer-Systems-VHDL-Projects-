----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:56:24 01/09/2020 
-- Design Name: 
-- Module Name:    cathodesmanager - Behavioral 
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

entity cathodesmanager is
port(
		counter:in STD_LOGIC_VECTOR (1 downto 0);
		X: in STD_LOGIC_VECTOR (15 downto 0);
		cath : out STD_LOGIC_VECTOR (6 downto 0)


);
end cathodesmanager;

architecture Behavioral of cathodesmanager is

signal LED_BCD: STD_LOGIC_VECTOR (3 downto 0):= (others=>'0');
signal LED_out: STD_LOGIC_VECTOR (6 downto 0):= (others=>'0');

begin

process(counter,X)
begin
    case counter is
    when "00" =>
        LED_BCD <= X(15 downto 12);
    when "01" =>
        LED_BCD <= X(11 downto 8);
    when "10" =>
        LED_BCD <= X(7 downto 4);
    when "11" =>
        LED_BCD <= X(3 downto 0);
    when others =>
			LED_BCD <= (others => '1');
    end case;
end process;





process(LED_BCD)
begin
    case LED_BCD is
    when "0000" => LED_out <= "0000001"; -- "D" o "O"    
    when "0001" => LED_out <= "1001111"; -- "L"
    when "0010" => LED_out <= "1101111"; -- "i" 
    when "0011" => LED_out <= "1110000"; -- "t" 
    when "0100" => LED_out <= "0001000"; -- "R" 
    when "0101" => LED_out <= "0100100"; -- "S"
    when "0110" => LED_out <= "0100000"; -- "G" 
    when "0111" => LED_out <= "1100010"; -- "o" 
    when "1000" => LED_out <= "0010000"; -- "e"     
    when "1001" => LED_out <= "1101010"; -- "n" 
	 when "1010" => LED_out <= "0000010"; -- a
    when "1011" => LED_out <= "1100000"; -- b
    when "1100" => LED_out <= "0110001"; -- C
    when "1101" => LED_out <= "1000010"; -- d
    when "1110" => LED_out <= "0110000"; -- E
    when "1111" => LED_out <= "0111000"; -- F
    when others => LED_out <= "1111111";
    end case;
end process;

cath<=LED_out;

end Behavioral;

