-- tb_traffic_light.vhd
library ieee;
use ieee.std_logic_1164.all;

entity tb_traffic_light is
end entity;

architecture sim of tb_traffic_light is
  -- clock period used as our "1 second" in sim
  constant T : time := 10 ms;        -- 100 Hz; change if desired

  -- DUT ports
  signal clk    : std_logic := '0';
  signal reset  : std_logic := '1';   -- ACTIVE-HIGH RESET for DUT
  -- If your top-level reset is active-LOW, start at '0' and set to '1' later

  signal sscs   : std_logic := '0';
  signal SSCMax : std_logic_vector(3 downto 0) := (others => '0');
  signal MSCMax : std_logic_vector(3 downto 0) := (others => '0');

  signal MSTL   : std_logic_vector(2 downto 0);
  signal SSTL   : std_logic_vector(2 downto 0);
begin
  ---------------------------------------------------------------------------
  -- Clock: one tick = one "simulated second"
  ---------------------------------------------------------------------------
  clk <= not clk after T/2;

  ---------------------------------------------------------------------------
  -- DUT instantiation
  ---------------------------------------------------------------------------
  uut: entity work.trafficLightController
    port map (
      Reset            => reset,
      CarSensorSignal  => sscs,
      Clock            => clk,
      SSCMax           => SSCMax,
      MSCMax           => MSCMax,
      MSTL             => MSTL,
      SSTL             => SSTL
    );

  ---------------------------------------------------------------------------
  -- Stimulus
  ---------------------------------------------------------------------------
  stim: process
  begin
    -- Reset sequence
    reset <= '1';                          -- ACTIVE-HIGH reset asserted
    wait for 3*T;
    reset <= '0';                          -- deassert reset

    -- Program short max windows so sim runs fast
    MSCMax <= "0101";  -- MS green window: 5 ticks
    SSCMax <= "0011";  -- SS green window: 3 ticks
    -- If your design samples these at load time only, this is enough.

    -- No car initially → MS should stay green and reload window
    sscs <= '0';
    wait for 12*T;

    -- Car arrives on side street; FSM should switch after current MS window ends
    sscs <= '1';
    wait for 40*T;

    -- Car leaves; controller should still complete SS green->yellow and return MS
    sscs <= '0';
    wait for 30*T;

    -- Finish sim
    wait;
  end process;

end architecture;
