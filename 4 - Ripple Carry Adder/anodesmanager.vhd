----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:56:08 01/09/2020 
-- Design Name: 
-- Module Name:    anodesmanager - Behavioral 
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

entity anodesmanager is
port(
		counter: in std_logic_vector(1 downto 0);
		anodes: out STD_LOGIC_VECTOR (3 downto 0)

);
end anodesmanager;

architecture Behavioral of anodesmanager is

signal Anode_Activate: STD_LOGIC_VECTOR (3 downto 0):=(others=>'0');

begin


process(counter)
begin
    case counter is
    when "00" =>
        Anode_Activate <= "0111"; 
    when "01" =>
        Anode_Activate <= "1011"; 
    when "10" =>
        Anode_Activate <= "1101"; 
    when "11" =>
        Anode_Activate <= "1110";  
    when others =>
			Anode_Activate <= (others => '1');
    end case;
end process;


anodes<= Anode_Activate;

end Behavioral;

