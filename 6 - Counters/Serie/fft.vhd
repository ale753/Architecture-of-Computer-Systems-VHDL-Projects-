library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FFT is
port (

	 T,Reset,CLK: in std_logic;
	 Q: out std_logic
);
end FFT;
 
architecture Behavioral of FFT is	 

signal  temp: std_logic := '0';

begin
process (Reset,CLK) 
    
begin
	 	 		  
 if Reset='1' then   
     temp <= '0';
		
 elsif (falling_edge(CLK)) then  
     temp <= T xor temp;
           
 end if;
		  
end process;

Q <= temp;	 
	 
end Behavioral;
