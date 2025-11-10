LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Mux2_1_4bit IS
  PORT(
    i_val_0 : IN  std_logic_vector(3 downto 0);
    i_val_1 : IN  std_logic_vector(3 downto 0);
    i_sel   : IN  std_logic;
    o_val   : OUT std_logic_vector(3 downto 0)
  );
END Mux2_1_4bit;

ARCHITECTURE rtl OF Mux2_1_4bit IS
  SIGNAL int_not_sel : std_logic;
  SIGNAL int_and1, int_and2, int_final_o : std_logic_vector(3 downto 0);
BEGIN
  -- Concurrent signal assignments
  int_not_sel <= NOT i_sel;
  int_and1    <= i_val_0 AND (3 downto 0 => int_not_sel);
  int_and2    <= i_val_1 AND (3 downto 0 => i_sel);
  int_final_o <= int_and1 OR int_and2;

  -- Output driver
  o_val <= int_final_o;
END rtl;
