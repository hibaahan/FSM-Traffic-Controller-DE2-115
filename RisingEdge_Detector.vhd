library ieee;
use ieee.std_logic_1164.all;

entity RisingEdge_Detector is
  port(
    i_reset_bar : in  std_logic;  -- async reset, active low
    i_clock     : in  std_logic;
    i_signal    : in  std_logic;  -- level input 
    o_pulse     : out std_logic   -- 1-clock pulse on 0→1
  );
end RisingEdge_Detector;

architecture rtl of RisingEdge_Detector is
  signal prev_s     : std_logic;  -- previous value (registered)
  signal not_prev_s : std_logic;
  component enARdFF_2
    port(
      i_resetBar : in  std_logic;
      i_d        : in  std_logic;
      i_enable   : in  std_logic;
      i_clock    : in  std_logic;
      o_q        : out std_logic;
      o_qBar     : out std_logic
    );
  end component;
begin
  -- FF stores the previous value of i_signal
  EdgeFF: enARdFF_2
    port map(
      i_resetBar => i_reset_bar,
      i_d        => i_signal,   -- current value
      i_enable   => '1',
      i_clock    => i_clock,
      o_q        => prev_s,     -- previous (registered) value
      o_qBar     => not_prev_s  -- NOT previous (saves a NOT gate)
    );

  -- one-clock pulse on rising edge
  o_pulse <= i_signal and not_prev_s;
end rtl;
