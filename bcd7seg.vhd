library ieee;
use ieee.std_logic_1164.all;

entity bcd7seg is
  port(
    i_bcd : in  std_logic_vector(3 downto 0);  -- 0000..1001
    o_seg : out std_logic_vector(6 downto 0)   -- {a,b,c,d,e,f,g}, active-LOW
  );
end entity;

architecture rtl of bcd7seg is
begin
   -- Active-LOW: '0' lights a segment on DE2-115
  with i_bcd select
  o_seg <=
    "1111110" when "0000", -- 0
    "0110000" when "0001", -- 1
    "1101101" when "0010", -- 2
    "1111001" when "0011", -- 3
    "0110011" when "0100", -- 4
    "1011011" when "0101", -- 5
    "1011111" when "0110", -- 6
    "1110000" when "0111", -- 7
    "1111111" when "1000", -- 8
    "1111011" when "1001", -- 9
    "0000000" when others; -- blank (not BCD)
	 
	 -- LED driver is inverted
o_segment_a <= NOT int_segment_data(6);
o_segment_b <= NOT int_segment_data(5);
o_segment_c <= NOT int_segment_data(4);
o_segment_d <= NOT int_segment_data(3);
o_segment_e <= NOT int_segment_data(2);
o_segment_f <= NOT int_segment_data(1);
o_segment_g <= NOT int_segment_data(0);

END rtl;
end architecture;
