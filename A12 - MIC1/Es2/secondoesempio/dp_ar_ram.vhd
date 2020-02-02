
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.common_defs.all;

--! Data memory for amic-0 based systems

--! Dual port, asynchronous read RAM for amic-0 based systems.
entity dp_ar_ram is
  port (
    --! Clock
    clk        : in  std_logic;
    --! Write enable 1
    we_1       : in  std_logic;
    --! Port for memory write 1
    data_in_1  : in  reg_data_type;
    --! Port for memory read 1
    data_out_1 : out reg_data_type;
    --! Address for memory operations 1
    address_1  : in  reg_data_type;
    --! Write enable 2
    we_2       : in  std_logic;
    --! Port for memory write 2
    data_in_2  : in  reg_data_type;
    --! Port for memory read 2
    data_out_2 : out mbr_data_type;
    --! Address for memory operations 2
    address_2  : in  reg_data_type
    );
end entity dp_ar_ram;

--! Dataflow architecture for the control store
architecture behavioral of dp_ar_ram is

  -- Signals
  signal t_address_1  : integer := 0;
  signal t_address_2  : integer := 0;
  signal wa_address_2 : reg_data_type;
  signal t_data_out_2 : reg_data_type;

  -- RAM content
  signal mem : dp_ar_ram_type := (
--BEGIN_WORDS_ENTRY

128 => "00000000000000000000000000000000",
0 => "00000010000000000000000100000000",
1 => "00000001001101100101011000010000",
2 => "00000010001101100101010100010000",
3 => "00000010000101010000000100010101",
4 => "00000000000000000000000001011100",

others => (others => '0')
--END_WORDS_ENTRY
    );



begin  -- architecture behavioral

  wa_address_2 <= "00" & address_2(reg_data_type'high downto 2);
  t_address_1 <= to_integer(unsigned(address_1));
  t_address_2 <= to_integer(unsigned(wa_address_2));

  mem_proc : process(clk) is
  begin
    if (rising_edge(clk)) then
      if (we_1 = '1') then
        mem(t_address_1) <= data_in_1;
      elsif (we_2 = '1') then
        mem(t_address_2) <= data_in_2;
      end if;
    end if;
  end process;

  data_out_1   <= mem(t_address_1);
  t_data_out_2 <= mem(t_address_2);

  with address_2(1 downto 0) select data_out_2 <=
    t_data_out_2(7 downto 0)   when "00",
    t_data_out_2(15 downto 8)  when "01",
    t_data_out_2(23 downto 16) when "10",
    t_data_out_2(31 downto 24) when "11",
    (others => '0')            when others;

end architecture behavioral;