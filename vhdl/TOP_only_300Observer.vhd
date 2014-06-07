











LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_misc.all;

entity top_only_300Observer is

port (
   CLOCK_50          :in	std_logic;
   KEY					:in 	std_logic_vector(3 downto 0) ;
   GPIO   				:out    std_logic_vector(34 downto 0) 
  );

end entity;

--------------------------------------------------------------------------
------------------      ARCHITECTURE    ---------------------------------
--------------------------------------------------------------------------
architecture rtl of top_only_300Observer is

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
FOR OBS_100 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_101 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_102 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_103 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_104 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_105 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_106 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_107 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_108 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_109 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_110 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_111 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_112 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_113 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_114 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_115 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_116 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_117 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_118 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_119 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_120 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_121 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_122 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_123 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_124 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_125 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_126 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_127 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_128 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_129 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_130 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_131 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_132 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_133 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_134 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_135 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_136 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_137 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_138 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_139 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_140 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_141 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_142 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_143 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_144 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_145 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_146 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_147 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_148 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_149 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_150 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_151 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_152 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_153 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_154 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_155 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_156 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_157 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_158 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_159 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_160 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_161 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_162 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_163 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_164 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_165 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_166 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_167 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_168 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_169 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_170 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_171 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_172 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_173 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_174 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_175 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_176 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_177 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_178 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_179 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_180 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_181 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_182 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_183 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_184 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_185 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_186 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_187 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_188 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_189 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_190 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_191 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_192 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_193 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_194 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_195 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_196 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_197 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_198 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_199 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_200 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_201 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_202 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_203 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_204 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_205 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_206 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_207 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_208 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_209 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_210 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_211 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_212 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_213 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_214 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_215 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_216 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_217 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_218 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_219 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_220 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_221 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_222 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_223 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_224 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_225 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_226 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_227 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_228 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_229 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_230 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_231 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_232 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_233 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_234 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_235 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_236 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_237 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_238 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_239 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_240 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_241 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_242 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_243 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_244 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_245 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_246 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_247 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_248 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_249 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_250 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_251 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_252 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_253 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_254 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_255 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_256 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_257 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_258 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_259 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_260 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_261 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_262 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_263 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_264 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_265 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_266 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_267 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_268 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_269 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_270 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_271 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_272 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_273 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_274 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_275 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_276 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_277 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_278 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_279 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_280 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_281 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_282 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_283 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_284 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_285 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_286 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_287 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_288 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_289 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_290 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_291 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_292 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_293 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_294 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_295 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_296 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_297 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_298 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_299 : observer 
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
signal add: std_logic_vector(299 downto 0):=(others=>'0');
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
signal en100	    :std_logic:='0';
signal en101	    :std_logic:='0';
signal en102	    :std_logic:='0';
signal en103	    :std_logic:='0';
signal en104	    :std_logic:='0';
signal en105	    :std_logic:='0';
signal en106	    :std_logic:='0';
signal en107	    :std_logic:='0';
signal en108	    :std_logic:='0';
signal en109	    :std_logic:='0';
signal en110	    :std_logic:='0';
signal en111	    :std_logic:='0';
signal en112	    :std_logic:='0';
signal en113	    :std_logic:='0';
signal en114	    :std_logic:='0';
signal en115	    :std_logic:='0';
signal en116	    :std_logic:='0';
signal en117	    :std_logic:='0';
signal en118	    :std_logic:='0';
signal en119	    :std_logic:='0';
signal en120	    :std_logic:='0';
signal en121	    :std_logic:='0';
signal en122	    :std_logic:='0';
signal en123	    :std_logic:='0';
signal en124	    :std_logic:='0';
signal en125	    :std_logic:='0';
signal en126	    :std_logic:='0';
signal en127	    :std_logic:='0';
signal en128	    :std_logic:='0';
signal en129	    :std_logic:='0';
signal en130	    :std_logic:='0';
signal en131	    :std_logic:='0';
signal en132	    :std_logic:='0';
signal en133	    :std_logic:='0';
signal en134	    :std_logic:='0';
signal en135	    :std_logic:='0';
signal en136	    :std_logic:='0';
signal en137	    :std_logic:='0';
signal en138	    :std_logic:='0';
signal en139	    :std_logic:='0';
signal en140	    :std_logic:='0';
signal en141	    :std_logic:='0';
signal en142	    :std_logic:='0';
signal en143	    :std_logic:='0';
signal en144	    :std_logic:='0';
signal en145	    :std_logic:='0';
signal en146	    :std_logic:='0';
signal en147	    :std_logic:='0';
signal en148	    :std_logic:='0';
signal en149	    :std_logic:='0';
signal en150	    :std_logic:='0';
signal en151	    :std_logic:='0';
signal en152	    :std_logic:='0';
signal en153	    :std_logic:='0';
signal en154	    :std_logic:='0';
signal en155	    :std_logic:='0';
signal en156	    :std_logic:='0';
signal en157	    :std_logic:='0';
signal en158	    :std_logic:='0';
signal en159	    :std_logic:='0';
signal en160	    :std_logic:='0';
signal en161	    :std_logic:='0';
signal en162	    :std_logic:='0';
signal en163	    :std_logic:='0';
signal en164	    :std_logic:='0';
signal en165	    :std_logic:='0';
signal en166	    :std_logic:='0';
signal en167	    :std_logic:='0';
signal en168	    :std_logic:='0';
signal en169	    :std_logic:='0';
signal en170	    :std_logic:='0';
signal en171	    :std_logic:='0';
signal en172	    :std_logic:='0';
signal en173	    :std_logic:='0';
signal en174	    :std_logic:='0';
signal en175	    :std_logic:='0';
signal en176	    :std_logic:='0';
signal en177	    :std_logic:='0';
signal en178	    :std_logic:='0';
signal en179	    :std_logic:='0';
signal en180	    :std_logic:='0';
signal en181	    :std_logic:='0';
signal en182	    :std_logic:='0';
signal en183	    :std_logic:='0';
signal en184	    :std_logic:='0';
signal en185	    :std_logic:='0';
signal en186	    :std_logic:='0';
signal en187	    :std_logic:='0';
signal en188	    :std_logic:='0';
signal en189	    :std_logic:='0';
signal en190	    :std_logic:='0';
signal en191	    :std_logic:='0';
signal en192	    :std_logic:='0';
signal en193	    :std_logic:='0';
signal en194	    :std_logic:='0';
signal en195	    :std_logic:='0';
signal en196	    :std_logic:='0';
signal en197	    :std_logic:='0';
signal en198	    :std_logic:='0';
signal en199	    :std_logic:='0';
signal en200	    :std_logic:='0';
signal en201	    :std_logic:='0';
signal en202	    :std_logic:='0';
signal en203	    :std_logic:='0';
signal en204	    :std_logic:='0';
signal en205	    :std_logic:='0';
signal en206	    :std_logic:='0';
signal en207	    :std_logic:='0';
signal en208	    :std_logic:='0';
signal en209	    :std_logic:='0';
signal en210	    :std_logic:='0';
signal en211	    :std_logic:='0';
signal en212	    :std_logic:='0';
signal en213	    :std_logic:='0';
signal en214	    :std_logic:='0';
signal en215	    :std_logic:='0';
signal en216	    :std_logic:='0';
signal en217	    :std_logic:='0';
signal en218	    :std_logic:='0';
signal en219	    :std_logic:='0';
signal en220	    :std_logic:='0';
signal en221	    :std_logic:='0';
signal en222	    :std_logic:='0';
signal en223	    :std_logic:='0';
signal en224	    :std_logic:='0';
signal en225	    :std_logic:='0';
signal en226	    :std_logic:='0';
signal en227	    :std_logic:='0';
signal en228	    :std_logic:='0';
signal en229	    :std_logic:='0';
signal en230	    :std_logic:='0';
signal en231	    :std_logic:='0';
signal en232	    :std_logic:='0';
signal en233	    :std_logic:='0';
signal en234	    :std_logic:='0';
signal en235	    :std_logic:='0';
signal en236	    :std_logic:='0';
signal en237	    :std_logic:='0';
signal en238	    :std_logic:='0';
signal en239	    :std_logic:='0';
signal en240	    :std_logic:='0';
signal en241	    :std_logic:='0';
signal en242	    :std_logic:='0';
signal en243	    :std_logic:='0';
signal en244	    :std_logic:='0';
signal en245	    :std_logic:='0';
signal en246	    :std_logic:='0';
signal en247	    :std_logic:='0';
signal en248	    :std_logic:='0';
signal en249	    :std_logic:='0';
signal en250	    :std_logic:='0';
signal en251	    :std_logic:='0';
signal en252	    :std_logic:='0';
signal en253	    :std_logic:='0';
signal en254	    :std_logic:='0';
signal en255	    :std_logic:='0';
signal en256	    :std_logic:='0';
signal en257	    :std_logic:='0';
signal en258	    :std_logic:='0';
signal en259	    :std_logic:='0';
signal en260	    :std_logic:='0';
signal en261	    :std_logic:='0';
signal en262	    :std_logic:='0';
signal en263	    :std_logic:='0';
signal en264	    :std_logic:='0';
signal en265	    :std_logic:='0';
signal en266	    :std_logic:='0';
signal en267	    :std_logic:='0';
signal en268	    :std_logic:='0';
signal en269	    :std_logic:='0';
signal en270	    :std_logic:='0';
signal en271	    :std_logic:='0';
signal en272	    :std_logic:='0';
signal en273	    :std_logic:='0';
signal en274	    :std_logic:='0';
signal en275	    :std_logic:='0';
signal en276	    :std_logic:='0';
signal en277	    :std_logic:='0';
signal en278	    :std_logic:='0';
signal en279	    :std_logic:='0';
signal en280	    :std_logic:='0';
signal en281	    :std_logic:='0';
signal en282	    :std_logic:='0';
signal en283	    :std_logic:='0';
signal en284	    :std_logic:='0';
signal en285	    :std_logic:='0';
signal en286	    :std_logic:='0';
signal en287	    :std_logic:='0';
signal en288	    :std_logic:='0';
signal en289	    :std_logic:='0';
signal en290	    :std_logic:='0';
signal en291	    :std_logic:='0';
signal en292	    :std_logic:='0';
signal en293	    :std_logic:='0';
signal en294	    :std_logic:='0';
signal en295	    :std_logic:='0';
signal en296	    :std_logic:='0';
signal en297	    :std_logic:='0';
signal en298	    :std_logic:='0';
signal en299	    :std_logic:='0';

-- <END_1>
-------------------------------------------------------------------------------
signal output_s	: std_logic	:='0';
signal tau_s	: std_logic_vector(7 downto 0) := (others => '0');


-------------------------------------------------------------------------------------
----- BEGIN OF ARCHITECTURE   ------------------------------------------------------
-------------------------------------------------------------------------------------
begin
  
 

  PLL: component AltPLa --??: maybe reduce to only needed clocks
  PORT MAP (areset => reset_s,inclk0 => CLOCK_50 ,c0 => clk_s) ;
 -- PORT MAP (areset => reset_s,inclk0 => CLOCK_50    ) ;
  
-------------------------------------------------------------------------------
-- <BEGIN_2> 
OBS_0:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(0),clk=>clk_s,reset =>reset_s, enable_in =>enable_s,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en1) ;
OBS_1:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(1),clk=>clk_s,reset =>reset_s, enable_in =>en1,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en2) ;
OBS_2:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(2),clk=>clk_s,reset =>reset_s, enable_in =>en2,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en3) ;
OBS_3:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(3),clk=>clk_s,reset =>reset_s, enable_in =>en3,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en4) ;
OBS_4:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(4),clk=>clk_s,reset =>reset_s, enable_in =>en4,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en5) ;
OBS_5:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(5),clk=>clk_s,reset =>reset_s, enable_in =>en5,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en6) ;
OBS_6:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(6),clk=>clk_s,reset =>reset_s, enable_in =>en6,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en7) ;
OBS_7:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(7),clk=>clk_s,reset =>reset_s, enable_in =>en7,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en8) ;
OBS_8:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(8),clk=>clk_s,reset =>reset_s, enable_in =>en8,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en9) ;
OBS_9:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(9),clk=>clk_s,reset =>reset_s, enable_in =>en9,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en10) ;
OBS_10:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(10),clk=>clk_s,reset =>reset_s, enable_in =>en10,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en11) ;
OBS_11:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(11),clk=>clk_s,reset =>reset_s, enable_in =>en11,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en12) ;
OBS_12:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(12),clk=>clk_s,reset =>reset_s, enable_in =>en12,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en13) ;
OBS_13:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(13),clk=>clk_s,reset =>reset_s, enable_in =>en13,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en14) ;
OBS_14:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(14),clk=>clk_s,reset =>reset_s, enable_in =>en14,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en15) ;
OBS_15:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(15),clk=>clk_s,reset =>reset_s, enable_in =>en15,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en16) ;
OBS_16:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(16),clk=>clk_s,reset =>reset_s, enable_in =>en16,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en17) ;
OBS_17:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(17),clk=>clk_s,reset =>reset_s, enable_in =>en17,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en18) ;
OBS_18:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(18),clk=>clk_s,reset =>reset_s, enable_in =>en18,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en19) ;
OBS_19:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(19),clk=>clk_s,reset =>reset_s, enable_in =>en19,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en20) ;
OBS_20:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(20),clk=>clk_s,reset =>reset_s, enable_in =>en20,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en21) ;
OBS_21:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(21),clk=>clk_s,reset =>reset_s, enable_in =>en21,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en22) ;
OBS_22:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(22),clk=>clk_s,reset =>reset_s, enable_in =>en22,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en23) ;
OBS_23:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(23),clk=>clk_s,reset =>reset_s, enable_in =>en23,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en24) ;
OBS_24:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(24),clk=>clk_s,reset =>reset_s, enable_in =>en24,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en25) ;
OBS_25:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(25),clk=>clk_s,reset =>reset_s, enable_in =>en25,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en26) ;
OBS_26:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(26),clk=>clk_s,reset =>reset_s, enable_in =>en26,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en27) ;
OBS_27:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(27),clk=>clk_s,reset =>reset_s, enable_in =>en27,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en28) ;
OBS_28:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(28),clk=>clk_s,reset =>reset_s, enable_in =>en28,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en29) ;
OBS_29:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(29),clk=>clk_s,reset =>reset_s, enable_in =>en29,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en30) ;
OBS_30:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(30),clk=>clk_s,reset =>reset_s, enable_in =>en30,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en31) ;
OBS_31:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(31),clk=>clk_s,reset =>reset_s, enable_in =>en31,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en32) ;
OBS_32:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(32),clk=>clk_s,reset =>reset_s, enable_in =>en32,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en33) ;
OBS_33:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(33),clk=>clk_s,reset =>reset_s, enable_in =>en33,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en34) ;
OBS_34:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(34),clk=>clk_s,reset =>reset_s, enable_in =>en34,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en35) ;
OBS_35:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(35),clk=>clk_s,reset =>reset_s, enable_in =>en35,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en36) ;
OBS_36:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(36),clk=>clk_s,reset =>reset_s, enable_in =>en36,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en37) ;
OBS_37:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(37),clk=>clk_s,reset =>reset_s, enable_in =>en37,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en38) ;
OBS_38:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(38),clk=>clk_s,reset =>reset_s, enable_in =>en38,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en39) ;
OBS_39:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(39),clk=>clk_s,reset =>reset_s, enable_in =>en39,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en40) ;
OBS_40:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(40),clk=>clk_s,reset =>reset_s, enable_in =>en40,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en41) ;
OBS_41:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(41),clk=>clk_s,reset =>reset_s, enable_in =>en41,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en42) ;
OBS_42:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(42),clk=>clk_s,reset =>reset_s, enable_in =>en42,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en43) ;
OBS_43:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(43),clk=>clk_s,reset =>reset_s, enable_in =>en43,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en44) ;
OBS_44:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(44),clk=>clk_s,reset =>reset_s, enable_in =>en44,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en45) ;
OBS_45:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(45),clk=>clk_s,reset =>reset_s, enable_in =>en45,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en46) ;
OBS_46:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(46),clk=>clk_s,reset =>reset_s, enable_in =>en46,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en47) ;
OBS_47:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(47),clk=>clk_s,reset =>reset_s, enable_in =>en47,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en48) ;
OBS_48:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(48),clk=>clk_s,reset =>reset_s, enable_in =>en48,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en49) ;
OBS_49:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(49),clk=>clk_s,reset =>reset_s, enable_in =>en49,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en50) ;
OBS_50:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(50),clk=>clk_s,reset =>reset_s, enable_in =>en50,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en51) ;
OBS_51:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(51),clk=>clk_s,reset =>reset_s, enable_in =>en51,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en52) ;
OBS_52:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(52),clk=>clk_s,reset =>reset_s, enable_in =>en52,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en53) ;
OBS_53:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(53),clk=>clk_s,reset =>reset_s, enable_in =>en53,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en54) ;
OBS_54:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(54),clk=>clk_s,reset =>reset_s, enable_in =>en54,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en55) ;
OBS_55:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(55),clk=>clk_s,reset =>reset_s, enable_in =>en55,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en56) ;
OBS_56:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(56),clk=>clk_s,reset =>reset_s, enable_in =>en56,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en57) ;
OBS_57:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(57),clk=>clk_s,reset =>reset_s, enable_in =>en57,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en58) ;
OBS_58:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(58),clk=>clk_s,reset =>reset_s, enable_in =>en58,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en59) ;
OBS_59:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(59),clk=>clk_s,reset =>reset_s, enable_in =>en59,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en60) ;
OBS_60:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(60),clk=>clk_s,reset =>reset_s, enable_in =>en60,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en61) ;
OBS_61:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(61),clk=>clk_s,reset =>reset_s, enable_in =>en61,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en62) ;
OBS_62:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(62),clk=>clk_s,reset =>reset_s, enable_in =>en62,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en63) ;
OBS_63:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(63),clk=>clk_s,reset =>reset_s, enable_in =>en63,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en64) ;
OBS_64:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(64),clk=>clk_s,reset =>reset_s, enable_in =>en64,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en65) ;
OBS_65:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(65),clk=>clk_s,reset =>reset_s, enable_in =>en65,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en66) ;
OBS_66:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(66),clk=>clk_s,reset =>reset_s, enable_in =>en66,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en67) ;
OBS_67:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(67),clk=>clk_s,reset =>reset_s, enable_in =>en67,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en68) ;
OBS_68:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(68),clk=>clk_s,reset =>reset_s, enable_in =>en68,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en69) ;
OBS_69:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(69),clk=>clk_s,reset =>reset_s, enable_in =>en69,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en70) ;
OBS_70:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(70),clk=>clk_s,reset =>reset_s, enable_in =>en70,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en71) ;
OBS_71:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(71),clk=>clk_s,reset =>reset_s, enable_in =>en71,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en72) ;
OBS_72:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(72),clk=>clk_s,reset =>reset_s, enable_in =>en72,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en73) ;
OBS_73:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(73),clk=>clk_s,reset =>reset_s, enable_in =>en73,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en74) ;
OBS_74:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(74),clk=>clk_s,reset =>reset_s, enable_in =>en74,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en75) ;
OBS_75:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(75),clk=>clk_s,reset =>reset_s, enable_in =>en75,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en76) ;
OBS_76:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(76),clk=>clk_s,reset =>reset_s, enable_in =>en76,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en77) ;
OBS_77:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(77),clk=>clk_s,reset =>reset_s, enable_in =>en77,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en78) ;
OBS_78:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(78),clk=>clk_s,reset =>reset_s, enable_in =>en78,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en79) ;
OBS_79:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(79),clk=>clk_s,reset =>reset_s, enable_in =>en79,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en80) ;
OBS_80:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(80),clk=>clk_s,reset =>reset_s, enable_in =>en80,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en81) ;
OBS_81:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(81),clk=>clk_s,reset =>reset_s, enable_in =>en81,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en82) ;
OBS_82:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(82),clk=>clk_s,reset =>reset_s, enable_in =>en82,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en83) ;
OBS_83:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(83),clk=>clk_s,reset =>reset_s, enable_in =>en83,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en84) ;
OBS_84:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(84),clk=>clk_s,reset =>reset_s, enable_in =>en84,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en85) ;
OBS_85:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(85),clk=>clk_s,reset =>reset_s, enable_in =>en85,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en86) ;
OBS_86:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(86),clk=>clk_s,reset =>reset_s, enable_in =>en86,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en87) ;
OBS_87:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(87),clk=>clk_s,reset =>reset_s, enable_in =>en87,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en88) ;
OBS_88:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(88),clk=>clk_s,reset =>reset_s, enable_in =>en88,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en89) ;
OBS_89:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(89),clk=>clk_s,reset =>reset_s, enable_in =>en89,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en90) ;
OBS_90:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(90),clk=>clk_s,reset =>reset_s, enable_in =>en90,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en91) ;
OBS_91:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(91),clk=>clk_s,reset =>reset_s, enable_in =>en91,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en92) ;
OBS_92:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(92),clk=>clk_s,reset =>reset_s, enable_in =>en92,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en93) ;
OBS_93:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(93),clk=>clk_s,reset =>reset_s, enable_in =>en93,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en94) ;
OBS_94:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(94),clk=>clk_s,reset =>reset_s, enable_in =>en94,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en95) ;
OBS_95:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(95),clk=>clk_s,reset =>reset_s, enable_in =>en95,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en96) ;
OBS_96:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(96),clk=>clk_s,reset =>reset_s, enable_in =>en96,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en97) ;
OBS_97:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(97),clk=>clk_s,reset =>reset_s, enable_in =>en97,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en98) ;
OBS_98:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(98),clk=>clk_s,reset =>reset_s, enable_in =>en98,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en99) ;
OBS_99:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(99),clk=>clk_s,reset =>reset_s, enable_in =>en99,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en100) ;
OBS_100:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(100),clk=>clk_s,reset =>reset_s, enable_in =>en100,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en101) ;
OBS_101:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(101),clk=>clk_s,reset =>reset_s, enable_in =>en101,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en102) ;
OBS_102:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(102),clk=>clk_s,reset =>reset_s, enable_in =>en102,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en103) ;
OBS_103:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(103),clk=>clk_s,reset =>reset_s, enable_in =>en103,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en104) ;
OBS_104:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(104),clk=>clk_s,reset =>reset_s, enable_in =>en104,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en105) ;
OBS_105:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(105),clk=>clk_s,reset =>reset_s, enable_in =>en105,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en106) ;
OBS_106:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(106),clk=>clk_s,reset =>reset_s, enable_in =>en106,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en107) ;
OBS_107:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(107),clk=>clk_s,reset =>reset_s, enable_in =>en107,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en108) ;
OBS_108:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(108),clk=>clk_s,reset =>reset_s, enable_in =>en108,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en109) ;
OBS_109:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(109),clk=>clk_s,reset =>reset_s, enable_in =>en109,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en110) ;
OBS_110:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(110),clk=>clk_s,reset =>reset_s, enable_in =>en110,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en111) ;
OBS_111:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(111),clk=>clk_s,reset =>reset_s, enable_in =>en111,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en112) ;
OBS_112:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(112),clk=>clk_s,reset =>reset_s, enable_in =>en112,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en113) ;
OBS_113:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(113),clk=>clk_s,reset =>reset_s, enable_in =>en113,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en114) ;
OBS_114:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(114),clk=>clk_s,reset =>reset_s, enable_in =>en114,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en115) ;
OBS_115:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(115),clk=>clk_s,reset =>reset_s, enable_in =>en115,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en116) ;
OBS_116:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(116),clk=>clk_s,reset =>reset_s, enable_in =>en116,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en117) ;
OBS_117:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(117),clk=>clk_s,reset =>reset_s, enable_in =>en117,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en118) ;
OBS_118:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(118),clk=>clk_s,reset =>reset_s, enable_in =>en118,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en119) ;
OBS_119:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(119),clk=>clk_s,reset =>reset_s, enable_in =>en119,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en120) ;
OBS_120:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(120),clk=>clk_s,reset =>reset_s, enable_in =>en120,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en121) ;
OBS_121:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(121),clk=>clk_s,reset =>reset_s, enable_in =>en121,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en122) ;
OBS_122:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(122),clk=>clk_s,reset =>reset_s, enable_in =>en122,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en123) ;
OBS_123:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(123),clk=>clk_s,reset =>reset_s, enable_in =>en123,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en124) ;
OBS_124:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(124),clk=>clk_s,reset =>reset_s, enable_in =>en124,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en125) ;
OBS_125:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(125),clk=>clk_s,reset =>reset_s, enable_in =>en125,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en126) ;
OBS_126:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(126),clk=>clk_s,reset =>reset_s, enable_in =>en126,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en127) ;
OBS_127:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(127),clk=>clk_s,reset =>reset_s, enable_in =>en127,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en128) ;
OBS_128:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(128),clk=>clk_s,reset =>reset_s, enable_in =>en128,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en129) ;
OBS_129:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(129),clk=>clk_s,reset =>reset_s, enable_in =>en129,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en130) ;
OBS_130:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(130),clk=>clk_s,reset =>reset_s, enable_in =>en130,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en131) ;
OBS_131:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(131),clk=>clk_s,reset =>reset_s, enable_in =>en131,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en132) ;
OBS_132:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(132),clk=>clk_s,reset =>reset_s, enable_in =>en132,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en133) ;
OBS_133:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(133),clk=>clk_s,reset =>reset_s, enable_in =>en133,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en134) ;
OBS_134:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(134),clk=>clk_s,reset =>reset_s, enable_in =>en134,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en135) ;
OBS_135:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(135),clk=>clk_s,reset =>reset_s, enable_in =>en135,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en136) ;
OBS_136:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(136),clk=>clk_s,reset =>reset_s, enable_in =>en136,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en137) ;
OBS_137:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(137),clk=>clk_s,reset =>reset_s, enable_in =>en137,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en138) ;
OBS_138:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(138),clk=>clk_s,reset =>reset_s, enable_in =>en138,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en139) ;
OBS_139:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(139),clk=>clk_s,reset =>reset_s, enable_in =>en139,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en140) ;
OBS_140:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(140),clk=>clk_s,reset =>reset_s, enable_in =>en140,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en141) ;
OBS_141:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(141),clk=>clk_s,reset =>reset_s, enable_in =>en141,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en142) ;
OBS_142:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(142),clk=>clk_s,reset =>reset_s, enable_in =>en142,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en143) ;
OBS_143:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(143),clk=>clk_s,reset =>reset_s, enable_in =>en143,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en144) ;
OBS_144:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(144),clk=>clk_s,reset =>reset_s, enable_in =>en144,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en145) ;
OBS_145:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(145),clk=>clk_s,reset =>reset_s, enable_in =>en145,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en146) ;
OBS_146:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(146),clk=>clk_s,reset =>reset_s, enable_in =>en146,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en147) ;
OBS_147:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(147),clk=>clk_s,reset =>reset_s, enable_in =>en147,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en148) ;
OBS_148:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(148),clk=>clk_s,reset =>reset_s, enable_in =>en148,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en149) ;
OBS_149:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(149),clk=>clk_s,reset =>reset_s, enable_in =>en149,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en150) ;
OBS_150:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(150),clk=>clk_s,reset =>reset_s, enable_in =>en150,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en151) ;
OBS_151:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(151),clk=>clk_s,reset =>reset_s, enable_in =>en151,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en152) ;
OBS_152:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(152),clk=>clk_s,reset =>reset_s, enable_in =>en152,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en153) ;
OBS_153:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(153),clk=>clk_s,reset =>reset_s, enable_in =>en153,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en154) ;
OBS_154:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(154),clk=>clk_s,reset =>reset_s, enable_in =>en154,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en155) ;
OBS_155:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(155),clk=>clk_s,reset =>reset_s, enable_in =>en155,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en156) ;
OBS_156:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(156),clk=>clk_s,reset =>reset_s, enable_in =>en156,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en157) ;
OBS_157:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(157),clk=>clk_s,reset =>reset_s, enable_in =>en157,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en158) ;
OBS_158:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(158),clk=>clk_s,reset =>reset_s, enable_in =>en158,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en159) ;
OBS_159:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(159),clk=>clk_s,reset =>reset_s, enable_in =>en159,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en160) ;
OBS_160:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(160),clk=>clk_s,reset =>reset_s, enable_in =>en160,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en161) ;
OBS_161:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(161),clk=>clk_s,reset =>reset_s, enable_in =>en161,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en162) ;
OBS_162:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(162),clk=>clk_s,reset =>reset_s, enable_in =>en162,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en163) ;
OBS_163:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(163),clk=>clk_s,reset =>reset_s, enable_in =>en163,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en164) ;
OBS_164:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(164),clk=>clk_s,reset =>reset_s, enable_in =>en164,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en165) ;
OBS_165:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(165),clk=>clk_s,reset =>reset_s, enable_in =>en165,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en166) ;
OBS_166:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(166),clk=>clk_s,reset =>reset_s, enable_in =>en166,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en167) ;
OBS_167:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(167),clk=>clk_s,reset =>reset_s, enable_in =>en167,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en168) ;
OBS_168:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(168),clk=>clk_s,reset =>reset_s, enable_in =>en168,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en169) ;
OBS_169:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(169),clk=>clk_s,reset =>reset_s, enable_in =>en169,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en170) ;
OBS_170:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(170),clk=>clk_s,reset =>reset_s, enable_in =>en170,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en171) ;
OBS_171:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(171),clk=>clk_s,reset =>reset_s, enable_in =>en171,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en172) ;
OBS_172:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(172),clk=>clk_s,reset =>reset_s, enable_in =>en172,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en173) ;
OBS_173:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(173),clk=>clk_s,reset =>reset_s, enable_in =>en173,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en174) ;
OBS_174:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(174),clk=>clk_s,reset =>reset_s, enable_in =>en174,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en175) ;
OBS_175:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(175),clk=>clk_s,reset =>reset_s, enable_in =>en175,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en176) ;
OBS_176:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(176),clk=>clk_s,reset =>reset_s, enable_in =>en176,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en177) ;
OBS_177:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(177),clk=>clk_s,reset =>reset_s, enable_in =>en177,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en178) ;
OBS_178:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(178),clk=>clk_s,reset =>reset_s, enable_in =>en178,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en179) ;
OBS_179:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(179),clk=>clk_s,reset =>reset_s, enable_in =>en179,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en180) ;
OBS_180:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(180),clk=>clk_s,reset =>reset_s, enable_in =>en180,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en181) ;
OBS_181:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(181),clk=>clk_s,reset =>reset_s, enable_in =>en181,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en182) ;
OBS_182:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(182),clk=>clk_s,reset =>reset_s, enable_in =>en182,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en183) ;
OBS_183:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(183),clk=>clk_s,reset =>reset_s, enable_in =>en183,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en184) ;
OBS_184:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(184),clk=>clk_s,reset =>reset_s, enable_in =>en184,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en185) ;
OBS_185:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(185),clk=>clk_s,reset =>reset_s, enable_in =>en185,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en186) ;
OBS_186:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(186),clk=>clk_s,reset =>reset_s, enable_in =>en186,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en187) ;
OBS_187:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(187),clk=>clk_s,reset =>reset_s, enable_in =>en187,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en188) ;
OBS_188:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(188),clk=>clk_s,reset =>reset_s, enable_in =>en188,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en189) ;
OBS_189:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(189),clk=>clk_s,reset =>reset_s, enable_in =>en189,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en190) ;
OBS_190:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(190),clk=>clk_s,reset =>reset_s, enable_in =>en190,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en191) ;
OBS_191:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(191),clk=>clk_s,reset =>reset_s, enable_in =>en191,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en192) ;
OBS_192:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(192),clk=>clk_s,reset =>reset_s, enable_in =>en192,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en193) ;
OBS_193:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(193),clk=>clk_s,reset =>reset_s, enable_in =>en193,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en194) ;
OBS_194:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(194),clk=>clk_s,reset =>reset_s, enable_in =>en194,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en195) ;
OBS_195:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(195),clk=>clk_s,reset =>reset_s, enable_in =>en195,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en196) ;
OBS_196:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(196),clk=>clk_s,reset =>reset_s, enable_in =>en196,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en197) ;
OBS_197:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(197),clk=>clk_s,reset =>reset_s, enable_in =>en197,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en198) ;
OBS_198:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(198),clk=>clk_s,reset =>reset_s, enable_in =>en198,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en199) ;
OBS_199:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(199),clk=>clk_s,reset =>reset_s, enable_in =>en199,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en200) ;
OBS_200:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(200),clk=>clk_s,reset =>reset_s, enable_in =>en200,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en201) ;
OBS_201:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(201),clk=>clk_s,reset =>reset_s, enable_in =>en201,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en202) ;
OBS_202:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(202),clk=>clk_s,reset =>reset_s, enable_in =>en202,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en203) ;
OBS_203:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(203),clk=>clk_s,reset =>reset_s, enable_in =>en203,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en204) ;
OBS_204:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(204),clk=>clk_s,reset =>reset_s, enable_in =>en204,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en205) ;
OBS_205:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(205),clk=>clk_s,reset =>reset_s, enable_in =>en205,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en206) ;
OBS_206:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(206),clk=>clk_s,reset =>reset_s, enable_in =>en206,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en207) ;
OBS_207:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(207),clk=>clk_s,reset =>reset_s, enable_in =>en207,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en208) ;
OBS_208:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(208),clk=>clk_s,reset =>reset_s, enable_in =>en208,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en209) ;
OBS_209:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(209),clk=>clk_s,reset =>reset_s, enable_in =>en209,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en210) ;
OBS_210:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(210),clk=>clk_s,reset =>reset_s, enable_in =>en210,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en211) ;
OBS_211:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(211),clk=>clk_s,reset =>reset_s, enable_in =>en211,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en212) ;
OBS_212:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(212),clk=>clk_s,reset =>reset_s, enable_in =>en212,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en213) ;
OBS_213:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(213),clk=>clk_s,reset =>reset_s, enable_in =>en213,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en214) ;
OBS_214:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(214),clk=>clk_s,reset =>reset_s, enable_in =>en214,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en215) ;
OBS_215:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(215),clk=>clk_s,reset =>reset_s, enable_in =>en215,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en216) ;
OBS_216:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(216),clk=>clk_s,reset =>reset_s, enable_in =>en216,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en217) ;
OBS_217:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(217),clk=>clk_s,reset =>reset_s, enable_in =>en217,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en218) ;
OBS_218:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(218),clk=>clk_s,reset =>reset_s, enable_in =>en218,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en219) ;
OBS_219:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(219),clk=>clk_s,reset =>reset_s, enable_in =>en219,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en220) ;
OBS_220:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(220),clk=>clk_s,reset =>reset_s, enable_in =>en220,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en221) ;
OBS_221:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(221),clk=>clk_s,reset =>reset_s, enable_in =>en221,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en222) ;
OBS_222:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(222),clk=>clk_s,reset =>reset_s, enable_in =>en222,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en223) ;
OBS_223:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(223),clk=>clk_s,reset =>reset_s, enable_in =>en223,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en224) ;
OBS_224:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(224),clk=>clk_s,reset =>reset_s, enable_in =>en224,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en225) ;
OBS_225:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(225),clk=>clk_s,reset =>reset_s, enable_in =>en225,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en226) ;
OBS_226:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(226),clk=>clk_s,reset =>reset_s, enable_in =>en226,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en227) ;
OBS_227:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(227),clk=>clk_s,reset =>reset_s, enable_in =>en227,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en228) ;
OBS_228:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(228),clk=>clk_s,reset =>reset_s, enable_in =>en228,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en229) ;
OBS_229:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(229),clk=>clk_s,reset =>reset_s, enable_in =>en229,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en230) ;
OBS_230:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(230),clk=>clk_s,reset =>reset_s, enable_in =>en230,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en231) ;
OBS_231:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(231),clk=>clk_s,reset =>reset_s, enable_in =>en231,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en232) ;
OBS_232:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(232),clk=>clk_s,reset =>reset_s, enable_in =>en232,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en233) ;
OBS_233:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(233),clk=>clk_s,reset =>reset_s, enable_in =>en233,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en234) ;
OBS_234:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(234),clk=>clk_s,reset =>reset_s, enable_in =>en234,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en235) ;
OBS_235:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(235),clk=>clk_s,reset =>reset_s, enable_in =>en235,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en236) ;
OBS_236:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(236),clk=>clk_s,reset =>reset_s, enable_in =>en236,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en237) ;
OBS_237:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(237),clk=>clk_s,reset =>reset_s, enable_in =>en237,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en238) ;
OBS_238:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(238),clk=>clk_s,reset =>reset_s, enable_in =>en238,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en239) ;
OBS_239:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(239),clk=>clk_s,reset =>reset_s, enable_in =>en239,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en240) ;
OBS_240:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(240),clk=>clk_s,reset =>reset_s, enable_in =>en240,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en241) ;
OBS_241:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(241),clk=>clk_s,reset =>reset_s, enable_in =>en241,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en242) ;
OBS_242:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(242),clk=>clk_s,reset =>reset_s, enable_in =>en242,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en243) ;
OBS_243:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(243),clk=>clk_s,reset =>reset_s, enable_in =>en243,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en244) ;
OBS_244:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(244),clk=>clk_s,reset =>reset_s, enable_in =>en244,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en245) ;
OBS_245:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(245),clk=>clk_s,reset =>reset_s, enable_in =>en245,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en246) ;
OBS_246:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(246),clk=>clk_s,reset =>reset_s, enable_in =>en246,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en247) ;
OBS_247:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(247),clk=>clk_s,reset =>reset_s, enable_in =>en247,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en248) ;
OBS_248:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(248),clk=>clk_s,reset =>reset_s, enable_in =>en248,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en249) ;
OBS_249:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(249),clk=>clk_s,reset =>reset_s, enable_in =>en249,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en250) ;
OBS_250:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(250),clk=>clk_s,reset =>reset_s, enable_in =>en250,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en251) ;
OBS_251:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(251),clk=>clk_s,reset =>reset_s, enable_in =>en251,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en252) ;
OBS_252:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(252),clk=>clk_s,reset =>reset_s, enable_in =>en252,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en253) ;
OBS_253:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(253),clk=>clk_s,reset =>reset_s, enable_in =>en253,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en254) ;
OBS_254:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(254),clk=>clk_s,reset =>reset_s, enable_in =>en254,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en255) ;
OBS_255:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(255),clk=>clk_s,reset =>reset_s, enable_in =>en255,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en256) ;
OBS_256:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(256),clk=>clk_s,reset =>reset_s, enable_in =>en256,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en257) ;
OBS_257:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(257),clk=>clk_s,reset =>reset_s, enable_in =>en257,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en258) ;
OBS_258:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(258),clk=>clk_s,reset =>reset_s, enable_in =>en258,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en259) ;
OBS_259:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(259),clk=>clk_s,reset =>reset_s, enable_in =>en259,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en260) ;
OBS_260:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(260),clk=>clk_s,reset =>reset_s, enable_in =>en260,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en261) ;
OBS_261:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(261),clk=>clk_s,reset =>reset_s, enable_in =>en261,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en262) ;
OBS_262:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(262),clk=>clk_s,reset =>reset_s, enable_in =>en262,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en263) ;
OBS_263:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(263),clk=>clk_s,reset =>reset_s, enable_in =>en263,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en264) ;
OBS_264:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(264),clk=>clk_s,reset =>reset_s, enable_in =>en264,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en265) ;
OBS_265:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(265),clk=>clk_s,reset =>reset_s, enable_in =>en265,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en266) ;
OBS_266:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(266),clk=>clk_s,reset =>reset_s, enable_in =>en266,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en267) ;
OBS_267:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(267),clk=>clk_s,reset =>reset_s, enable_in =>en267,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en268) ;
OBS_268:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(268),clk=>clk_s,reset =>reset_s, enable_in =>en268,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en269) ;
OBS_269:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(269),clk=>clk_s,reset =>reset_s, enable_in =>en269,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en270) ;
OBS_270:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(270),clk=>clk_s,reset =>reset_s, enable_in =>en270,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en271) ;
OBS_271:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(271),clk=>clk_s,reset =>reset_s, enable_in =>en271,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en272) ;
OBS_272:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(272),clk=>clk_s,reset =>reset_s, enable_in =>en272,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en273) ;
OBS_273:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(273),clk=>clk_s,reset =>reset_s, enable_in =>en273,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en274) ;
OBS_274:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(274),clk=>clk_s,reset =>reset_s, enable_in =>en274,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en275) ;
OBS_275:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(275),clk=>clk_s,reset =>reset_s, enable_in =>en275,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en276) ;
OBS_276:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(276),clk=>clk_s,reset =>reset_s, enable_in =>en276,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en277) ;
OBS_277:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(277),clk=>clk_s,reset =>reset_s, enable_in =>en277,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en278) ;
OBS_278:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(278),clk=>clk_s,reset =>reset_s, enable_in =>en278,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en279) ;
OBS_279:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(279),clk=>clk_s,reset =>reset_s, enable_in =>en279,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en280) ;
OBS_280:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(280),clk=>clk_s,reset =>reset_s, enable_in =>en280,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en281) ;
OBS_281:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(281),clk=>clk_s,reset =>reset_s, enable_in =>en281,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en282) ;
OBS_282:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(282),clk=>clk_s,reset =>reset_s, enable_in =>en282,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en283) ;
OBS_283:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(283),clk=>clk_s,reset =>reset_s, enable_in =>en283,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en284) ;
OBS_284:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(284),clk=>clk_s,reset =>reset_s, enable_in =>en284,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en285) ;
OBS_285:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(285),clk=>clk_s,reset =>reset_s, enable_in =>en285,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en286) ;
OBS_286:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(286),clk=>clk_s,reset =>reset_s, enable_in =>en286,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en287) ;
OBS_287:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(287),clk=>clk_s,reset =>reset_s, enable_in =>en287,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en288) ;
OBS_288:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(288),clk=>clk_s,reset =>reset_s, enable_in =>en288,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en289) ;
OBS_289:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(289),clk=>clk_s,reset =>reset_s, enable_in =>en289,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en290) ;
OBS_290:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(290),clk=>clk_s,reset =>reset_s, enable_in =>en290,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en291) ;
OBS_291:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(291),clk=>clk_s,reset =>reset_s, enable_in =>en291,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en292) ;
OBS_292:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(292),clk=>clk_s,reset =>reset_s, enable_in =>en292,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en293) ;
OBS_293:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(293),clk=>clk_s,reset =>reset_s, enable_in =>en293,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en294) ;
OBS_294:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(294),clk=>clk_s,reset =>reset_s, enable_in =>en294,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en295) ;
OBS_295:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(295),clk=>clk_s,reset =>reset_s, enable_in =>en295,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en296) ;
OBS_296:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(296),clk=>clk_s,reset =>reset_s, enable_in =>en296,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en297) ;
OBS_297:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(297),clk=>clk_s,reset =>reset_s, enable_in =>en297,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en298) ;
OBS_298:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(298),clk=>clk_s,reset =>reset_s, enable_in =>en298,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en299) ;
OBS_299:  observer GENERIC MAP(observernumber => x"012C")
    PORT MAP ( output=>add(299),clk=>clk_s,reset =>reset_s, enable_in =>en299,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=> next_obs_s) ;

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
  --GPIO(9)<= clk;
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
