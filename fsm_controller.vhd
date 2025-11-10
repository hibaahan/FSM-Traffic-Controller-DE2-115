LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-----------------------------------------------------------------------------------------------------
--S0:=MS=Greem,SS=Red   --S1:=MS=Yellow,SS=Red    --S2:=MS=Red,SS=Green --S3:=MS=Red,SS=Yellow
-----------------------------------------------------------------------------------------------------
ENTITY fsm_controller IS
  PORT(  
    i_reset_bar                                        :in  std_logic;
	 i_clock                                            : in std_logic;
	 i_Counter_expired                                 :in std_logic;--the counter expired signal gor green light
	 i_MST_done,i_SST_done                              :in std_logic;--flags for yellow lights
	 i_SSCS                                             :in std_logic;--car sensor will be connected to a debouncer
	 o_set_timer                                        :out std_logic;--when entring desired stade one clock pulse
	 o_enable_timer                                      :out  std_logic;--keep the timer decrementing until we reach the value
	 o_set_counter                                      :out std_logic;--set it to zero so we acn start counting
    o_enable_counter                                    :out std_logic;--keep counting when high until we reavh a maximum value
	 o_msc_ssc_select                                     :out std_logic;
	 o_MSTL,o_SSTL                                      :out std_logic_vector(2 downto 0) );--output ED registers 
 END fsm_controller;

 ARCHITECTURE rtl OF fsm_controller IS 
 SIGNAL S0,S1,S2,S3:std_logic;
 SIGNAL S0_next,S1_next,S2_next,S3_next:std_logic;--equation using combinational logic for next  states 
 SIGNAL S0_intermediate                 :std_logic;
 SIGNAL non_active                      :std_logic;
 Component enARdFF_2 
	PORT(
		i_resetBar	: IN	STD_LOGIC;
		i_d		: IN	STD_LOGIC;
		i_enable	: IN	STD_LOGIC;
		i_clock		: IN	STD_LOGIC;
		o_q, o_qBar	: OUT	STD_LOGIC);
END component;

Begin
-----------------------------------------------------------------------------------------------------
--Equation for next states (Combinational
-----------------------------------------------------------------------------------------------------
non_active<=not( S0 or S1 or S2 or S3);-- when we reset all DFF goes to 0 in order to go to 1 after
S0_intermediate<=(i_Counter_expired) nand(i_SSCS);
S0_next<=(S0 and S0_intermediate) or (S3 and i_SST_done) or non_active;--if we reset we want to go back to the first state
S1_next<=(S0 and i_SSCS and i_Counter_expired) or ( S1 and not(i_MST_done));
S2_next<=(S1 and i_MST_done ) or (S2 and (not(i_Counter_expired)));
S3_next<=(S2 and i_Counter_expired) or (S3 and (not(i_SST_done)));


-----------------------------------------------------------------------------------------------------
--current state (Sequentional)
-----------------------------------------------------------------------------------------------------
S0_Q:enARdFF_2
PORT MAP (
      i_resetBar=>i_reset_bar,
		i_d		 =>S0_next    ,
		i_enable  =>'1'        ,
		i_clock	 =>i_clock    ,
		o_q       => S0        ,
		o_qBar    =>open       

);
S1_Q:enARdFF_2
PORT MAP (
      i_resetBar=>i_reset_bar,
		i_d		 =>S1_next    ,
		i_enable  =>'1'        ,
		i_clock	 =>i_clock    ,
		o_q       => S1       ,
		o_qBar    =>open       

);
S2_Q:enARdFF_2
PORT MAP (
      i_resetBar=>i_reset_bar,
		i_d		 =>S2_next    ,
		i_enable  =>'1'        ,
		i_clock	 =>i_clock    ,
		o_q       => S2        ,
		o_qBar    =>open       

);
S3_Q:enARdFF_2
PORT MAP (
      i_resetBar=>i_reset_bar,
		i_d		 =>S3_next    ,
		i_enable  =>'1'        ,
		i_clock	 =>i_clock    ,
		o_q       => S3       ,
		o_qBar    =>open       

);

-----------------------------------------------------------------------------------------------------
--Output & Logic Conrol (Combinational)
----------------------------------------------------------------------------------------------------
--Entry pulse 
o_set_timer<=( not(S1) and S1_next)or (not(S3) and S3_next);
o_set_counter<=( not(S0) and S0_next)or (not(S2) and S2_next);

--Enable(stays high during the whole state
o_enable_timer<=S1 or S3;
o_enable_counter<=S0 or S2;

--Select 
o_msc_ssc_select<=S2;--SG=1 MG=0

--Traffic Light Registers For MS & SS
--Main Street Traffic light
o_MSTL<=((S2 or S3),--Red
            S1     ,--Yellow
				S0    ); --Green
--Side Street Traffic light				
o_SSTL<=((S0 or S1),--Red
            S3    ,--Yellow
				S2   );--Green

END rtl;





  