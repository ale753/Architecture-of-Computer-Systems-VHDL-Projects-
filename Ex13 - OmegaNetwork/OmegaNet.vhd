library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity OmegaNet is

port(
	
	EN: in std_logic_vector(3 downto 0);
	DAT0,DAT1,DAT2,DAT3: in std_logic_vector (1 downto 0);
	out0,out1,out2,out3: out std_logic_vector (1 downto 0);
	SRC, DST: in std_logic_vector(1 downto 0)
	
);


end OmegaNet;

architecture Behavioral of OmegaNet is

Component PC
port(

	EN: in std_logic_vector(3 downto 0);
	DAT0,DAT1,DAT2,DAT3: in std_logic_vector (1 downto 0);
	out0,out1,out2,out3: out std_logic_vector (1 downto 0)

);
end component;


Component PO is
port(
		Dati0,Dati1,Dati2,Dati3 : in std_logic_vector(1 downto 0);
		SRC, DST: in std_logic_vector(1 downto 0);
		D0,D1,D2,D3 : out std_logic_vector(1 downto 0)

);
end component;


signal t_out0,t_out1,t_out2,t_out3:  std_logic_vector (1 downto 0);

begin

PC1: PC port map(
	
	EN=>EN,
	DAT0=> DAT0,
	DAT1=>DAT1,
	DAT2=>DAT2,
	DAT3=>DAT3,
	out0 => t_out0,
	out1 => t_out1,
	out2 => t_out2,
	out3 => t_out3

);

PO1: PO port map(
	
	Dati0 => t_out0,
	Dati1 => t_out1,
	Dati2 => t_out2,
	Dati3 => t_out3,
	SRC => SRC,
	DST => DST,
	D0 => out0,
	D1 => out1,
	D2 => out2,
	D3 => out3
	
);



end Behavioral;

