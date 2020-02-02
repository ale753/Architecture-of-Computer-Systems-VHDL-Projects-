----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:58:52 12/11/2019 
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
        input:      in   std_logic_vector (15 downto 0);
        --ones:       out  std_logic_vector (3 downto 0);
        --tens:       out  std_logic_vector (3 downto 0);
        --hundreds:   out  std_logic_vector (3 downto 0);
        --thousands:  out  std_logic_vector (3 downto 0);
		  output: out std_logic_vector (15 downto 0)
    );
end entity;

architecture behavioural of bin2bcd is
    alias data: std_logic_vector (15 downto 0) is input;

begin
    process (data)
        --type fourbits is array (3 downto 0) of std_logic_vector(3 downto 0); m
		  
        -- variable i : integer := 0;  -- NOT USED
        -- variable bcd : std_logic_vector(15 downto 0) := (others => '0');
        variable bcd:   std_logic_vector (15 downto 0);
        -- variable bint : std_logic_vector(15 downto 0) := data;
        variable bint:  std_logic_vector (13 downto 0); -- SEE process body
    begin
        bcd := (others => '0');      -- ADDED for EVERY CONVERSION
        bint := data (13 downto 0); -- ADDED for EVERY CONVERSION

        for i in 0 to 13 loop
            bcd(15 downto 1) := bcd(14 downto 0);
            bcd(0) := bint(13);
            bint(13 downto 1) := bint(12 downto 0);
            bint(0) := '0';

            if i < 13 and bcd(3 downto 0) > "0100" then
                bcd(3 downto 0) :=  (bcd(3 downto 0)) + 3;
            end if;
            if i < 13 and bcd(7 downto 4) > "0100" then
                bcd(7 downto 4) := (bcd(7 downto 4)) + 3;
            end if;
            if i < 13 and bcd(11 downto 8) > "0100" then
                bcd(11 downto 8) := (bcd(11 downto 8)) + 3;
            end if;
            if i < 13 and bcd(15 downto 12) > "0100" then
                bcd(11 downto 8) := (bcd(15 downto 12)) + 3;
            end if;
        end loop;

        --(thousands, hundreds, tens, ones)  <= fourbits'( bcd (15 downto 12), bcd (11 downto 8),  bcd ( 7 downto  4), bcd ( 3 downto 0) );
			
			output<= bcd;
    end process ;
end architecture;