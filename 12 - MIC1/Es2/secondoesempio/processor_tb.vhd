
library ieee;
use ieee.std_logic_1164.all;

use work.common_defs.all;

--! Empty entity for the testbench
entity processor_tb is
end entity processor_tb;

--! Behavioral architecture for the testbench
architecture behavioral of processor_tb is

  -- Component ports
  signal reset          : std_logic;
  signal mem_data_we    : std_logic;
  signal mem_data_in    : reg_data_type;
  signal mem_data_out   : reg_data_type;
  signal mem_data_addr  : reg_data_type;
  signal mem_instr_in   : mbr_data_type;
  signal mem_instr_addr : reg_data_type;

  -- Clock
  signal clk : std_logic := '1';

  -- Variables
  shared variable end_run : boolean := false;

begin  -- architecture behavioral

  -- Component instantiation
  dut : entity work.processor
    port map (
      clk            => clk,
      reset          => reset,
      mem_data_we    => mem_data_we,
      mem_data_in    => mem_data_in,
      mem_data_out   => mem_data_out,
      mem_data_addr  => mem_data_addr,
      mem_instr_in   => mem_instr_in,
      mem_instr_addr => mem_instr_addr);

  dp_ar_ram : entity work.dp_ar_ram
    port map (
      clk        => clk,
      we_1       => mem_data_we,
      data_in_1  => mem_data_out,
      data_out_1 => mem_data_in,
      address_1  => mem_data_addr,
      we_2       => '0',
      data_in_2  => (others => '0'),
      data_out_2 => mem_instr_in,
      address_2  => mem_instr_addr);

  -- Clock generation
  clk_proc : process
  begin
    while end_run = false loop
      clk <= not clk;
      wait for 5 ns;
    end loop;

    wait;
  end process clk_proc;

  -- Waveform generation
  wavegen_proc: process
  begin
    wait until clk = '1';
    wait for 2 ns;

    reset <= '1';
    wait for 10 ns;
    reset <= '0';


    end_run := true;
    wait;
  end process wavegen_proc;

end architecture behavioral;