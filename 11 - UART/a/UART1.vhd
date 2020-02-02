----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:18:18 12/28/2019 
-- Design Name: 
-- Module Name:    UART1 - Behavioral 
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

entity UART1 is
 Port ( 		
			clock_50MHz : in STD_LOGIC;
			datain : in STD_LOGIC_VECTOR (7 downto 0);
			reset : in std_logic; 	
			dataout : out STD_LOGIC_VECTOR (7 downto 0):= (others=>'0')
			);

end UART1;

architecture Behavioral of UART1 is

Component debouncer is
	port(
	clock, reset: in std_logic;
	data_in: in std_logic;
	data_out: out std_logic);
end Component;


Component UARTcomponent is 

	Port (	
		TXD 	: out 	std_logic  	:= '1';					-- Transmitted serial data output
		RXD 	: in  	std_logic;							-- Received serial data input
		CLK 	: in  	std_logic;							-- Clock signal
		DBIN 	: in  	std_logic_vector (7 downto 0);		-- Input parallel data to be transmitted
		DBOUT 	: out 	std_logic_vector (7 downto 0);		-- Recevived parallel data output
		RDA		: inout  std_logic;							-- Read Data Available
		TBE		: out 	std_logic 	:= '1';					-- Transfer Buffer Emty
		RD		: in  	std_logic;							-- Read Strobe
		WR		: in  	std_logic;							-- Write Strobe
		PE		: out 	std_logic;							-- Parity error		
		FE		: out 	std_logic;							-- Frame error
		OE		: out 	std_logic;							-- Overwrite error
		RST		: in  	std_logic	:= '0'
		);	
end Component;

signal din,dout,rd,td :std_logic:= '0';

signal t1,t_rda,t_tbe,t_pe,t_fe,t_oe: std_logic:= '0';

begin


U1: UARTcomponent PORT MAP(
	TXD => t1,
	RXD => t1,
	CLK => clock_50MHz,
	DBIN => datain,
	DBOUT => dataout,
	RDA => t_rda,
	TBE => t_tbe,
	RD => '0',
	WR => '1', 
	PE => t_pe,
	FE => t_fe,
	OE => t_oe, 
	RST =>reset
);



end Behavioral;

