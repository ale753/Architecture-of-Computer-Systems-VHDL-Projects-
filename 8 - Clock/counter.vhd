library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;


entity Orologio is 
	Port ( hour_in, minute_in, second_in : in std_logic_vector (7 downto 0);
	       clk,enable,reset,set : in STD_LOGIC;		 
			 hour_out, minute_out, second_out : out std_logic_vector (7 downto 0)
	);
end Orologio;

architecture Behavioral of Orologio is

Component contatore
Generic (N: integer);
port(

		reset : in STD_LOGIC;
		clk,enable,set : in STD_LOGIC;
		datain: in STD_LOGIC_VECTOR(7 downto 0);
		count : out STD_LOGIC_VECTOR(7 downto 0);
		count_end : out STD_LOGIC

);
end component;

signal second :std_logic_vector (7 downto 0) := (others=>'0');
signal minute :std_logic_vector (7 downto 0) := (others=>'0');
signal hour :std_logic_vector (7 downto 0) := (others=>'0');
signal en1,en2,cc1,cc2,cc3: std_logic:='0';

begin


CH:contatore generic map(24) port map(
	reset=>reset,
	clk=>clk,
	enable=>en2,
	set=>set,
	datain=>hour_in,
	count=>hour,
	count_end=>cc3

);


CM:contatore generic map(60) port map(
	reset=>reset,
	clk=>clk,
	enable=>en1,
	set=>set,
	datain=>minute_in,
	count=>minute,
	count_end=>cc2

);



CS:contatore generic map(60) port map(
	reset=>reset,
	clk=>clk,
	enable=>enable,
	set=>set,
	datain=>second_in,
	count=>second,
	count_end=>cc1

);

					 
en1<=cc1 and clk;
en2<=cc1 and cc2 and clk;
second_out <= second;
minute_out <= minute;
hour_out <= hour;


end Behavioral;