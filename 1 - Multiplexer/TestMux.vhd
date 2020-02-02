LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_mux IS
END test_mux;
 
ARCHITECTURE behavior OF test_mux IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux8
    PORT(
         S : IN  std_logic_vector(2 downto 0);
         D : IN  std_logic_vector(7 downto 0);
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic_vector(2 downto 0) := (others => '0');
   signal D : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux8 PORT MAP (
          S => S,
          D => D,
          y => y
        );
   -- Stimulus process
   stim_proc: process
	

   begin		

    wait for 100 ns;	
	D <= "11101001";
	S <= "000";
	wait for 100 ns;
	
	S <= "001";
	wait for 50 ns;
	
	S <= "010";
	wait for 50 ns;
	
	S <= "011";
	wait for 50 ns;
	
	S <= "100";
	wait for 50 ns;
	
	S <= "101";
	wait for 50 ns;
	
	S <= "110";
	wait for 50 ns;
	S <= "111";
	wait for 50 ns;

   end process;

END;