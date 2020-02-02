

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;


entity Robertson is 
	Port ( 
		clock : in  STD_LOGIC;
		X,Y : in  STD_LOGIC_VECTOR (7 downto 0); 
		start,reset : in STD_LOGIC;
		A1,Q1: out STD_LOGIC_VECTOR (7 downto 0)
		
	);
end Robertson;

architecture Structural of Robertson is


component PC 
Port ( 
	clock : in STD_LOGIC;
	start,reset : in STD_LOGIC;
	count: in STD_LOGIC_VECTOR(2 downto 0);
	Q0 : in STD_LOGIC;
	mux_en,reg_en,shift_en,fshift_en : out STD_LOGIC;
	sub : out STD_LOGIC;
	A_en : out STD_LOGIC;
	enablecount: out STD_LOGIC;
	resetcount: out STD_LOGIC
);
end component;


Component FlipFlopD
port(
		D: in STD_LOGIC;
		clock: in STD_LOGIC;
		enable,reset : in STD_LOGIC;
		Q,Qn : out STD_LOGIC

);
end Component;


Component addsub
port(
		X,Y : in STD_LOGIC_VECTOR (7 downto 0);
		subtract : in STD_LOGIC;
		cout : out STD_LOGIC;
		s : out STD_LOGIC_VECTOR (7 downto 0);
		ov : out STD_LOGIC

);
end Component;


Component shiftregister
port(

	clock : in STD_LOGIC;
	reset : in STD_LOGIC;
	shift : in STD_LOGIC;
	load : in STD_LOGIC;
	serial_in : in STD_LOGIC;
	parallel_in : in STD_LOGIC_VECTOR (7 downto 0);
	serial_out : out STD_LOGIC;
	parallel_out : out STD_LOGIC_VECTOR (7 downto 0)

);
end Component;


Component registro
port(

	clock : in STD_LOGIC;
	reset : in STD_LOGIC;
	enable: in STD_LOGIC;
	datain : in STD_LOGIC_VECTOR (7 downto 0);
	dataout : out STD_LOGIC_VECTOR (7 downto 0)

);
end Component;


Component muxb
port(

			a0,b0: in  std_logic_vector(7 downto 0);
			s0 : in  std_logic;  
			y : out std_logic_vector(7 downto 0)

);
end Component;


Component counter
port(


	clock : in STD_LOGIC;
	enable : in STD_LOGIC;
	reset: in STD_LOGIC;
	count : out STD_LOGIC_VECTOR (2 downto 0)

);
end component;

signal tQ, t_a_in, uscita_a, tM, uscita_mux : std_logic_vector(7 downto 0):=(others=>'0');
signal mux_enable, reg_enable, t_shift_en, t_fshift_en, sub_enable, t_Aenable :std_logic :='0';
signal resetcount,enablecount,t_mux_sel, tD, tF, tFn, tshift, t_load, t_sr_a, t_sr_q :std_logic :='0';
signal cnt : std_logic_vector(2 downto 0):=(others=>'0');

begin

tshift <= t_shift_en or t_fshift_en;
t_load <= t_Aenable or sub_enable;
t_mux_sel <= mux_enable and (sub_enable or t_Aenable);

t_sr_a <= tF when t_shift_en = '1' else 
				'0' when (t_fshift_en='1' and tD='1') else
				uscita_a(7) when t_fshift_en ='1' else
				'0';


tD <= (tM(7) and tQ(0));

A1<= uscita_a;
Q1<= tQ;


cu: PC port map(clock,start,reset,cnt,tQ(0),mux_enable, reg_enable, t_shift_en, t_fshift_en, sub_enable, t_Aenable, enablecount,resetcount);

adder1: addsub port map(uscita_a,uscita_mux,sub_enable, open, t_a_in, open);

mux1: muxb  port map ("00000000", tM, t_mux_sel, uscita_mux);

ff1 : FlipFlopD port map(tD, clock, tFn , reset, tF, tFn);

regM: registro port map(clock, reset, reg_enable, Y, tM);

regA: shiftregister port map(clock, reset, tshift, t_load,t_sr_a, t_a_in, t_sr_q, uscita_a);

regQ: shiftregister port map(clock, reset, tshift, reg_enable, t_sr_q, X, open, tQ);

contatore: counter port map (clock,enablecount,resetcount,cnt);

end Structural;
