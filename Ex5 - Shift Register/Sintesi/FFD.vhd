----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:10:21 01/07/2020 
-- Design Name: 
-- Module Name:    FFD - Behavioral 
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
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FFD is
   port ( CLK   : in    std_logic; 
          D     : in    std_logic; 
          RESET : in    std_logic; 
          Q3    : out   std_logic; 
          Q3N   : out   std_logic);
end FFD;

architecture BEHAVIORAL of FFD is
   attribute BOX_TYPE   : string ;
   signal A12       : std_logic;
   signal Q1        : std_logic;
   signal Q1N       : std_logic;
   signal Q2        : std_logic;
   signal Q2N       : std_logic;
   signal XLXN_14   : std_logic;
   signal Q3_DUMMY  : std_logic;
   signal Q3N_DUMMY : std_logic;
   component NOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR2 : component is "BLACK_BOX";
   
   component NOR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR3 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   Q3 <= Q3_DUMMY;
   Q3N <= Q3N_DUMMY;
   g1 : NOR2
      port map (I0=>A12,
                I1=>Q1,
                O=>Q1N);
   
   g2 : NOR3
      port map (I0=>Q1N,
                I1=>CLK,
                I2=>Q2N,
                O=>Q1);
   
   g3 : NOR2
      port map (I0=>CLK,
                I1=>Q2,
                O=>Q2N);
   
   g4 : NOR2
      port map (I0=>Q2N,
                I1=>Q1N,
                O=>Q2);
   
   g5 : NOR2
      port map (I0=>Q1,
                I1=>Q3_DUMMY,
                O=>Q3N_DUMMY);
   
   g6 : NOR2
      port map (I0=>Q3N_DUMMY,
                I1=>Q2N,
                O=>Q3_DUMMY);
   
   INV1 : INV
      port map (I=>RESET,
                O=>XLXN_14);
   
   XLXI_1 : AND2
      port map (I0=>XLXN_14,
                I1=>D,
                O=>A12);
   
end BEHAVIORAL;


