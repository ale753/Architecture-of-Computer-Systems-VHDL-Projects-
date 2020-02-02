----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:22:54 12/07/2019 
-- Design Name: 
-- Module Name:    bin2bcd - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity bin2bcd is
    port ( 
        bin:      in   std_logic_vector (7 downto 0);
		  bcd: out std_logic_vector (11 downto 0)
    );
end entity;

architecture behavioural of bin2bcd is

begin
    process (bin)
		  
        variable i : integer := 0;  
        variable bcdt:   std_logic_vector (11 downto 0);
        -- variable bint : std_logic_vector(15 downto 0) := data;
        variable bint:  std_logic_vector (7 downto 0); -- SEE process body
    begin
        bcdt := (others => '0');      
        bint := bin; 

        for i in 0 to 7 loop
            bcdt(11 downto 1) := bcdt(10 downto 0);
            bcdt(0) := bint(7);
            bint(7 downto 1) := bint(6 downto 0);
            bint(0) := '0';

            if i < 7 and bcdt(3 downto 0) > "0100" then
                bcdt(3 downto 0) :=  (bcdt(3 downto 0)) + 3;
            end if;
            if i < 7 and bcdt(7 downto 4) > "0100" then
                bcdt(7 downto 4) := (bcdt(7 downto 4)) + 3;
            end if;
            if i < 7 and bcdt(11 downto 8) > "0100" then
                bcdt(11 downto 8) := (bcdt(11 downto 8)) + 3;
            end if;

        end loop;
			
			bcd<= bcdt;
    end process ;
end architecture;
