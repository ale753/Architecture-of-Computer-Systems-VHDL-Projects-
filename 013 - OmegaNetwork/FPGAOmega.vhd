----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:52:14 12/23/2019 
-- Design Name: 
-- Module Name:    FPGAOmega - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FPGAOmega is
port(
		clock_50MHz: in std_logic;
		--EN1: in std_logic_vector(3 downto 0);
		Load,reset: in std_logic;
		SW:in std_logic_vector (3 downto 0);
		LED: out std_logic_vector (7 downto 0):= (others=>'0');
		Anode_Activate: out STD_LOGIC_VECTOR (3 downto 0);
		LED_out : out STD_LOGIC_VECTOR (6 downto 0)
		
);
end FPGAOmega;

architecture Behavioural of FPGAOmega is


signal t0,t1,t2,t3,s0,s1,s2,s3: std_logic_vector (1 downto 0):= (others=>'0');
signal c1: std_logic:='0';
signal O1,O2,O3,O4 :std_logic_vector (3 downto 0):= (others=>'0');
signal st :std_logic_vector (15 downto 0):= (others=>'0');


type State_type is (En,Source,Dest,Dati,Fine);
signal State: State_type:= En;

Component OmegaNet is
port(

	EN: in std_logic_vector(3 downto 0);
	DAT0,DAT1,DAT2,DAT3: in std_logic_vector (1 downto 0);
	out0,out1,out2,out3: out std_logic_vector (1 downto 0);
	SRC, DST: in std_logic_vector(1 downto 0)

);
end Component;

Component debouncer is
port(
	clock, reset: in std_logic;
	data_in: in std_logic;
	data_out: out std_logic


);
end Component;

Component SEV_SEG_DISP is
port(
	clock_50Mhz : in STD_LOGIC;
   reset : in STD_LOGIC;
	X: in STD_LOGIC_VECTOR (15 downto 0);
   Anode_Activate : out STD_LOGIC_VECTOR (3 downto 0);
   LED_out : out STD_LOGIC_VECTOR (6 downto 0)


);


end Component;

begin

O: OmegaNet port map(
		EN=>O1,
		DAT0=>t0,
		DAT1=>t1,
		DAT2=>t2,
		DAT3=>t3,
		SRC(1)=> O2(1),
		SRC(0)=>O2(0),
		DST(1)=>O3(1),
		DST(0)=>O3(0),
		out0=>s0,
		out1=>s1,
		out2=>s2,
		out3=>s3


);


DB: debouncer port map(
		clock=>clock_50MHz,
		reset=>reset,
		data_in=>Load,
		data_out=>c1


);

DISP:SEV_SEG_DISP port map(

	clock_50MHz=>clock_50MHz,
	reset=>reset,
	X=>st,
	Anode_Activate=>Anode_Activate,
	LED_out=>LED_out

);

p: process(clock_50MHz)

begin

if (rising_edge(clock_50MHz)) then

if (O2="--00") then
		t0(1)<=O4(1);
		t0(0)<=O4(0);
		
elsif(O2="--01") then
		t1(1)<=O4(1);
		t1(0)<=O4(0);
		
elsif (O2="--10") then
		t2(1)<=O4(1);
		t2(0)<=O4(0);
		
elsif (O2="--11") then
		t3(1)<=O4(1);
		t3(0)<=O4(0);

end if;
end if;

end process;




p1:process(clock_50MHz)
begin


if (reset='1') then
		State<=En;
		O1<=(others=>'0');
		O2<=(others=>'0');
		O3<=(others=>'0');
		O4<=(others=>'0');
		LED<=(others=>'0');

elsif (rising_edge(clock_50MHz)) then

case State is

			when En =>
			--INSERIMENTO ENABLE
					st<="1110100110101011";
				if (c1='1') then
					O1 <= SW;
					State<=Source;
				 end if;
				 
				 
			when Source=>
			--INSERIMENTO SORGENTE
				st<="0101000001000110";
				if (c1='1') then
					O2 <= SW;
					State<=Dest;
				 end if;
					
					
			when Dest=>
			--INSERIMENTO DESTINAZIONE
			st<="0000111001010011";
				if (c1='1') then					
					O3 <= SW;	
					State<=Dati;
				 end if;


			when Dati=>
			--INSERIMENTO DATI
			st<="0000101000110010";
				if (c1='1') then
					O4 <= SW;
					State<=Fine;
				end if;
				
				
			when Fine=>
				st<="1111001010011000";
				LED<= s3 & s2 & s1 & s0;
				
	end case;

end if;
 


end process;

end Behavioural;

