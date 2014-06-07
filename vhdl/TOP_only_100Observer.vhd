










LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_misc.all;

entity top_only_100Observer is

port (
   CLOCK_50          :in	std_logic;
   KEY					:in 	std_logic_vector(3 downto 0) ;
   GPIO   				:out    std_logic_vector(34 downto 0) 
  );

end entity;

--------------------------------------------------------------------------
------------------      ARCHITECTURE    ---------------------------------
--------------------------------------------------------------------------
architecture rtl of top_only_100Observer is

constant  tau_range	:integer := 255;	

component Altpla is
  PORT(
    areset	    : IN STD_LOGIC  := '0';
    inclk0	    : IN STD_LOGIC  := '0';
    c0		    : OUT STD_LOGIC ; -- 50Mhz
    c1		    : OUT STD_LOGIC ; -- 100Mhz
    c2		    : OUT STD_LOGIC ; -- 120 Mhz
    c3		    : OUT STD_LOGIC ; -- 150 Mhz
    c4		    : OUT STD_LOGIC  --  200 Mhz
  );
end component;  
  
  
--component Altplb is
--	PORT
--	(
--		areset		: IN STD_LOGIC  := '0';
--		inclk0		: IN STD_LOGIC  := '0';
--		c0		    : OUT STD_LOGIC ; -- 100Mhz
--		c1		    : OUT STD_LOGIC ; -- 200Mhz
--		c2		    : OUT STD_LOGIC ; -- 400 Mhz
--		c3		    : OUT STD_LOGIC ; -- 600 Mhz
 --   c4		    : OUT STD_LOGIC ; --  1200 Mhz
--		locked		: OUT STD_LOGIC 
--	);
--end component; 
  


component observer 
    generic ( 
        observernumber :unsigned(15 downto 0):=x"0001"  -- how many observer are instantiated
      ); 
    PORT ( 
      clk 				:in	std_logic			:= 'X';
      reset				:in 	std_logic			:= 'X';
      enable_in		:in   std_logic;
      invariance_tau	:in 	std_logic_vector(7 downto 0);
      signal_phi		:in	std_logic;
      output			:out  std_logic;
      enable_out		:out	std_logic
      ); 
end component;

-------------------------------------------------------------------------------
--  <BEGIN_0> 
FOR OBS_0 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_1 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_2 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_3 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_4 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_5 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_6 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_7 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_8 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_9 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_10 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_11 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_12 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_13 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_14 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_15 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_16 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_17 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_18 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_19 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_20 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_21 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_22 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_23 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_24 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_25 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_26 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_27 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_28 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_29 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_30 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_31 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_32 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_33 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_34 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_35 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_36 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_37 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_38 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_39 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_40 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_41 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_42 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_43 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_44 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_45 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_46 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_47 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_48 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_49 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_50 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_51 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_52 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_53 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_54 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_55 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_56 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_57 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_58 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_59 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_60 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_61 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_62 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_63 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_64 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_65 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_66 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_67 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_68 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_69 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_70 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_71 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_72 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_73 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_74 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_75 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_76 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_77 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_78 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_79 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_80 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_81 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_82 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_83 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_84 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_85 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_86 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_87 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_88 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_89 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_90 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_91 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_92 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_93 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_94 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_95 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_96 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_97 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_98 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_99 : observer 
  use entity  work.observer(Behavioural);

--  <END_0>
-------------------------------------------------------------------------------
  
signal clk_s  	 	:  std_logic	:='0';
signal reset_s  	:  std_logic	:='0';
signal enable_s	        :  std_logic	:='0';
signal phi_s		:  std_logic	:='0';
signal next_obs_s       :  std_logic	:='0';
-------------------------------------------------------------------------------
-- <BEGIN_1> 
signal add: std_logic_vector(99 downto 0):=(others=>'0');
signal en1	    :std_logic:='0';
signal en2	    :std_logic:='0';
signal en3	    :std_logic:='0';
signal en4	    :std_logic:='0';
signal en5	    :std_logic:='0';
signal en6	    :std_logic:='0';
signal en7	    :std_logic:='0';
signal en8	    :std_logic:='0';
signal en9	    :std_logic:='0';
signal en10	    :std_logic:='0';
signal en11	    :std_logic:='0';
signal en12	    :std_logic:='0';
signal en13	    :std_logic:='0';
signal en14	    :std_logic:='0';
signal en15	    :std_logic:='0';
signal en16	    :std_logic:='0';
signal en17	    :std_logic:='0';
signal en18	    :std_logic:='0';
signal en19	    :std_logic:='0';
signal en20	    :std_logic:='0';
signal en21	    :std_logic:='0';
signal en22	    :std_logic:='0';
signal en23	    :std_logic:='0';
signal en24	    :std_logic:='0';
signal en25	    :std_logic:='0';
signal en26	    :std_logic:='0';
signal en27	    :std_logic:='0';
signal en28	    :std_logic:='0';
signal en29	    :std_logic:='0';
signal en30	    :std_logic:='0';
signal en31	    :std_logic:='0';
signal en32	    :std_logic:='0';
signal en33	    :std_logic:='0';
signal en34	    :std_logic:='0';
signal en35	    :std_logic:='0';
signal en36	    :std_logic:='0';
signal en37	    :std_logic:='0';
signal en38	    :std_logic:='0';
signal en39	    :std_logic:='0';
signal en40	    :std_logic:='0';
signal en41	    :std_logic:='0';
signal en42	    :std_logic:='0';
signal en43	    :std_logic:='0';
signal en44	    :std_logic:='0';
signal en45	    :std_logic:='0';
signal en46	    :std_logic:='0';
signal en47	    :std_logic:='0';
signal en48	    :std_logic:='0';
signal en49	    :std_logic:='0';
signal en50	    :std_logic:='0';
signal en51	    :std_logic:='0';
signal en52	    :std_logic:='0';
signal en53	    :std_logic:='0';
signal en54	    :std_logic:='0';
signal en55	    :std_logic:='0';
signal en56	    :std_logic:='0';
signal en57	    :std_logic:='0';
signal en58	    :std_logic:='0';
signal en59	    :std_logic:='0';
signal en60	    :std_logic:='0';
signal en61	    :std_logic:='0';
signal en62	    :std_logic:='0';
signal en63	    :std_logic:='0';
signal en64	    :std_logic:='0';
signal en65	    :std_logic:='0';
signal en66	    :std_logic:='0';
signal en67	    :std_logic:='0';
signal en68	    :std_logic:='0';
signal en69	    :std_logic:='0';
signal en70	    :std_logic:='0';
signal en71	    :std_logic:='0';
signal en72	    :std_logic:='0';
signal en73	    :std_logic:='0';
signal en74	    :std_logic:='0';
signal en75	    :std_logic:='0';
signal en76	    :std_logic:='0';
signal en77	    :std_logic:='0';
signal en78	    :std_logic:='0';
signal en79	    :std_logic:='0';
signal en80	    :std_logic:='0';
signal en81	    :std_logic:='0';
signal en82	    :std_logic:='0';
signal en83	    :std_logic:='0';
signal en84	    :std_logic:='0';
signal en85	    :std_logic:='0';
signal en86	    :std_logic:='0';
signal en87	    :std_logic:='0';
signal en88	    :std_logic:='0';
signal en89	    :std_logic:='0';
signal en90	    :std_logic:='0';
signal en91	    :std_logic:='0';
signal en92	    :std_logic:='0';
signal en93	    :std_logic:='0';
signal en94	    :std_logic:='0';
signal en95	    :std_logic:='0';
signal en96	    :std_logic:='0';
signal en97	    :std_logic:='0';
signal en98	    :std_logic:='0';
signal en99	    :std_logic:='0';

-- <END_1>
-------------------------------------------------------------------------------
signal output_s	: std_logic	:='0';
signal tau_s	: std_logic_vector(7 downto 0) := (others => '0');


-------------------------------------------------------------------------------------
----- BEGIN OF ARCHITECTURE   ------------------------------------------------------
-------------------------------------------------------------------------------------
begin
  
 

  PLL: component AltPLa --??: maybe reduce to only needed clocks
  PORT MAP (areset => reset_s,inclk0 => CLOCK_50 ,c4 => clk_s) ;
 -- PORT MAP (areset => reset_s,inclk0 => CLOCK_50    ) ;
  
-------------------------------------------------------------------------------
-- <BEGIN_2> 
OBS_0:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(0),clk=>clk_s,reset =>reset_s, enable_in =>enable_s,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en1) ;
OBS_1:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(1),clk=>clk_s,reset =>reset_s, enable_in =>en1,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en2) ;
OBS_2:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(2),clk=>clk_s,reset =>reset_s, enable_in =>en2,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en3) ;
OBS_3:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(3),clk=>clk_s,reset =>reset_s, enable_in =>en3,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en4) ;
OBS_4:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(4),clk=>clk_s,reset =>reset_s, enable_in =>en4,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en5) ;
OBS_5:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(5),clk=>clk_s,reset =>reset_s, enable_in =>en5,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en6) ;
OBS_6:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(6),clk=>clk_s,reset =>reset_s, enable_in =>en6,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en7) ;
OBS_7:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(7),clk=>clk_s,reset =>reset_s, enable_in =>en7,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en8) ;
OBS_8:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(8),clk=>clk_s,reset =>reset_s, enable_in =>en8,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en9) ;
OBS_9:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(9),clk=>clk_s,reset =>reset_s, enable_in =>en9,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en10) ;
OBS_10:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(10),clk=>clk_s,reset =>reset_s, enable_in =>en10,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en11) ;
OBS_11:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(11),clk=>clk_s,reset =>reset_s, enable_in =>en11,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en12) ;
OBS_12:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(12),clk=>clk_s,reset =>reset_s, enable_in =>en12,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en13) ;
OBS_13:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(13),clk=>clk_s,reset =>reset_s, enable_in =>en13,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en14) ;
OBS_14:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(14),clk=>clk_s,reset =>reset_s, enable_in =>en14,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en15) ;
OBS_15:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(15),clk=>clk_s,reset =>reset_s, enable_in =>en15,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en16) ;
OBS_16:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(16),clk=>clk_s,reset =>reset_s, enable_in =>en16,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en17) ;
OBS_17:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(17),clk=>clk_s,reset =>reset_s, enable_in =>en17,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en18) ;
OBS_18:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(18),clk=>clk_s,reset =>reset_s, enable_in =>en18,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en19) ;
OBS_19:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(19),clk=>clk_s,reset =>reset_s, enable_in =>en19,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en20) ;
OBS_20:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(20),clk=>clk_s,reset =>reset_s, enable_in =>en20,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en21) ;
OBS_21:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(21),clk=>clk_s,reset =>reset_s, enable_in =>en21,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en22) ;
OBS_22:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(22),clk=>clk_s,reset =>reset_s, enable_in =>en22,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en23) ;
OBS_23:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(23),clk=>clk_s,reset =>reset_s, enable_in =>en23,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en24) ;
OBS_24:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(24),clk=>clk_s,reset =>reset_s, enable_in =>en24,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en25) ;
OBS_25:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(25),clk=>clk_s,reset =>reset_s, enable_in =>en25,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en26) ;
OBS_26:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(26),clk=>clk_s,reset =>reset_s, enable_in =>en26,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en27) ;
OBS_27:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(27),clk=>clk_s,reset =>reset_s, enable_in =>en27,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en28) ;
OBS_28:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(28),clk=>clk_s,reset =>reset_s, enable_in =>en28,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en29) ;
OBS_29:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(29),clk=>clk_s,reset =>reset_s, enable_in =>en29,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en30) ;
OBS_30:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(30),clk=>clk_s,reset =>reset_s, enable_in =>en30,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en31) ;
OBS_31:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(31),clk=>clk_s,reset =>reset_s, enable_in =>en31,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en32) ;
OBS_32:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(32),clk=>clk_s,reset =>reset_s, enable_in =>en32,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en33) ;
OBS_33:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(33),clk=>clk_s,reset =>reset_s, enable_in =>en33,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en34) ;
OBS_34:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(34),clk=>clk_s,reset =>reset_s, enable_in =>en34,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en35) ;
OBS_35:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(35),clk=>clk_s,reset =>reset_s, enable_in =>en35,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en36) ;
OBS_36:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(36),clk=>clk_s,reset =>reset_s, enable_in =>en36,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en37) ;
OBS_37:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(37),clk=>clk_s,reset =>reset_s, enable_in =>en37,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en38) ;
OBS_38:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(38),clk=>clk_s,reset =>reset_s, enable_in =>en38,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en39) ;
OBS_39:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(39),clk=>clk_s,reset =>reset_s, enable_in =>en39,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en40) ;
OBS_40:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(40),clk=>clk_s,reset =>reset_s, enable_in =>en40,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en41) ;
OBS_41:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(41),clk=>clk_s,reset =>reset_s, enable_in =>en41,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en42) ;
OBS_42:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(42),clk=>clk_s,reset =>reset_s, enable_in =>en42,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en43) ;
OBS_43:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(43),clk=>clk_s,reset =>reset_s, enable_in =>en43,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en44) ;
OBS_44:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(44),clk=>clk_s,reset =>reset_s, enable_in =>en44,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en45) ;
OBS_45:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(45),clk=>clk_s,reset =>reset_s, enable_in =>en45,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en46) ;
OBS_46:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(46),clk=>clk_s,reset =>reset_s, enable_in =>en46,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en47) ;
OBS_47:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(47),clk=>clk_s,reset =>reset_s, enable_in =>en47,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en48) ;
OBS_48:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(48),clk=>clk_s,reset =>reset_s, enable_in =>en48,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en49) ;
OBS_49:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(49),clk=>clk_s,reset =>reset_s, enable_in =>en49,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en50) ;
OBS_50:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(50),clk=>clk_s,reset =>reset_s, enable_in =>en50,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en51) ;
OBS_51:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(51),clk=>clk_s,reset =>reset_s, enable_in =>en51,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en52) ;
OBS_52:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(52),clk=>clk_s,reset =>reset_s, enable_in =>en52,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en53) ;
OBS_53:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(53),clk=>clk_s,reset =>reset_s, enable_in =>en53,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en54) ;
OBS_54:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(54),clk=>clk_s,reset =>reset_s, enable_in =>en54,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en55) ;
OBS_55:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(55),clk=>clk_s,reset =>reset_s, enable_in =>en55,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en56) ;
OBS_56:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(56),clk=>clk_s,reset =>reset_s, enable_in =>en56,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en57) ;
OBS_57:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(57),clk=>clk_s,reset =>reset_s, enable_in =>en57,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en58) ;
OBS_58:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(58),clk=>clk_s,reset =>reset_s, enable_in =>en58,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en59) ;
OBS_59:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(59),clk=>clk_s,reset =>reset_s, enable_in =>en59,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en60) ;
OBS_60:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(60),clk=>clk_s,reset =>reset_s, enable_in =>en60,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en61) ;
OBS_61:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(61),clk=>clk_s,reset =>reset_s, enable_in =>en61,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en62) ;
OBS_62:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(62),clk=>clk_s,reset =>reset_s, enable_in =>en62,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en63) ;
OBS_63:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(63),clk=>clk_s,reset =>reset_s, enable_in =>en63,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en64) ;
OBS_64:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(64),clk=>clk_s,reset =>reset_s, enable_in =>en64,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en65) ;
OBS_65:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(65),clk=>clk_s,reset =>reset_s, enable_in =>en65,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en66) ;
OBS_66:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(66),clk=>clk_s,reset =>reset_s, enable_in =>en66,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en67) ;
OBS_67:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(67),clk=>clk_s,reset =>reset_s, enable_in =>en67,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en68) ;
OBS_68:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(68),clk=>clk_s,reset =>reset_s, enable_in =>en68,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en69) ;
OBS_69:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(69),clk=>clk_s,reset =>reset_s, enable_in =>en69,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en70) ;
OBS_70:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(70),clk=>clk_s,reset =>reset_s, enable_in =>en70,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en71) ;
OBS_71:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(71),clk=>clk_s,reset =>reset_s, enable_in =>en71,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en72) ;
OBS_72:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(72),clk=>clk_s,reset =>reset_s, enable_in =>en72,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en73) ;
OBS_73:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(73),clk=>clk_s,reset =>reset_s, enable_in =>en73,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en74) ;
OBS_74:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(74),clk=>clk_s,reset =>reset_s, enable_in =>en74,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en75) ;
OBS_75:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(75),clk=>clk_s,reset =>reset_s, enable_in =>en75,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en76) ;
OBS_76:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(76),clk=>clk_s,reset =>reset_s, enable_in =>en76,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en77) ;
OBS_77:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(77),clk=>clk_s,reset =>reset_s, enable_in =>en77,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en78) ;
OBS_78:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(78),clk=>clk_s,reset =>reset_s, enable_in =>en78,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en79) ;
OBS_79:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(79),clk=>clk_s,reset =>reset_s, enable_in =>en79,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en80) ;
OBS_80:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(80),clk=>clk_s,reset =>reset_s, enable_in =>en80,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en81) ;
OBS_81:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(81),clk=>clk_s,reset =>reset_s, enable_in =>en81,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en82) ;
OBS_82:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(82),clk=>clk_s,reset =>reset_s, enable_in =>en82,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en83) ;
OBS_83:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(83),clk=>clk_s,reset =>reset_s, enable_in =>en83,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en84) ;
OBS_84:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(84),clk=>clk_s,reset =>reset_s, enable_in =>en84,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en85) ;
OBS_85:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(85),clk=>clk_s,reset =>reset_s, enable_in =>en85,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en86) ;
OBS_86:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(86),clk=>clk_s,reset =>reset_s, enable_in =>en86,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en87) ;
OBS_87:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(87),clk=>clk_s,reset =>reset_s, enable_in =>en87,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en88) ;
OBS_88:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(88),clk=>clk_s,reset =>reset_s, enable_in =>en88,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en89) ;
OBS_89:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(89),clk=>clk_s,reset =>reset_s, enable_in =>en89,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en90) ;
OBS_90:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(90),clk=>clk_s,reset =>reset_s, enable_in =>en90,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en91) ;
OBS_91:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(91),clk=>clk_s,reset =>reset_s, enable_in =>en91,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en92) ;
OBS_92:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(92),clk=>clk_s,reset =>reset_s, enable_in =>en92,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en93) ;
OBS_93:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(93),clk=>clk_s,reset =>reset_s, enable_in =>en93,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en94) ;
OBS_94:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(94),clk=>clk_s,reset =>reset_s, enable_in =>en94,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en95) ;
OBS_95:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(95),clk=>clk_s,reset =>reset_s, enable_in =>en95,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en96) ;
OBS_96:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(96),clk=>clk_s,reset =>reset_s, enable_in =>en96,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en97) ;
OBS_97:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(97),clk=>clk_s,reset =>reset_s, enable_in =>en97,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en98) ;
OBS_98:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(98),clk=>clk_s,reset =>reset_s, enable_in =>en98,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en99) ;
OBS_99:  observer GENERIC MAP(observernumber => x"0064")
    PORT MAP ( output=>add(99),clk=>clk_s,reset =>reset_s, enable_in =>en99,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=> next_obs_s) ;

-- <END_2>
-------------------------------------------------------------------------------		
 

  -------------------------------------------------------------------------------
-- <BEGIN_3> 
output_s <= and_reduce(add);
-- <END_3> 
-------------------------------------------------------------------------------

  
	
	
  reset_s <= not KEY(0);
  --GPIO(0) <= clk_s; 	
  GPIO(0) <= reset_s;
  GPIO(1) <= enable_s;	
  --GPIO(2) <= en1;		
  --GPIO(3) <= en2;	
  --GPIO(4) <= en3;		
  --GPIO(5) <= en4;	
  --GPIO(6) <= next_obs_s;  
  --GPIO(7) <= clk_g;
  GPIO(8) <= phi_s;	
  GPIO(9)<= clk_s;
  --GPIO(10) <= add0;	
  --GPIO(10) <= add(0);		
  --GPIO(11) <= add(1);		
  --GPIO(12) <= add(2);		
  --GPIO(13) <= add(3);		
  --GPIO(14) <= add(4);	
  GPIO(15)<= output_s;	

  tau_s		<= std_logic_vector(to_unsigned(tau_range,8));
  

  

  
  sync:process(clk_s)
  begin
    if(clk_s'event and clk_s='1') then
      if reset_s ='0' then
        enable_s <= '1';
				phi_s <= not phi_s;
      else
        enable_s <= '0';
      end if;
    end if;	
  end process;
	
end architecture;
