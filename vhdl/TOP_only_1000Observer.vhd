










LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_misc.all;

entity top_only_1000Observer is

port (
   CLOCK_50          :in	std_logic;
   KEY					:in 	std_logic_vector(3 downto 0) ;
   GPIO   				:out    std_logic_vector(34 downto 0) 
  );

end entity;

--------------------------------------------------------------------------
------------------      ARCHITECTURE    ---------------------------------
--------------------------------------------------------------------------
architecture rtl of top_only_1000Observer is

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
FOR OBS_300 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_301 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_302 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_303 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_304 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_305 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_306 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_307 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_308 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_309 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_310 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_311 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_312 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_313 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_314 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_315 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_316 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_317 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_318 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_319 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_320 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_321 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_322 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_323 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_324 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_325 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_326 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_327 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_328 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_329 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_330 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_331 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_332 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_333 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_334 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_335 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_336 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_337 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_338 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_339 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_340 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_341 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_342 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_343 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_344 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_345 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_346 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_347 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_348 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_349 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_350 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_351 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_352 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_353 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_354 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_355 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_356 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_357 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_358 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_359 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_360 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_361 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_362 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_363 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_364 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_365 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_366 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_367 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_368 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_369 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_370 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_371 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_372 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_373 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_374 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_375 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_376 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_377 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_378 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_379 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_380 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_381 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_382 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_383 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_384 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_385 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_386 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_387 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_388 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_389 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_390 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_391 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_392 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_393 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_394 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_395 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_396 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_397 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_398 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_399 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_400 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_401 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_402 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_403 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_404 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_405 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_406 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_407 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_408 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_409 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_410 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_411 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_412 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_413 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_414 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_415 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_416 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_417 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_418 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_419 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_420 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_421 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_422 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_423 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_424 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_425 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_426 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_427 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_428 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_429 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_430 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_431 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_432 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_433 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_434 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_435 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_436 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_437 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_438 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_439 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_440 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_441 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_442 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_443 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_444 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_445 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_446 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_447 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_448 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_449 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_450 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_451 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_452 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_453 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_454 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_455 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_456 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_457 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_458 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_459 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_460 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_461 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_462 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_463 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_464 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_465 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_466 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_467 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_468 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_469 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_470 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_471 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_472 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_473 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_474 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_475 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_476 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_477 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_478 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_479 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_480 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_481 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_482 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_483 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_484 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_485 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_486 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_487 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_488 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_489 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_490 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_491 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_492 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_493 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_494 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_495 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_496 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_497 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_498 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_499 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_500 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_501 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_502 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_503 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_504 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_505 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_506 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_507 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_508 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_509 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_510 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_511 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_512 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_513 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_514 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_515 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_516 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_517 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_518 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_519 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_520 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_521 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_522 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_523 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_524 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_525 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_526 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_527 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_528 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_529 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_530 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_531 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_532 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_533 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_534 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_535 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_536 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_537 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_538 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_539 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_540 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_541 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_542 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_543 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_544 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_545 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_546 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_547 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_548 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_549 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_550 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_551 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_552 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_553 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_554 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_555 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_556 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_557 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_558 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_559 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_560 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_561 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_562 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_563 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_564 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_565 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_566 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_567 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_568 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_569 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_570 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_571 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_572 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_573 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_574 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_575 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_576 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_577 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_578 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_579 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_580 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_581 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_582 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_583 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_584 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_585 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_586 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_587 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_588 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_589 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_590 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_591 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_592 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_593 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_594 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_595 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_596 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_597 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_598 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_599 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_600 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_601 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_602 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_603 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_604 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_605 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_606 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_607 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_608 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_609 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_610 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_611 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_612 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_613 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_614 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_615 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_616 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_617 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_618 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_619 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_620 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_621 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_622 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_623 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_624 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_625 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_626 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_627 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_628 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_629 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_630 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_631 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_632 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_633 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_634 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_635 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_636 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_637 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_638 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_639 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_640 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_641 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_642 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_643 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_644 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_645 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_646 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_647 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_648 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_649 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_650 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_651 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_652 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_653 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_654 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_655 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_656 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_657 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_658 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_659 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_660 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_661 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_662 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_663 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_664 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_665 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_666 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_667 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_668 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_669 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_670 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_671 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_672 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_673 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_674 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_675 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_676 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_677 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_678 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_679 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_680 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_681 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_682 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_683 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_684 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_685 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_686 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_687 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_688 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_689 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_690 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_691 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_692 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_693 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_694 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_695 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_696 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_697 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_698 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_699 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_700 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_701 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_702 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_703 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_704 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_705 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_706 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_707 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_708 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_709 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_710 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_711 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_712 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_713 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_714 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_715 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_716 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_717 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_718 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_719 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_720 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_721 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_722 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_723 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_724 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_725 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_726 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_727 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_728 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_729 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_730 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_731 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_732 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_733 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_734 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_735 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_736 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_737 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_738 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_739 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_740 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_741 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_742 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_743 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_744 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_745 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_746 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_747 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_748 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_749 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_750 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_751 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_752 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_753 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_754 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_755 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_756 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_757 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_758 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_759 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_760 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_761 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_762 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_763 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_764 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_765 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_766 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_767 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_768 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_769 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_770 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_771 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_772 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_773 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_774 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_775 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_776 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_777 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_778 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_779 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_780 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_781 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_782 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_783 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_784 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_785 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_786 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_787 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_788 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_789 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_790 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_791 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_792 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_793 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_794 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_795 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_796 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_797 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_798 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_799 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_800 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_801 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_802 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_803 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_804 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_805 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_806 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_807 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_808 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_809 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_810 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_811 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_812 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_813 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_814 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_815 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_816 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_817 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_818 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_819 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_820 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_821 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_822 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_823 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_824 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_825 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_826 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_827 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_828 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_829 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_830 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_831 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_832 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_833 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_834 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_835 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_836 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_837 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_838 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_839 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_840 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_841 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_842 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_843 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_844 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_845 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_846 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_847 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_848 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_849 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_850 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_851 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_852 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_853 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_854 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_855 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_856 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_857 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_858 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_859 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_860 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_861 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_862 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_863 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_864 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_865 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_866 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_867 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_868 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_869 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_870 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_871 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_872 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_873 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_874 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_875 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_876 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_877 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_878 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_879 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_880 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_881 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_882 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_883 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_884 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_885 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_886 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_887 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_888 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_889 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_890 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_891 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_892 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_893 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_894 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_895 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_896 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_897 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_898 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_899 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_900 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_901 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_902 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_903 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_904 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_905 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_906 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_907 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_908 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_909 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_910 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_911 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_912 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_913 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_914 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_915 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_916 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_917 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_918 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_919 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_920 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_921 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_922 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_923 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_924 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_925 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_926 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_927 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_928 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_929 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_930 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_931 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_932 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_933 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_934 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_935 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_936 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_937 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_938 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_939 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_940 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_941 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_942 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_943 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_944 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_945 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_946 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_947 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_948 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_949 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_950 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_951 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_952 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_953 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_954 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_955 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_956 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_957 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_958 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_959 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_960 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_961 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_962 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_963 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_964 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_965 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_966 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_967 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_968 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_969 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_970 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_971 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_972 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_973 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_974 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_975 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_976 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_977 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_978 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_979 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_980 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_981 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_982 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_983 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_984 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_985 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_986 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_987 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_988 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_989 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_990 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_991 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_992 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_993 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_994 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_995 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_996 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_997 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_998 : observer 
  use entity  work.observer(Behavioural);
FOR OBS_999 : observer 
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
signal add: std_logic_vector(999 downto 0):=(others=>'0');
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
signal en300	    :std_logic:='0';
signal en301	    :std_logic:='0';
signal en302	    :std_logic:='0';
signal en303	    :std_logic:='0';
signal en304	    :std_logic:='0';
signal en305	    :std_logic:='0';
signal en306	    :std_logic:='0';
signal en307	    :std_logic:='0';
signal en308	    :std_logic:='0';
signal en309	    :std_logic:='0';
signal en310	    :std_logic:='0';
signal en311	    :std_logic:='0';
signal en312	    :std_logic:='0';
signal en313	    :std_logic:='0';
signal en314	    :std_logic:='0';
signal en315	    :std_logic:='0';
signal en316	    :std_logic:='0';
signal en317	    :std_logic:='0';
signal en318	    :std_logic:='0';
signal en319	    :std_logic:='0';
signal en320	    :std_logic:='0';
signal en321	    :std_logic:='0';
signal en322	    :std_logic:='0';
signal en323	    :std_logic:='0';
signal en324	    :std_logic:='0';
signal en325	    :std_logic:='0';
signal en326	    :std_logic:='0';
signal en327	    :std_logic:='0';
signal en328	    :std_logic:='0';
signal en329	    :std_logic:='0';
signal en330	    :std_logic:='0';
signal en331	    :std_logic:='0';
signal en332	    :std_logic:='0';
signal en333	    :std_logic:='0';
signal en334	    :std_logic:='0';
signal en335	    :std_logic:='0';
signal en336	    :std_logic:='0';
signal en337	    :std_logic:='0';
signal en338	    :std_logic:='0';
signal en339	    :std_logic:='0';
signal en340	    :std_logic:='0';
signal en341	    :std_logic:='0';
signal en342	    :std_logic:='0';
signal en343	    :std_logic:='0';
signal en344	    :std_logic:='0';
signal en345	    :std_logic:='0';
signal en346	    :std_logic:='0';
signal en347	    :std_logic:='0';
signal en348	    :std_logic:='0';
signal en349	    :std_logic:='0';
signal en350	    :std_logic:='0';
signal en351	    :std_logic:='0';
signal en352	    :std_logic:='0';
signal en353	    :std_logic:='0';
signal en354	    :std_logic:='0';
signal en355	    :std_logic:='0';
signal en356	    :std_logic:='0';
signal en357	    :std_logic:='0';
signal en358	    :std_logic:='0';
signal en359	    :std_logic:='0';
signal en360	    :std_logic:='0';
signal en361	    :std_logic:='0';
signal en362	    :std_logic:='0';
signal en363	    :std_logic:='0';
signal en364	    :std_logic:='0';
signal en365	    :std_logic:='0';
signal en366	    :std_logic:='0';
signal en367	    :std_logic:='0';
signal en368	    :std_logic:='0';
signal en369	    :std_logic:='0';
signal en370	    :std_logic:='0';
signal en371	    :std_logic:='0';
signal en372	    :std_logic:='0';
signal en373	    :std_logic:='0';
signal en374	    :std_logic:='0';
signal en375	    :std_logic:='0';
signal en376	    :std_logic:='0';
signal en377	    :std_logic:='0';
signal en378	    :std_logic:='0';
signal en379	    :std_logic:='0';
signal en380	    :std_logic:='0';
signal en381	    :std_logic:='0';
signal en382	    :std_logic:='0';
signal en383	    :std_logic:='0';
signal en384	    :std_logic:='0';
signal en385	    :std_logic:='0';
signal en386	    :std_logic:='0';
signal en387	    :std_logic:='0';
signal en388	    :std_logic:='0';
signal en389	    :std_logic:='0';
signal en390	    :std_logic:='0';
signal en391	    :std_logic:='0';
signal en392	    :std_logic:='0';
signal en393	    :std_logic:='0';
signal en394	    :std_logic:='0';
signal en395	    :std_logic:='0';
signal en396	    :std_logic:='0';
signal en397	    :std_logic:='0';
signal en398	    :std_logic:='0';
signal en399	    :std_logic:='0';
signal en400	    :std_logic:='0';
signal en401	    :std_logic:='0';
signal en402	    :std_logic:='0';
signal en403	    :std_logic:='0';
signal en404	    :std_logic:='0';
signal en405	    :std_logic:='0';
signal en406	    :std_logic:='0';
signal en407	    :std_logic:='0';
signal en408	    :std_logic:='0';
signal en409	    :std_logic:='0';
signal en410	    :std_logic:='0';
signal en411	    :std_logic:='0';
signal en412	    :std_logic:='0';
signal en413	    :std_logic:='0';
signal en414	    :std_logic:='0';
signal en415	    :std_logic:='0';
signal en416	    :std_logic:='0';
signal en417	    :std_logic:='0';
signal en418	    :std_logic:='0';
signal en419	    :std_logic:='0';
signal en420	    :std_logic:='0';
signal en421	    :std_logic:='0';
signal en422	    :std_logic:='0';
signal en423	    :std_logic:='0';
signal en424	    :std_logic:='0';
signal en425	    :std_logic:='0';
signal en426	    :std_logic:='0';
signal en427	    :std_logic:='0';
signal en428	    :std_logic:='0';
signal en429	    :std_logic:='0';
signal en430	    :std_logic:='0';
signal en431	    :std_logic:='0';
signal en432	    :std_logic:='0';
signal en433	    :std_logic:='0';
signal en434	    :std_logic:='0';
signal en435	    :std_logic:='0';
signal en436	    :std_logic:='0';
signal en437	    :std_logic:='0';
signal en438	    :std_logic:='0';
signal en439	    :std_logic:='0';
signal en440	    :std_logic:='0';
signal en441	    :std_logic:='0';
signal en442	    :std_logic:='0';
signal en443	    :std_logic:='0';
signal en444	    :std_logic:='0';
signal en445	    :std_logic:='0';
signal en446	    :std_logic:='0';
signal en447	    :std_logic:='0';
signal en448	    :std_logic:='0';
signal en449	    :std_logic:='0';
signal en450	    :std_logic:='0';
signal en451	    :std_logic:='0';
signal en452	    :std_logic:='0';
signal en453	    :std_logic:='0';
signal en454	    :std_logic:='0';
signal en455	    :std_logic:='0';
signal en456	    :std_logic:='0';
signal en457	    :std_logic:='0';
signal en458	    :std_logic:='0';
signal en459	    :std_logic:='0';
signal en460	    :std_logic:='0';
signal en461	    :std_logic:='0';
signal en462	    :std_logic:='0';
signal en463	    :std_logic:='0';
signal en464	    :std_logic:='0';
signal en465	    :std_logic:='0';
signal en466	    :std_logic:='0';
signal en467	    :std_logic:='0';
signal en468	    :std_logic:='0';
signal en469	    :std_logic:='0';
signal en470	    :std_logic:='0';
signal en471	    :std_logic:='0';
signal en472	    :std_logic:='0';
signal en473	    :std_logic:='0';
signal en474	    :std_logic:='0';
signal en475	    :std_logic:='0';
signal en476	    :std_logic:='0';
signal en477	    :std_logic:='0';
signal en478	    :std_logic:='0';
signal en479	    :std_logic:='0';
signal en480	    :std_logic:='0';
signal en481	    :std_logic:='0';
signal en482	    :std_logic:='0';
signal en483	    :std_logic:='0';
signal en484	    :std_logic:='0';
signal en485	    :std_logic:='0';
signal en486	    :std_logic:='0';
signal en487	    :std_logic:='0';
signal en488	    :std_logic:='0';
signal en489	    :std_logic:='0';
signal en490	    :std_logic:='0';
signal en491	    :std_logic:='0';
signal en492	    :std_logic:='0';
signal en493	    :std_logic:='0';
signal en494	    :std_logic:='0';
signal en495	    :std_logic:='0';
signal en496	    :std_logic:='0';
signal en497	    :std_logic:='0';
signal en498	    :std_logic:='0';
signal en499	    :std_logic:='0';
signal en500	    :std_logic:='0';
signal en501	    :std_logic:='0';
signal en502	    :std_logic:='0';
signal en503	    :std_logic:='0';
signal en504	    :std_logic:='0';
signal en505	    :std_logic:='0';
signal en506	    :std_logic:='0';
signal en507	    :std_logic:='0';
signal en508	    :std_logic:='0';
signal en509	    :std_logic:='0';
signal en510	    :std_logic:='0';
signal en511	    :std_logic:='0';
signal en512	    :std_logic:='0';
signal en513	    :std_logic:='0';
signal en514	    :std_logic:='0';
signal en515	    :std_logic:='0';
signal en516	    :std_logic:='0';
signal en517	    :std_logic:='0';
signal en518	    :std_logic:='0';
signal en519	    :std_logic:='0';
signal en520	    :std_logic:='0';
signal en521	    :std_logic:='0';
signal en522	    :std_logic:='0';
signal en523	    :std_logic:='0';
signal en524	    :std_logic:='0';
signal en525	    :std_logic:='0';
signal en526	    :std_logic:='0';
signal en527	    :std_logic:='0';
signal en528	    :std_logic:='0';
signal en529	    :std_logic:='0';
signal en530	    :std_logic:='0';
signal en531	    :std_logic:='0';
signal en532	    :std_logic:='0';
signal en533	    :std_logic:='0';
signal en534	    :std_logic:='0';
signal en535	    :std_logic:='0';
signal en536	    :std_logic:='0';
signal en537	    :std_logic:='0';
signal en538	    :std_logic:='0';
signal en539	    :std_logic:='0';
signal en540	    :std_logic:='0';
signal en541	    :std_logic:='0';
signal en542	    :std_logic:='0';
signal en543	    :std_logic:='0';
signal en544	    :std_logic:='0';
signal en545	    :std_logic:='0';
signal en546	    :std_logic:='0';
signal en547	    :std_logic:='0';
signal en548	    :std_logic:='0';
signal en549	    :std_logic:='0';
signal en550	    :std_logic:='0';
signal en551	    :std_logic:='0';
signal en552	    :std_logic:='0';
signal en553	    :std_logic:='0';
signal en554	    :std_logic:='0';
signal en555	    :std_logic:='0';
signal en556	    :std_logic:='0';
signal en557	    :std_logic:='0';
signal en558	    :std_logic:='0';
signal en559	    :std_logic:='0';
signal en560	    :std_logic:='0';
signal en561	    :std_logic:='0';
signal en562	    :std_logic:='0';
signal en563	    :std_logic:='0';
signal en564	    :std_logic:='0';
signal en565	    :std_logic:='0';
signal en566	    :std_logic:='0';
signal en567	    :std_logic:='0';
signal en568	    :std_logic:='0';
signal en569	    :std_logic:='0';
signal en570	    :std_logic:='0';
signal en571	    :std_logic:='0';
signal en572	    :std_logic:='0';
signal en573	    :std_logic:='0';
signal en574	    :std_logic:='0';
signal en575	    :std_logic:='0';
signal en576	    :std_logic:='0';
signal en577	    :std_logic:='0';
signal en578	    :std_logic:='0';
signal en579	    :std_logic:='0';
signal en580	    :std_logic:='0';
signal en581	    :std_logic:='0';
signal en582	    :std_logic:='0';
signal en583	    :std_logic:='0';
signal en584	    :std_logic:='0';
signal en585	    :std_logic:='0';
signal en586	    :std_logic:='0';
signal en587	    :std_logic:='0';
signal en588	    :std_logic:='0';
signal en589	    :std_logic:='0';
signal en590	    :std_logic:='0';
signal en591	    :std_logic:='0';
signal en592	    :std_logic:='0';
signal en593	    :std_logic:='0';
signal en594	    :std_logic:='0';
signal en595	    :std_logic:='0';
signal en596	    :std_logic:='0';
signal en597	    :std_logic:='0';
signal en598	    :std_logic:='0';
signal en599	    :std_logic:='0';
signal en600	    :std_logic:='0';
signal en601	    :std_logic:='0';
signal en602	    :std_logic:='0';
signal en603	    :std_logic:='0';
signal en604	    :std_logic:='0';
signal en605	    :std_logic:='0';
signal en606	    :std_logic:='0';
signal en607	    :std_logic:='0';
signal en608	    :std_logic:='0';
signal en609	    :std_logic:='0';
signal en610	    :std_logic:='0';
signal en611	    :std_logic:='0';
signal en612	    :std_logic:='0';
signal en613	    :std_logic:='0';
signal en614	    :std_logic:='0';
signal en615	    :std_logic:='0';
signal en616	    :std_logic:='0';
signal en617	    :std_logic:='0';
signal en618	    :std_logic:='0';
signal en619	    :std_logic:='0';
signal en620	    :std_logic:='0';
signal en621	    :std_logic:='0';
signal en622	    :std_logic:='0';
signal en623	    :std_logic:='0';
signal en624	    :std_logic:='0';
signal en625	    :std_logic:='0';
signal en626	    :std_logic:='0';
signal en627	    :std_logic:='0';
signal en628	    :std_logic:='0';
signal en629	    :std_logic:='0';
signal en630	    :std_logic:='0';
signal en631	    :std_logic:='0';
signal en632	    :std_logic:='0';
signal en633	    :std_logic:='0';
signal en634	    :std_logic:='0';
signal en635	    :std_logic:='0';
signal en636	    :std_logic:='0';
signal en637	    :std_logic:='0';
signal en638	    :std_logic:='0';
signal en639	    :std_logic:='0';
signal en640	    :std_logic:='0';
signal en641	    :std_logic:='0';
signal en642	    :std_logic:='0';
signal en643	    :std_logic:='0';
signal en644	    :std_logic:='0';
signal en645	    :std_logic:='0';
signal en646	    :std_logic:='0';
signal en647	    :std_logic:='0';
signal en648	    :std_logic:='0';
signal en649	    :std_logic:='0';
signal en650	    :std_logic:='0';
signal en651	    :std_logic:='0';
signal en652	    :std_logic:='0';
signal en653	    :std_logic:='0';
signal en654	    :std_logic:='0';
signal en655	    :std_logic:='0';
signal en656	    :std_logic:='0';
signal en657	    :std_logic:='0';
signal en658	    :std_logic:='0';
signal en659	    :std_logic:='0';
signal en660	    :std_logic:='0';
signal en661	    :std_logic:='0';
signal en662	    :std_logic:='0';
signal en663	    :std_logic:='0';
signal en664	    :std_logic:='0';
signal en665	    :std_logic:='0';
signal en666	    :std_logic:='0';
signal en667	    :std_logic:='0';
signal en668	    :std_logic:='0';
signal en669	    :std_logic:='0';
signal en670	    :std_logic:='0';
signal en671	    :std_logic:='0';
signal en672	    :std_logic:='0';
signal en673	    :std_logic:='0';
signal en674	    :std_logic:='0';
signal en675	    :std_logic:='0';
signal en676	    :std_logic:='0';
signal en677	    :std_logic:='0';
signal en678	    :std_logic:='0';
signal en679	    :std_logic:='0';
signal en680	    :std_logic:='0';
signal en681	    :std_logic:='0';
signal en682	    :std_logic:='0';
signal en683	    :std_logic:='0';
signal en684	    :std_logic:='0';
signal en685	    :std_logic:='0';
signal en686	    :std_logic:='0';
signal en687	    :std_logic:='0';
signal en688	    :std_logic:='0';
signal en689	    :std_logic:='0';
signal en690	    :std_logic:='0';
signal en691	    :std_logic:='0';
signal en692	    :std_logic:='0';
signal en693	    :std_logic:='0';
signal en694	    :std_logic:='0';
signal en695	    :std_logic:='0';
signal en696	    :std_logic:='0';
signal en697	    :std_logic:='0';
signal en698	    :std_logic:='0';
signal en699	    :std_logic:='0';
signal en700	    :std_logic:='0';
signal en701	    :std_logic:='0';
signal en702	    :std_logic:='0';
signal en703	    :std_logic:='0';
signal en704	    :std_logic:='0';
signal en705	    :std_logic:='0';
signal en706	    :std_logic:='0';
signal en707	    :std_logic:='0';
signal en708	    :std_logic:='0';
signal en709	    :std_logic:='0';
signal en710	    :std_logic:='0';
signal en711	    :std_logic:='0';
signal en712	    :std_logic:='0';
signal en713	    :std_logic:='0';
signal en714	    :std_logic:='0';
signal en715	    :std_logic:='0';
signal en716	    :std_logic:='0';
signal en717	    :std_logic:='0';
signal en718	    :std_logic:='0';
signal en719	    :std_logic:='0';
signal en720	    :std_logic:='0';
signal en721	    :std_logic:='0';
signal en722	    :std_logic:='0';
signal en723	    :std_logic:='0';
signal en724	    :std_logic:='0';
signal en725	    :std_logic:='0';
signal en726	    :std_logic:='0';
signal en727	    :std_logic:='0';
signal en728	    :std_logic:='0';
signal en729	    :std_logic:='0';
signal en730	    :std_logic:='0';
signal en731	    :std_logic:='0';
signal en732	    :std_logic:='0';
signal en733	    :std_logic:='0';
signal en734	    :std_logic:='0';
signal en735	    :std_logic:='0';
signal en736	    :std_logic:='0';
signal en737	    :std_logic:='0';
signal en738	    :std_logic:='0';
signal en739	    :std_logic:='0';
signal en740	    :std_logic:='0';
signal en741	    :std_logic:='0';
signal en742	    :std_logic:='0';
signal en743	    :std_logic:='0';
signal en744	    :std_logic:='0';
signal en745	    :std_logic:='0';
signal en746	    :std_logic:='0';
signal en747	    :std_logic:='0';
signal en748	    :std_logic:='0';
signal en749	    :std_logic:='0';
signal en750	    :std_logic:='0';
signal en751	    :std_logic:='0';
signal en752	    :std_logic:='0';
signal en753	    :std_logic:='0';
signal en754	    :std_logic:='0';
signal en755	    :std_logic:='0';
signal en756	    :std_logic:='0';
signal en757	    :std_logic:='0';
signal en758	    :std_logic:='0';
signal en759	    :std_logic:='0';
signal en760	    :std_logic:='0';
signal en761	    :std_logic:='0';
signal en762	    :std_logic:='0';
signal en763	    :std_logic:='0';
signal en764	    :std_logic:='0';
signal en765	    :std_logic:='0';
signal en766	    :std_logic:='0';
signal en767	    :std_logic:='0';
signal en768	    :std_logic:='0';
signal en769	    :std_logic:='0';
signal en770	    :std_logic:='0';
signal en771	    :std_logic:='0';
signal en772	    :std_logic:='0';
signal en773	    :std_logic:='0';
signal en774	    :std_logic:='0';
signal en775	    :std_logic:='0';
signal en776	    :std_logic:='0';
signal en777	    :std_logic:='0';
signal en778	    :std_logic:='0';
signal en779	    :std_logic:='0';
signal en780	    :std_logic:='0';
signal en781	    :std_logic:='0';
signal en782	    :std_logic:='0';
signal en783	    :std_logic:='0';
signal en784	    :std_logic:='0';
signal en785	    :std_logic:='0';
signal en786	    :std_logic:='0';
signal en787	    :std_logic:='0';
signal en788	    :std_logic:='0';
signal en789	    :std_logic:='0';
signal en790	    :std_logic:='0';
signal en791	    :std_logic:='0';
signal en792	    :std_logic:='0';
signal en793	    :std_logic:='0';
signal en794	    :std_logic:='0';
signal en795	    :std_logic:='0';
signal en796	    :std_logic:='0';
signal en797	    :std_logic:='0';
signal en798	    :std_logic:='0';
signal en799	    :std_logic:='0';
signal en800	    :std_logic:='0';
signal en801	    :std_logic:='0';
signal en802	    :std_logic:='0';
signal en803	    :std_logic:='0';
signal en804	    :std_logic:='0';
signal en805	    :std_logic:='0';
signal en806	    :std_logic:='0';
signal en807	    :std_logic:='0';
signal en808	    :std_logic:='0';
signal en809	    :std_logic:='0';
signal en810	    :std_logic:='0';
signal en811	    :std_logic:='0';
signal en812	    :std_logic:='0';
signal en813	    :std_logic:='0';
signal en814	    :std_logic:='0';
signal en815	    :std_logic:='0';
signal en816	    :std_logic:='0';
signal en817	    :std_logic:='0';
signal en818	    :std_logic:='0';
signal en819	    :std_logic:='0';
signal en820	    :std_logic:='0';
signal en821	    :std_logic:='0';
signal en822	    :std_logic:='0';
signal en823	    :std_logic:='0';
signal en824	    :std_logic:='0';
signal en825	    :std_logic:='0';
signal en826	    :std_logic:='0';
signal en827	    :std_logic:='0';
signal en828	    :std_logic:='0';
signal en829	    :std_logic:='0';
signal en830	    :std_logic:='0';
signal en831	    :std_logic:='0';
signal en832	    :std_logic:='0';
signal en833	    :std_logic:='0';
signal en834	    :std_logic:='0';
signal en835	    :std_logic:='0';
signal en836	    :std_logic:='0';
signal en837	    :std_logic:='0';
signal en838	    :std_logic:='0';
signal en839	    :std_logic:='0';
signal en840	    :std_logic:='0';
signal en841	    :std_logic:='0';
signal en842	    :std_logic:='0';
signal en843	    :std_logic:='0';
signal en844	    :std_logic:='0';
signal en845	    :std_logic:='0';
signal en846	    :std_logic:='0';
signal en847	    :std_logic:='0';
signal en848	    :std_logic:='0';
signal en849	    :std_logic:='0';
signal en850	    :std_logic:='0';
signal en851	    :std_logic:='0';
signal en852	    :std_logic:='0';
signal en853	    :std_logic:='0';
signal en854	    :std_logic:='0';
signal en855	    :std_logic:='0';
signal en856	    :std_logic:='0';
signal en857	    :std_logic:='0';
signal en858	    :std_logic:='0';
signal en859	    :std_logic:='0';
signal en860	    :std_logic:='0';
signal en861	    :std_logic:='0';
signal en862	    :std_logic:='0';
signal en863	    :std_logic:='0';
signal en864	    :std_logic:='0';
signal en865	    :std_logic:='0';
signal en866	    :std_logic:='0';
signal en867	    :std_logic:='0';
signal en868	    :std_logic:='0';
signal en869	    :std_logic:='0';
signal en870	    :std_logic:='0';
signal en871	    :std_logic:='0';
signal en872	    :std_logic:='0';
signal en873	    :std_logic:='0';
signal en874	    :std_logic:='0';
signal en875	    :std_logic:='0';
signal en876	    :std_logic:='0';
signal en877	    :std_logic:='0';
signal en878	    :std_logic:='0';
signal en879	    :std_logic:='0';
signal en880	    :std_logic:='0';
signal en881	    :std_logic:='0';
signal en882	    :std_logic:='0';
signal en883	    :std_logic:='0';
signal en884	    :std_logic:='0';
signal en885	    :std_logic:='0';
signal en886	    :std_logic:='0';
signal en887	    :std_logic:='0';
signal en888	    :std_logic:='0';
signal en889	    :std_logic:='0';
signal en890	    :std_logic:='0';
signal en891	    :std_logic:='0';
signal en892	    :std_logic:='0';
signal en893	    :std_logic:='0';
signal en894	    :std_logic:='0';
signal en895	    :std_logic:='0';
signal en896	    :std_logic:='0';
signal en897	    :std_logic:='0';
signal en898	    :std_logic:='0';
signal en899	    :std_logic:='0';
signal en900	    :std_logic:='0';
signal en901	    :std_logic:='0';
signal en902	    :std_logic:='0';
signal en903	    :std_logic:='0';
signal en904	    :std_logic:='0';
signal en905	    :std_logic:='0';
signal en906	    :std_logic:='0';
signal en907	    :std_logic:='0';
signal en908	    :std_logic:='0';
signal en909	    :std_logic:='0';
signal en910	    :std_logic:='0';
signal en911	    :std_logic:='0';
signal en912	    :std_logic:='0';
signal en913	    :std_logic:='0';
signal en914	    :std_logic:='0';
signal en915	    :std_logic:='0';
signal en916	    :std_logic:='0';
signal en917	    :std_logic:='0';
signal en918	    :std_logic:='0';
signal en919	    :std_logic:='0';
signal en920	    :std_logic:='0';
signal en921	    :std_logic:='0';
signal en922	    :std_logic:='0';
signal en923	    :std_logic:='0';
signal en924	    :std_logic:='0';
signal en925	    :std_logic:='0';
signal en926	    :std_logic:='0';
signal en927	    :std_logic:='0';
signal en928	    :std_logic:='0';
signal en929	    :std_logic:='0';
signal en930	    :std_logic:='0';
signal en931	    :std_logic:='0';
signal en932	    :std_logic:='0';
signal en933	    :std_logic:='0';
signal en934	    :std_logic:='0';
signal en935	    :std_logic:='0';
signal en936	    :std_logic:='0';
signal en937	    :std_logic:='0';
signal en938	    :std_logic:='0';
signal en939	    :std_logic:='0';
signal en940	    :std_logic:='0';
signal en941	    :std_logic:='0';
signal en942	    :std_logic:='0';
signal en943	    :std_logic:='0';
signal en944	    :std_logic:='0';
signal en945	    :std_logic:='0';
signal en946	    :std_logic:='0';
signal en947	    :std_logic:='0';
signal en948	    :std_logic:='0';
signal en949	    :std_logic:='0';
signal en950	    :std_logic:='0';
signal en951	    :std_logic:='0';
signal en952	    :std_logic:='0';
signal en953	    :std_logic:='0';
signal en954	    :std_logic:='0';
signal en955	    :std_logic:='0';
signal en956	    :std_logic:='0';
signal en957	    :std_logic:='0';
signal en958	    :std_logic:='0';
signal en959	    :std_logic:='0';
signal en960	    :std_logic:='0';
signal en961	    :std_logic:='0';
signal en962	    :std_logic:='0';
signal en963	    :std_logic:='0';
signal en964	    :std_logic:='0';
signal en965	    :std_logic:='0';
signal en966	    :std_logic:='0';
signal en967	    :std_logic:='0';
signal en968	    :std_logic:='0';
signal en969	    :std_logic:='0';
signal en970	    :std_logic:='0';
signal en971	    :std_logic:='0';
signal en972	    :std_logic:='0';
signal en973	    :std_logic:='0';
signal en974	    :std_logic:='0';
signal en975	    :std_logic:='0';
signal en976	    :std_logic:='0';
signal en977	    :std_logic:='0';
signal en978	    :std_logic:='0';
signal en979	    :std_logic:='0';
signal en980	    :std_logic:='0';
signal en981	    :std_logic:='0';
signal en982	    :std_logic:='0';
signal en983	    :std_logic:='0';
signal en984	    :std_logic:='0';
signal en985	    :std_logic:='0';
signal en986	    :std_logic:='0';
signal en987	    :std_logic:='0';
signal en988	    :std_logic:='0';
signal en989	    :std_logic:='0';
signal en990	    :std_logic:='0';
signal en991	    :std_logic:='0';
signal en992	    :std_logic:='0';
signal en993	    :std_logic:='0';
signal en994	    :std_logic:='0';
signal en995	    :std_logic:='0';
signal en996	    :std_logic:='0';
signal en997	    :std_logic:='0';
signal en998	    :std_logic:='0';
signal en999	    :std_logic:='0';

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
OBS_0:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(0),clk=>clk_s,reset =>reset_s, enable_in =>enable_s,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en1) ;
OBS_1:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(1),clk=>clk_s,reset =>reset_s, enable_in =>en1,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en2) ;
OBS_2:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(2),clk=>clk_s,reset =>reset_s, enable_in =>en2,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en3) ;
OBS_3:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(3),clk=>clk_s,reset =>reset_s, enable_in =>en3,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en4) ;
OBS_4:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(4),clk=>clk_s,reset =>reset_s, enable_in =>en4,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en5) ;
OBS_5:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(5),clk=>clk_s,reset =>reset_s, enable_in =>en5,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en6) ;
OBS_6:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(6),clk=>clk_s,reset =>reset_s, enable_in =>en6,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en7) ;
OBS_7:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(7),clk=>clk_s,reset =>reset_s, enable_in =>en7,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en8) ;
OBS_8:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(8),clk=>clk_s,reset =>reset_s, enable_in =>en8,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en9) ;
OBS_9:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(9),clk=>clk_s,reset =>reset_s, enable_in =>en9,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en10) ;
OBS_10:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(10),clk=>clk_s,reset =>reset_s, enable_in =>en10,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en11) ;
OBS_11:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(11),clk=>clk_s,reset =>reset_s, enable_in =>en11,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en12) ;
OBS_12:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(12),clk=>clk_s,reset =>reset_s, enable_in =>en12,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en13) ;
OBS_13:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(13),clk=>clk_s,reset =>reset_s, enable_in =>en13,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en14) ;
OBS_14:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(14),clk=>clk_s,reset =>reset_s, enable_in =>en14,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en15) ;
OBS_15:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(15),clk=>clk_s,reset =>reset_s, enable_in =>en15,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en16) ;
OBS_16:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(16),clk=>clk_s,reset =>reset_s, enable_in =>en16,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en17) ;
OBS_17:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(17),clk=>clk_s,reset =>reset_s, enable_in =>en17,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en18) ;
OBS_18:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(18),clk=>clk_s,reset =>reset_s, enable_in =>en18,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en19) ;
OBS_19:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(19),clk=>clk_s,reset =>reset_s, enable_in =>en19,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en20) ;
OBS_20:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(20),clk=>clk_s,reset =>reset_s, enable_in =>en20,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en21) ;
OBS_21:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(21),clk=>clk_s,reset =>reset_s, enable_in =>en21,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en22) ;
OBS_22:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(22),clk=>clk_s,reset =>reset_s, enable_in =>en22,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en23) ;
OBS_23:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(23),clk=>clk_s,reset =>reset_s, enable_in =>en23,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en24) ;
OBS_24:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(24),clk=>clk_s,reset =>reset_s, enable_in =>en24,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en25) ;
OBS_25:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(25),clk=>clk_s,reset =>reset_s, enable_in =>en25,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en26) ;
OBS_26:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(26),clk=>clk_s,reset =>reset_s, enable_in =>en26,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en27) ;
OBS_27:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(27),clk=>clk_s,reset =>reset_s, enable_in =>en27,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en28) ;
OBS_28:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(28),clk=>clk_s,reset =>reset_s, enable_in =>en28,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en29) ;
OBS_29:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(29),clk=>clk_s,reset =>reset_s, enable_in =>en29,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en30) ;
OBS_30:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(30),clk=>clk_s,reset =>reset_s, enable_in =>en30,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en31) ;
OBS_31:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(31),clk=>clk_s,reset =>reset_s, enable_in =>en31,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en32) ;
OBS_32:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(32),clk=>clk_s,reset =>reset_s, enable_in =>en32,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en33) ;
OBS_33:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(33),clk=>clk_s,reset =>reset_s, enable_in =>en33,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en34) ;
OBS_34:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(34),clk=>clk_s,reset =>reset_s, enable_in =>en34,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en35) ;
OBS_35:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(35),clk=>clk_s,reset =>reset_s, enable_in =>en35,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en36) ;
OBS_36:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(36),clk=>clk_s,reset =>reset_s, enable_in =>en36,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en37) ;
OBS_37:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(37),clk=>clk_s,reset =>reset_s, enable_in =>en37,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en38) ;
OBS_38:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(38),clk=>clk_s,reset =>reset_s, enable_in =>en38,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en39) ;
OBS_39:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(39),clk=>clk_s,reset =>reset_s, enable_in =>en39,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en40) ;
OBS_40:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(40),clk=>clk_s,reset =>reset_s, enable_in =>en40,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en41) ;
OBS_41:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(41),clk=>clk_s,reset =>reset_s, enable_in =>en41,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en42) ;
OBS_42:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(42),clk=>clk_s,reset =>reset_s, enable_in =>en42,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en43) ;
OBS_43:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(43),clk=>clk_s,reset =>reset_s, enable_in =>en43,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en44) ;
OBS_44:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(44),clk=>clk_s,reset =>reset_s, enable_in =>en44,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en45) ;
OBS_45:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(45),clk=>clk_s,reset =>reset_s, enable_in =>en45,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en46) ;
OBS_46:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(46),clk=>clk_s,reset =>reset_s, enable_in =>en46,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en47) ;
OBS_47:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(47),clk=>clk_s,reset =>reset_s, enable_in =>en47,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en48) ;
OBS_48:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(48),clk=>clk_s,reset =>reset_s, enable_in =>en48,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en49) ;
OBS_49:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(49),clk=>clk_s,reset =>reset_s, enable_in =>en49,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en50) ;
OBS_50:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(50),clk=>clk_s,reset =>reset_s, enable_in =>en50,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en51) ;
OBS_51:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(51),clk=>clk_s,reset =>reset_s, enable_in =>en51,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en52) ;
OBS_52:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(52),clk=>clk_s,reset =>reset_s, enable_in =>en52,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en53) ;
OBS_53:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(53),clk=>clk_s,reset =>reset_s, enable_in =>en53,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en54) ;
OBS_54:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(54),clk=>clk_s,reset =>reset_s, enable_in =>en54,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en55) ;
OBS_55:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(55),clk=>clk_s,reset =>reset_s, enable_in =>en55,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en56) ;
OBS_56:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(56),clk=>clk_s,reset =>reset_s, enable_in =>en56,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en57) ;
OBS_57:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(57),clk=>clk_s,reset =>reset_s, enable_in =>en57,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en58) ;
OBS_58:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(58),clk=>clk_s,reset =>reset_s, enable_in =>en58,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en59) ;
OBS_59:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(59),clk=>clk_s,reset =>reset_s, enable_in =>en59,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en60) ;
OBS_60:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(60),clk=>clk_s,reset =>reset_s, enable_in =>en60,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en61) ;
OBS_61:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(61),clk=>clk_s,reset =>reset_s, enable_in =>en61,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en62) ;
OBS_62:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(62),clk=>clk_s,reset =>reset_s, enable_in =>en62,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en63) ;
OBS_63:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(63),clk=>clk_s,reset =>reset_s, enable_in =>en63,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en64) ;
OBS_64:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(64),clk=>clk_s,reset =>reset_s, enable_in =>en64,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en65) ;
OBS_65:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(65),clk=>clk_s,reset =>reset_s, enable_in =>en65,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en66) ;
OBS_66:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(66),clk=>clk_s,reset =>reset_s, enable_in =>en66,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en67) ;
OBS_67:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(67),clk=>clk_s,reset =>reset_s, enable_in =>en67,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en68) ;
OBS_68:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(68),clk=>clk_s,reset =>reset_s, enable_in =>en68,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en69) ;
OBS_69:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(69),clk=>clk_s,reset =>reset_s, enable_in =>en69,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en70) ;
OBS_70:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(70),clk=>clk_s,reset =>reset_s, enable_in =>en70,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en71) ;
OBS_71:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(71),clk=>clk_s,reset =>reset_s, enable_in =>en71,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en72) ;
OBS_72:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(72),clk=>clk_s,reset =>reset_s, enable_in =>en72,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en73) ;
OBS_73:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(73),clk=>clk_s,reset =>reset_s, enable_in =>en73,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en74) ;
OBS_74:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(74),clk=>clk_s,reset =>reset_s, enable_in =>en74,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en75) ;
OBS_75:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(75),clk=>clk_s,reset =>reset_s, enable_in =>en75,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en76) ;
OBS_76:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(76),clk=>clk_s,reset =>reset_s, enable_in =>en76,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en77) ;
OBS_77:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(77),clk=>clk_s,reset =>reset_s, enable_in =>en77,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en78) ;
OBS_78:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(78),clk=>clk_s,reset =>reset_s, enable_in =>en78,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en79) ;
OBS_79:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(79),clk=>clk_s,reset =>reset_s, enable_in =>en79,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en80) ;
OBS_80:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(80),clk=>clk_s,reset =>reset_s, enable_in =>en80,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en81) ;
OBS_81:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(81),clk=>clk_s,reset =>reset_s, enable_in =>en81,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en82) ;
OBS_82:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(82),clk=>clk_s,reset =>reset_s, enable_in =>en82,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en83) ;
OBS_83:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(83),clk=>clk_s,reset =>reset_s, enable_in =>en83,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en84) ;
OBS_84:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(84),clk=>clk_s,reset =>reset_s, enable_in =>en84,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en85) ;
OBS_85:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(85),clk=>clk_s,reset =>reset_s, enable_in =>en85,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en86) ;
OBS_86:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(86),clk=>clk_s,reset =>reset_s, enable_in =>en86,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en87) ;
OBS_87:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(87),clk=>clk_s,reset =>reset_s, enable_in =>en87,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en88) ;
OBS_88:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(88),clk=>clk_s,reset =>reset_s, enable_in =>en88,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en89) ;
OBS_89:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(89),clk=>clk_s,reset =>reset_s, enable_in =>en89,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en90) ;
OBS_90:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(90),clk=>clk_s,reset =>reset_s, enable_in =>en90,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en91) ;
OBS_91:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(91),clk=>clk_s,reset =>reset_s, enable_in =>en91,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en92) ;
OBS_92:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(92),clk=>clk_s,reset =>reset_s, enable_in =>en92,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en93) ;
OBS_93:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(93),clk=>clk_s,reset =>reset_s, enable_in =>en93,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en94) ;
OBS_94:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(94),clk=>clk_s,reset =>reset_s, enable_in =>en94,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en95) ;
OBS_95:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(95),clk=>clk_s,reset =>reset_s, enable_in =>en95,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en96) ;
OBS_96:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(96),clk=>clk_s,reset =>reset_s, enable_in =>en96,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en97) ;
OBS_97:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(97),clk=>clk_s,reset =>reset_s, enable_in =>en97,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en98) ;
OBS_98:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(98),clk=>clk_s,reset =>reset_s, enable_in =>en98,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en99) ;
OBS_99:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(99),clk=>clk_s,reset =>reset_s, enable_in =>en99,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en100) ;
OBS_100:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(100),clk=>clk_s,reset =>reset_s, enable_in =>en100,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en101) ;
OBS_101:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(101),clk=>clk_s,reset =>reset_s, enable_in =>en101,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en102) ;
OBS_102:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(102),clk=>clk_s,reset =>reset_s, enable_in =>en102,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en103) ;
OBS_103:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(103),clk=>clk_s,reset =>reset_s, enable_in =>en103,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en104) ;
OBS_104:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(104),clk=>clk_s,reset =>reset_s, enable_in =>en104,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en105) ;
OBS_105:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(105),clk=>clk_s,reset =>reset_s, enable_in =>en105,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en106) ;
OBS_106:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(106),clk=>clk_s,reset =>reset_s, enable_in =>en106,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en107) ;
OBS_107:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(107),clk=>clk_s,reset =>reset_s, enable_in =>en107,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en108) ;
OBS_108:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(108),clk=>clk_s,reset =>reset_s, enable_in =>en108,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en109) ;
OBS_109:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(109),clk=>clk_s,reset =>reset_s, enable_in =>en109,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en110) ;
OBS_110:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(110),clk=>clk_s,reset =>reset_s, enable_in =>en110,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en111) ;
OBS_111:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(111),clk=>clk_s,reset =>reset_s, enable_in =>en111,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en112) ;
OBS_112:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(112),clk=>clk_s,reset =>reset_s, enable_in =>en112,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en113) ;
OBS_113:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(113),clk=>clk_s,reset =>reset_s, enable_in =>en113,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en114) ;
OBS_114:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(114),clk=>clk_s,reset =>reset_s, enable_in =>en114,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en115) ;
OBS_115:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(115),clk=>clk_s,reset =>reset_s, enable_in =>en115,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en116) ;
OBS_116:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(116),clk=>clk_s,reset =>reset_s, enable_in =>en116,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en117) ;
OBS_117:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(117),clk=>clk_s,reset =>reset_s, enable_in =>en117,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en118) ;
OBS_118:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(118),clk=>clk_s,reset =>reset_s, enable_in =>en118,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en119) ;
OBS_119:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(119),clk=>clk_s,reset =>reset_s, enable_in =>en119,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en120) ;
OBS_120:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(120),clk=>clk_s,reset =>reset_s, enable_in =>en120,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en121) ;
OBS_121:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(121),clk=>clk_s,reset =>reset_s, enable_in =>en121,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en122) ;
OBS_122:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(122),clk=>clk_s,reset =>reset_s, enable_in =>en122,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en123) ;
OBS_123:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(123),clk=>clk_s,reset =>reset_s, enable_in =>en123,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en124) ;
OBS_124:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(124),clk=>clk_s,reset =>reset_s, enable_in =>en124,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en125) ;
OBS_125:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(125),clk=>clk_s,reset =>reset_s, enable_in =>en125,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en126) ;
OBS_126:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(126),clk=>clk_s,reset =>reset_s, enable_in =>en126,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en127) ;
OBS_127:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(127),clk=>clk_s,reset =>reset_s, enable_in =>en127,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en128) ;
OBS_128:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(128),clk=>clk_s,reset =>reset_s, enable_in =>en128,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en129) ;
OBS_129:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(129),clk=>clk_s,reset =>reset_s, enable_in =>en129,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en130) ;
OBS_130:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(130),clk=>clk_s,reset =>reset_s, enable_in =>en130,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en131) ;
OBS_131:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(131),clk=>clk_s,reset =>reset_s, enable_in =>en131,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en132) ;
OBS_132:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(132),clk=>clk_s,reset =>reset_s, enable_in =>en132,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en133) ;
OBS_133:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(133),clk=>clk_s,reset =>reset_s, enable_in =>en133,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en134) ;
OBS_134:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(134),clk=>clk_s,reset =>reset_s, enable_in =>en134,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en135) ;
OBS_135:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(135),clk=>clk_s,reset =>reset_s, enable_in =>en135,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en136) ;
OBS_136:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(136),clk=>clk_s,reset =>reset_s, enable_in =>en136,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en137) ;
OBS_137:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(137),clk=>clk_s,reset =>reset_s, enable_in =>en137,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en138) ;
OBS_138:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(138),clk=>clk_s,reset =>reset_s, enable_in =>en138,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en139) ;
OBS_139:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(139),clk=>clk_s,reset =>reset_s, enable_in =>en139,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en140) ;
OBS_140:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(140),clk=>clk_s,reset =>reset_s, enable_in =>en140,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en141) ;
OBS_141:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(141),clk=>clk_s,reset =>reset_s, enable_in =>en141,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en142) ;
OBS_142:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(142),clk=>clk_s,reset =>reset_s, enable_in =>en142,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en143) ;
OBS_143:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(143),clk=>clk_s,reset =>reset_s, enable_in =>en143,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en144) ;
OBS_144:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(144),clk=>clk_s,reset =>reset_s, enable_in =>en144,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en145) ;
OBS_145:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(145),clk=>clk_s,reset =>reset_s, enable_in =>en145,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en146) ;
OBS_146:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(146),clk=>clk_s,reset =>reset_s, enable_in =>en146,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en147) ;
OBS_147:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(147),clk=>clk_s,reset =>reset_s, enable_in =>en147,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en148) ;
OBS_148:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(148),clk=>clk_s,reset =>reset_s, enable_in =>en148,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en149) ;
OBS_149:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(149),clk=>clk_s,reset =>reset_s, enable_in =>en149,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en150) ;
OBS_150:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(150),clk=>clk_s,reset =>reset_s, enable_in =>en150,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en151) ;
OBS_151:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(151),clk=>clk_s,reset =>reset_s, enable_in =>en151,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en152) ;
OBS_152:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(152),clk=>clk_s,reset =>reset_s, enable_in =>en152,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en153) ;
OBS_153:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(153),clk=>clk_s,reset =>reset_s, enable_in =>en153,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en154) ;
OBS_154:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(154),clk=>clk_s,reset =>reset_s, enable_in =>en154,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en155) ;
OBS_155:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(155),clk=>clk_s,reset =>reset_s, enable_in =>en155,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en156) ;
OBS_156:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(156),clk=>clk_s,reset =>reset_s, enable_in =>en156,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en157) ;
OBS_157:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(157),clk=>clk_s,reset =>reset_s, enable_in =>en157,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en158) ;
OBS_158:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(158),clk=>clk_s,reset =>reset_s, enable_in =>en158,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en159) ;
OBS_159:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(159),clk=>clk_s,reset =>reset_s, enable_in =>en159,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en160) ;
OBS_160:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(160),clk=>clk_s,reset =>reset_s, enable_in =>en160,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en161) ;
OBS_161:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(161),clk=>clk_s,reset =>reset_s, enable_in =>en161,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en162) ;
OBS_162:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(162),clk=>clk_s,reset =>reset_s, enable_in =>en162,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en163) ;
OBS_163:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(163),clk=>clk_s,reset =>reset_s, enable_in =>en163,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en164) ;
OBS_164:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(164),clk=>clk_s,reset =>reset_s, enable_in =>en164,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en165) ;
OBS_165:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(165),clk=>clk_s,reset =>reset_s, enable_in =>en165,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en166) ;
OBS_166:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(166),clk=>clk_s,reset =>reset_s, enable_in =>en166,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en167) ;
OBS_167:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(167),clk=>clk_s,reset =>reset_s, enable_in =>en167,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en168) ;
OBS_168:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(168),clk=>clk_s,reset =>reset_s, enable_in =>en168,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en169) ;
OBS_169:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(169),clk=>clk_s,reset =>reset_s, enable_in =>en169,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en170) ;
OBS_170:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(170),clk=>clk_s,reset =>reset_s, enable_in =>en170,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en171) ;
OBS_171:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(171),clk=>clk_s,reset =>reset_s, enable_in =>en171,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en172) ;
OBS_172:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(172),clk=>clk_s,reset =>reset_s, enable_in =>en172,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en173) ;
OBS_173:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(173),clk=>clk_s,reset =>reset_s, enable_in =>en173,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en174) ;
OBS_174:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(174),clk=>clk_s,reset =>reset_s, enable_in =>en174,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en175) ;
OBS_175:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(175),clk=>clk_s,reset =>reset_s, enable_in =>en175,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en176) ;
OBS_176:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(176),clk=>clk_s,reset =>reset_s, enable_in =>en176,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en177) ;
OBS_177:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(177),clk=>clk_s,reset =>reset_s, enable_in =>en177,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en178) ;
OBS_178:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(178),clk=>clk_s,reset =>reset_s, enable_in =>en178,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en179) ;
OBS_179:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(179),clk=>clk_s,reset =>reset_s, enable_in =>en179,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en180) ;
OBS_180:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(180),clk=>clk_s,reset =>reset_s, enable_in =>en180,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en181) ;
OBS_181:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(181),clk=>clk_s,reset =>reset_s, enable_in =>en181,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en182) ;
OBS_182:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(182),clk=>clk_s,reset =>reset_s, enable_in =>en182,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en183) ;
OBS_183:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(183),clk=>clk_s,reset =>reset_s, enable_in =>en183,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en184) ;
OBS_184:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(184),clk=>clk_s,reset =>reset_s, enable_in =>en184,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en185) ;
OBS_185:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(185),clk=>clk_s,reset =>reset_s, enable_in =>en185,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en186) ;
OBS_186:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(186),clk=>clk_s,reset =>reset_s, enable_in =>en186,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en187) ;
OBS_187:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(187),clk=>clk_s,reset =>reset_s, enable_in =>en187,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en188) ;
OBS_188:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(188),clk=>clk_s,reset =>reset_s, enable_in =>en188,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en189) ;
OBS_189:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(189),clk=>clk_s,reset =>reset_s, enable_in =>en189,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en190) ;
OBS_190:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(190),clk=>clk_s,reset =>reset_s, enable_in =>en190,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en191) ;
OBS_191:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(191),clk=>clk_s,reset =>reset_s, enable_in =>en191,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en192) ;
OBS_192:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(192),clk=>clk_s,reset =>reset_s, enable_in =>en192,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en193) ;
OBS_193:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(193),clk=>clk_s,reset =>reset_s, enable_in =>en193,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en194) ;
OBS_194:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(194),clk=>clk_s,reset =>reset_s, enable_in =>en194,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en195) ;
OBS_195:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(195),clk=>clk_s,reset =>reset_s, enable_in =>en195,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en196) ;
OBS_196:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(196),clk=>clk_s,reset =>reset_s, enable_in =>en196,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en197) ;
OBS_197:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(197),clk=>clk_s,reset =>reset_s, enable_in =>en197,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en198) ;
OBS_198:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(198),clk=>clk_s,reset =>reset_s, enable_in =>en198,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en199) ;
OBS_199:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(199),clk=>clk_s,reset =>reset_s, enable_in =>en199,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en200) ;
OBS_200:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(200),clk=>clk_s,reset =>reset_s, enable_in =>en200,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en201) ;
OBS_201:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(201),clk=>clk_s,reset =>reset_s, enable_in =>en201,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en202) ;
OBS_202:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(202),clk=>clk_s,reset =>reset_s, enable_in =>en202,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en203) ;
OBS_203:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(203),clk=>clk_s,reset =>reset_s, enable_in =>en203,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en204) ;
OBS_204:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(204),clk=>clk_s,reset =>reset_s, enable_in =>en204,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en205) ;
OBS_205:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(205),clk=>clk_s,reset =>reset_s, enable_in =>en205,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en206) ;
OBS_206:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(206),clk=>clk_s,reset =>reset_s, enable_in =>en206,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en207) ;
OBS_207:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(207),clk=>clk_s,reset =>reset_s, enable_in =>en207,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en208) ;
OBS_208:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(208),clk=>clk_s,reset =>reset_s, enable_in =>en208,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en209) ;
OBS_209:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(209),clk=>clk_s,reset =>reset_s, enable_in =>en209,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en210) ;
OBS_210:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(210),clk=>clk_s,reset =>reset_s, enable_in =>en210,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en211) ;
OBS_211:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(211),clk=>clk_s,reset =>reset_s, enable_in =>en211,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en212) ;
OBS_212:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(212),clk=>clk_s,reset =>reset_s, enable_in =>en212,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en213) ;
OBS_213:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(213),clk=>clk_s,reset =>reset_s, enable_in =>en213,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en214) ;
OBS_214:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(214),clk=>clk_s,reset =>reset_s, enable_in =>en214,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en215) ;
OBS_215:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(215),clk=>clk_s,reset =>reset_s, enable_in =>en215,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en216) ;
OBS_216:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(216),clk=>clk_s,reset =>reset_s, enable_in =>en216,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en217) ;
OBS_217:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(217),clk=>clk_s,reset =>reset_s, enable_in =>en217,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en218) ;
OBS_218:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(218),clk=>clk_s,reset =>reset_s, enable_in =>en218,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en219) ;
OBS_219:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(219),clk=>clk_s,reset =>reset_s, enable_in =>en219,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en220) ;
OBS_220:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(220),clk=>clk_s,reset =>reset_s, enable_in =>en220,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en221) ;
OBS_221:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(221),clk=>clk_s,reset =>reset_s, enable_in =>en221,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en222) ;
OBS_222:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(222),clk=>clk_s,reset =>reset_s, enable_in =>en222,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en223) ;
OBS_223:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(223),clk=>clk_s,reset =>reset_s, enable_in =>en223,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en224) ;
OBS_224:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(224),clk=>clk_s,reset =>reset_s, enable_in =>en224,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en225) ;
OBS_225:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(225),clk=>clk_s,reset =>reset_s, enable_in =>en225,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en226) ;
OBS_226:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(226),clk=>clk_s,reset =>reset_s, enable_in =>en226,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en227) ;
OBS_227:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(227),clk=>clk_s,reset =>reset_s, enable_in =>en227,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en228) ;
OBS_228:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(228),clk=>clk_s,reset =>reset_s, enable_in =>en228,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en229) ;
OBS_229:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(229),clk=>clk_s,reset =>reset_s, enable_in =>en229,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en230) ;
OBS_230:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(230),clk=>clk_s,reset =>reset_s, enable_in =>en230,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en231) ;
OBS_231:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(231),clk=>clk_s,reset =>reset_s, enable_in =>en231,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en232) ;
OBS_232:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(232),clk=>clk_s,reset =>reset_s, enable_in =>en232,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en233) ;
OBS_233:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(233),clk=>clk_s,reset =>reset_s, enable_in =>en233,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en234) ;
OBS_234:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(234),clk=>clk_s,reset =>reset_s, enable_in =>en234,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en235) ;
OBS_235:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(235),clk=>clk_s,reset =>reset_s, enable_in =>en235,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en236) ;
OBS_236:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(236),clk=>clk_s,reset =>reset_s, enable_in =>en236,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en237) ;
OBS_237:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(237),clk=>clk_s,reset =>reset_s, enable_in =>en237,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en238) ;
OBS_238:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(238),clk=>clk_s,reset =>reset_s, enable_in =>en238,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en239) ;
OBS_239:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(239),clk=>clk_s,reset =>reset_s, enable_in =>en239,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en240) ;
OBS_240:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(240),clk=>clk_s,reset =>reset_s, enable_in =>en240,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en241) ;
OBS_241:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(241),clk=>clk_s,reset =>reset_s, enable_in =>en241,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en242) ;
OBS_242:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(242),clk=>clk_s,reset =>reset_s, enable_in =>en242,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en243) ;
OBS_243:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(243),clk=>clk_s,reset =>reset_s, enable_in =>en243,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en244) ;
OBS_244:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(244),clk=>clk_s,reset =>reset_s, enable_in =>en244,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en245) ;
OBS_245:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(245),clk=>clk_s,reset =>reset_s, enable_in =>en245,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en246) ;
OBS_246:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(246),clk=>clk_s,reset =>reset_s, enable_in =>en246,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en247) ;
OBS_247:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(247),clk=>clk_s,reset =>reset_s, enable_in =>en247,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en248) ;
OBS_248:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(248),clk=>clk_s,reset =>reset_s, enable_in =>en248,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en249) ;
OBS_249:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(249),clk=>clk_s,reset =>reset_s, enable_in =>en249,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en250) ;
OBS_250:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(250),clk=>clk_s,reset =>reset_s, enable_in =>en250,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en251) ;
OBS_251:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(251),clk=>clk_s,reset =>reset_s, enable_in =>en251,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en252) ;
OBS_252:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(252),clk=>clk_s,reset =>reset_s, enable_in =>en252,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en253) ;
OBS_253:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(253),clk=>clk_s,reset =>reset_s, enable_in =>en253,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en254) ;
OBS_254:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(254),clk=>clk_s,reset =>reset_s, enable_in =>en254,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en255) ;
OBS_255:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(255),clk=>clk_s,reset =>reset_s, enable_in =>en255,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en256) ;
OBS_256:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(256),clk=>clk_s,reset =>reset_s, enable_in =>en256,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en257) ;
OBS_257:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(257),clk=>clk_s,reset =>reset_s, enable_in =>en257,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en258) ;
OBS_258:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(258),clk=>clk_s,reset =>reset_s, enable_in =>en258,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en259) ;
OBS_259:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(259),clk=>clk_s,reset =>reset_s, enable_in =>en259,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en260) ;
OBS_260:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(260),clk=>clk_s,reset =>reset_s, enable_in =>en260,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en261) ;
OBS_261:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(261),clk=>clk_s,reset =>reset_s, enable_in =>en261,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en262) ;
OBS_262:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(262),clk=>clk_s,reset =>reset_s, enable_in =>en262,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en263) ;
OBS_263:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(263),clk=>clk_s,reset =>reset_s, enable_in =>en263,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en264) ;
OBS_264:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(264),clk=>clk_s,reset =>reset_s, enable_in =>en264,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en265) ;
OBS_265:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(265),clk=>clk_s,reset =>reset_s, enable_in =>en265,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en266) ;
OBS_266:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(266),clk=>clk_s,reset =>reset_s, enable_in =>en266,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en267) ;
OBS_267:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(267),clk=>clk_s,reset =>reset_s, enable_in =>en267,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en268) ;
OBS_268:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(268),clk=>clk_s,reset =>reset_s, enable_in =>en268,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en269) ;
OBS_269:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(269),clk=>clk_s,reset =>reset_s, enable_in =>en269,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en270) ;
OBS_270:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(270),clk=>clk_s,reset =>reset_s, enable_in =>en270,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en271) ;
OBS_271:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(271),clk=>clk_s,reset =>reset_s, enable_in =>en271,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en272) ;
OBS_272:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(272),clk=>clk_s,reset =>reset_s, enable_in =>en272,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en273) ;
OBS_273:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(273),clk=>clk_s,reset =>reset_s, enable_in =>en273,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en274) ;
OBS_274:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(274),clk=>clk_s,reset =>reset_s, enable_in =>en274,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en275) ;
OBS_275:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(275),clk=>clk_s,reset =>reset_s, enable_in =>en275,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en276) ;
OBS_276:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(276),clk=>clk_s,reset =>reset_s, enable_in =>en276,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en277) ;
OBS_277:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(277),clk=>clk_s,reset =>reset_s, enable_in =>en277,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en278) ;
OBS_278:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(278),clk=>clk_s,reset =>reset_s, enable_in =>en278,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en279) ;
OBS_279:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(279),clk=>clk_s,reset =>reset_s, enable_in =>en279,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en280) ;
OBS_280:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(280),clk=>clk_s,reset =>reset_s, enable_in =>en280,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en281) ;
OBS_281:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(281),clk=>clk_s,reset =>reset_s, enable_in =>en281,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en282) ;
OBS_282:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(282),clk=>clk_s,reset =>reset_s, enable_in =>en282,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en283) ;
OBS_283:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(283),clk=>clk_s,reset =>reset_s, enable_in =>en283,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en284) ;
OBS_284:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(284),clk=>clk_s,reset =>reset_s, enable_in =>en284,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en285) ;
OBS_285:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(285),clk=>clk_s,reset =>reset_s, enable_in =>en285,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en286) ;
OBS_286:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(286),clk=>clk_s,reset =>reset_s, enable_in =>en286,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en287) ;
OBS_287:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(287),clk=>clk_s,reset =>reset_s, enable_in =>en287,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en288) ;
OBS_288:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(288),clk=>clk_s,reset =>reset_s, enable_in =>en288,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en289) ;
OBS_289:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(289),clk=>clk_s,reset =>reset_s, enable_in =>en289,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en290) ;
OBS_290:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(290),clk=>clk_s,reset =>reset_s, enable_in =>en290,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en291) ;
OBS_291:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(291),clk=>clk_s,reset =>reset_s, enable_in =>en291,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en292) ;
OBS_292:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(292),clk=>clk_s,reset =>reset_s, enable_in =>en292,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en293) ;
OBS_293:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(293),clk=>clk_s,reset =>reset_s, enable_in =>en293,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en294) ;
OBS_294:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(294),clk=>clk_s,reset =>reset_s, enable_in =>en294,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en295) ;
OBS_295:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(295),clk=>clk_s,reset =>reset_s, enable_in =>en295,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en296) ;
OBS_296:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(296),clk=>clk_s,reset =>reset_s, enable_in =>en296,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en297) ;
OBS_297:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(297),clk=>clk_s,reset =>reset_s, enable_in =>en297,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en298) ;
OBS_298:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(298),clk=>clk_s,reset =>reset_s, enable_in =>en298,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en299) ;
OBS_299:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(299),clk=>clk_s,reset =>reset_s, enable_in =>en299,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en300) ;
OBS_300:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(300),clk=>clk_s,reset =>reset_s, enable_in =>en300,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en301) ;
OBS_301:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(301),clk=>clk_s,reset =>reset_s, enable_in =>en301,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en302) ;
OBS_302:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(302),clk=>clk_s,reset =>reset_s, enable_in =>en302,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en303) ;
OBS_303:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(303),clk=>clk_s,reset =>reset_s, enable_in =>en303,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en304) ;
OBS_304:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(304),clk=>clk_s,reset =>reset_s, enable_in =>en304,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en305) ;
OBS_305:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(305),clk=>clk_s,reset =>reset_s, enable_in =>en305,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en306) ;
OBS_306:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(306),clk=>clk_s,reset =>reset_s, enable_in =>en306,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en307) ;
OBS_307:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(307),clk=>clk_s,reset =>reset_s, enable_in =>en307,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en308) ;
OBS_308:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(308),clk=>clk_s,reset =>reset_s, enable_in =>en308,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en309) ;
OBS_309:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(309),clk=>clk_s,reset =>reset_s, enable_in =>en309,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en310) ;
OBS_310:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(310),clk=>clk_s,reset =>reset_s, enable_in =>en310,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en311) ;
OBS_311:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(311),clk=>clk_s,reset =>reset_s, enable_in =>en311,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en312) ;
OBS_312:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(312),clk=>clk_s,reset =>reset_s, enable_in =>en312,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en313) ;
OBS_313:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(313),clk=>clk_s,reset =>reset_s, enable_in =>en313,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en314) ;
OBS_314:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(314),clk=>clk_s,reset =>reset_s, enable_in =>en314,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en315) ;
OBS_315:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(315),clk=>clk_s,reset =>reset_s, enable_in =>en315,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en316) ;
OBS_316:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(316),clk=>clk_s,reset =>reset_s, enable_in =>en316,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en317) ;
OBS_317:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(317),clk=>clk_s,reset =>reset_s, enable_in =>en317,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en318) ;
OBS_318:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(318),clk=>clk_s,reset =>reset_s, enable_in =>en318,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en319) ;
OBS_319:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(319),clk=>clk_s,reset =>reset_s, enable_in =>en319,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en320) ;
OBS_320:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(320),clk=>clk_s,reset =>reset_s, enable_in =>en320,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en321) ;
OBS_321:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(321),clk=>clk_s,reset =>reset_s, enable_in =>en321,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en322) ;
OBS_322:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(322),clk=>clk_s,reset =>reset_s, enable_in =>en322,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en323) ;
OBS_323:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(323),clk=>clk_s,reset =>reset_s, enable_in =>en323,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en324) ;
OBS_324:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(324),clk=>clk_s,reset =>reset_s, enable_in =>en324,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en325) ;
OBS_325:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(325),clk=>clk_s,reset =>reset_s, enable_in =>en325,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en326) ;
OBS_326:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(326),clk=>clk_s,reset =>reset_s, enable_in =>en326,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en327) ;
OBS_327:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(327),clk=>clk_s,reset =>reset_s, enable_in =>en327,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en328) ;
OBS_328:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(328),clk=>clk_s,reset =>reset_s, enable_in =>en328,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en329) ;
OBS_329:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(329),clk=>clk_s,reset =>reset_s, enable_in =>en329,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en330) ;
OBS_330:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(330),clk=>clk_s,reset =>reset_s, enable_in =>en330,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en331) ;
OBS_331:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(331),clk=>clk_s,reset =>reset_s, enable_in =>en331,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en332) ;
OBS_332:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(332),clk=>clk_s,reset =>reset_s, enable_in =>en332,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en333) ;
OBS_333:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(333),clk=>clk_s,reset =>reset_s, enable_in =>en333,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en334) ;
OBS_334:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(334),clk=>clk_s,reset =>reset_s, enable_in =>en334,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en335) ;
OBS_335:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(335),clk=>clk_s,reset =>reset_s, enable_in =>en335,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en336) ;
OBS_336:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(336),clk=>clk_s,reset =>reset_s, enable_in =>en336,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en337) ;
OBS_337:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(337),clk=>clk_s,reset =>reset_s, enable_in =>en337,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en338) ;
OBS_338:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(338),clk=>clk_s,reset =>reset_s, enable_in =>en338,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en339) ;
OBS_339:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(339),clk=>clk_s,reset =>reset_s, enable_in =>en339,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en340) ;
OBS_340:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(340),clk=>clk_s,reset =>reset_s, enable_in =>en340,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en341) ;
OBS_341:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(341),clk=>clk_s,reset =>reset_s, enable_in =>en341,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en342) ;
OBS_342:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(342),clk=>clk_s,reset =>reset_s, enable_in =>en342,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en343) ;
OBS_343:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(343),clk=>clk_s,reset =>reset_s, enable_in =>en343,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en344) ;
OBS_344:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(344),clk=>clk_s,reset =>reset_s, enable_in =>en344,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en345) ;
OBS_345:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(345),clk=>clk_s,reset =>reset_s, enable_in =>en345,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en346) ;
OBS_346:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(346),clk=>clk_s,reset =>reset_s, enable_in =>en346,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en347) ;
OBS_347:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(347),clk=>clk_s,reset =>reset_s, enable_in =>en347,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en348) ;
OBS_348:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(348),clk=>clk_s,reset =>reset_s, enable_in =>en348,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en349) ;
OBS_349:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(349),clk=>clk_s,reset =>reset_s, enable_in =>en349,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en350) ;
OBS_350:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(350),clk=>clk_s,reset =>reset_s, enable_in =>en350,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en351) ;
OBS_351:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(351),clk=>clk_s,reset =>reset_s, enable_in =>en351,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en352) ;
OBS_352:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(352),clk=>clk_s,reset =>reset_s, enable_in =>en352,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en353) ;
OBS_353:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(353),clk=>clk_s,reset =>reset_s, enable_in =>en353,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en354) ;
OBS_354:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(354),clk=>clk_s,reset =>reset_s, enable_in =>en354,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en355) ;
OBS_355:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(355),clk=>clk_s,reset =>reset_s, enable_in =>en355,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en356) ;
OBS_356:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(356),clk=>clk_s,reset =>reset_s, enable_in =>en356,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en357) ;
OBS_357:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(357),clk=>clk_s,reset =>reset_s, enable_in =>en357,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en358) ;
OBS_358:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(358),clk=>clk_s,reset =>reset_s, enable_in =>en358,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en359) ;
OBS_359:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(359),clk=>clk_s,reset =>reset_s, enable_in =>en359,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en360) ;
OBS_360:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(360),clk=>clk_s,reset =>reset_s, enable_in =>en360,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en361) ;
OBS_361:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(361),clk=>clk_s,reset =>reset_s, enable_in =>en361,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en362) ;
OBS_362:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(362),clk=>clk_s,reset =>reset_s, enable_in =>en362,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en363) ;
OBS_363:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(363),clk=>clk_s,reset =>reset_s, enable_in =>en363,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en364) ;
OBS_364:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(364),clk=>clk_s,reset =>reset_s, enable_in =>en364,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en365) ;
OBS_365:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(365),clk=>clk_s,reset =>reset_s, enable_in =>en365,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en366) ;
OBS_366:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(366),clk=>clk_s,reset =>reset_s, enable_in =>en366,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en367) ;
OBS_367:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(367),clk=>clk_s,reset =>reset_s, enable_in =>en367,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en368) ;
OBS_368:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(368),clk=>clk_s,reset =>reset_s, enable_in =>en368,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en369) ;
OBS_369:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(369),clk=>clk_s,reset =>reset_s, enable_in =>en369,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en370) ;
OBS_370:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(370),clk=>clk_s,reset =>reset_s, enable_in =>en370,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en371) ;
OBS_371:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(371),clk=>clk_s,reset =>reset_s, enable_in =>en371,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en372) ;
OBS_372:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(372),clk=>clk_s,reset =>reset_s, enable_in =>en372,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en373) ;
OBS_373:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(373),clk=>clk_s,reset =>reset_s, enable_in =>en373,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en374) ;
OBS_374:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(374),clk=>clk_s,reset =>reset_s, enable_in =>en374,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en375) ;
OBS_375:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(375),clk=>clk_s,reset =>reset_s, enable_in =>en375,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en376) ;
OBS_376:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(376),clk=>clk_s,reset =>reset_s, enable_in =>en376,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en377) ;
OBS_377:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(377),clk=>clk_s,reset =>reset_s, enable_in =>en377,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en378) ;
OBS_378:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(378),clk=>clk_s,reset =>reset_s, enable_in =>en378,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en379) ;
OBS_379:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(379),clk=>clk_s,reset =>reset_s, enable_in =>en379,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en380) ;
OBS_380:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(380),clk=>clk_s,reset =>reset_s, enable_in =>en380,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en381) ;
OBS_381:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(381),clk=>clk_s,reset =>reset_s, enable_in =>en381,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en382) ;
OBS_382:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(382),clk=>clk_s,reset =>reset_s, enable_in =>en382,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en383) ;
OBS_383:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(383),clk=>clk_s,reset =>reset_s, enable_in =>en383,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en384) ;
OBS_384:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(384),clk=>clk_s,reset =>reset_s, enable_in =>en384,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en385) ;
OBS_385:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(385),clk=>clk_s,reset =>reset_s, enable_in =>en385,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en386) ;
OBS_386:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(386),clk=>clk_s,reset =>reset_s, enable_in =>en386,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en387) ;
OBS_387:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(387),clk=>clk_s,reset =>reset_s, enable_in =>en387,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en388) ;
OBS_388:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(388),clk=>clk_s,reset =>reset_s, enable_in =>en388,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en389) ;
OBS_389:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(389),clk=>clk_s,reset =>reset_s, enable_in =>en389,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en390) ;
OBS_390:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(390),clk=>clk_s,reset =>reset_s, enable_in =>en390,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en391) ;
OBS_391:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(391),clk=>clk_s,reset =>reset_s, enable_in =>en391,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en392) ;
OBS_392:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(392),clk=>clk_s,reset =>reset_s, enable_in =>en392,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en393) ;
OBS_393:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(393),clk=>clk_s,reset =>reset_s, enable_in =>en393,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en394) ;
OBS_394:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(394),clk=>clk_s,reset =>reset_s, enable_in =>en394,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en395) ;
OBS_395:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(395),clk=>clk_s,reset =>reset_s, enable_in =>en395,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en396) ;
OBS_396:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(396),clk=>clk_s,reset =>reset_s, enable_in =>en396,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en397) ;
OBS_397:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(397),clk=>clk_s,reset =>reset_s, enable_in =>en397,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en398) ;
OBS_398:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(398),clk=>clk_s,reset =>reset_s, enable_in =>en398,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en399) ;
OBS_399:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(399),clk=>clk_s,reset =>reset_s, enable_in =>en399,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en400) ;
OBS_400:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(400),clk=>clk_s,reset =>reset_s, enable_in =>en400,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en401) ;
OBS_401:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(401),clk=>clk_s,reset =>reset_s, enable_in =>en401,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en402) ;
OBS_402:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(402),clk=>clk_s,reset =>reset_s, enable_in =>en402,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en403) ;
OBS_403:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(403),clk=>clk_s,reset =>reset_s, enable_in =>en403,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en404) ;
OBS_404:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(404),clk=>clk_s,reset =>reset_s, enable_in =>en404,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en405) ;
OBS_405:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(405),clk=>clk_s,reset =>reset_s, enable_in =>en405,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en406) ;
OBS_406:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(406),clk=>clk_s,reset =>reset_s, enable_in =>en406,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en407) ;
OBS_407:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(407),clk=>clk_s,reset =>reset_s, enable_in =>en407,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en408) ;
OBS_408:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(408),clk=>clk_s,reset =>reset_s, enable_in =>en408,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en409) ;
OBS_409:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(409),clk=>clk_s,reset =>reset_s, enable_in =>en409,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en410) ;
OBS_410:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(410),clk=>clk_s,reset =>reset_s, enable_in =>en410,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en411) ;
OBS_411:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(411),clk=>clk_s,reset =>reset_s, enable_in =>en411,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en412) ;
OBS_412:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(412),clk=>clk_s,reset =>reset_s, enable_in =>en412,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en413) ;
OBS_413:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(413),clk=>clk_s,reset =>reset_s, enable_in =>en413,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en414) ;
OBS_414:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(414),clk=>clk_s,reset =>reset_s, enable_in =>en414,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en415) ;
OBS_415:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(415),clk=>clk_s,reset =>reset_s, enable_in =>en415,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en416) ;
OBS_416:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(416),clk=>clk_s,reset =>reset_s, enable_in =>en416,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en417) ;
OBS_417:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(417),clk=>clk_s,reset =>reset_s, enable_in =>en417,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en418) ;
OBS_418:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(418),clk=>clk_s,reset =>reset_s, enable_in =>en418,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en419) ;
OBS_419:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(419),clk=>clk_s,reset =>reset_s, enable_in =>en419,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en420) ;
OBS_420:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(420),clk=>clk_s,reset =>reset_s, enable_in =>en420,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en421) ;
OBS_421:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(421),clk=>clk_s,reset =>reset_s, enable_in =>en421,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en422) ;
OBS_422:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(422),clk=>clk_s,reset =>reset_s, enable_in =>en422,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en423) ;
OBS_423:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(423),clk=>clk_s,reset =>reset_s, enable_in =>en423,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en424) ;
OBS_424:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(424),clk=>clk_s,reset =>reset_s, enable_in =>en424,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en425) ;
OBS_425:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(425),clk=>clk_s,reset =>reset_s, enable_in =>en425,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en426) ;
OBS_426:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(426),clk=>clk_s,reset =>reset_s, enable_in =>en426,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en427) ;
OBS_427:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(427),clk=>clk_s,reset =>reset_s, enable_in =>en427,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en428) ;
OBS_428:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(428),clk=>clk_s,reset =>reset_s, enable_in =>en428,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en429) ;
OBS_429:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(429),clk=>clk_s,reset =>reset_s, enable_in =>en429,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en430) ;
OBS_430:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(430),clk=>clk_s,reset =>reset_s, enable_in =>en430,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en431) ;
OBS_431:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(431),clk=>clk_s,reset =>reset_s, enable_in =>en431,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en432) ;
OBS_432:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(432),clk=>clk_s,reset =>reset_s, enable_in =>en432,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en433) ;
OBS_433:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(433),clk=>clk_s,reset =>reset_s, enable_in =>en433,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en434) ;
OBS_434:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(434),clk=>clk_s,reset =>reset_s, enable_in =>en434,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en435) ;
OBS_435:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(435),clk=>clk_s,reset =>reset_s, enable_in =>en435,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en436) ;
OBS_436:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(436),clk=>clk_s,reset =>reset_s, enable_in =>en436,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en437) ;
OBS_437:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(437),clk=>clk_s,reset =>reset_s, enable_in =>en437,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en438) ;
OBS_438:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(438),clk=>clk_s,reset =>reset_s, enable_in =>en438,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en439) ;
OBS_439:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(439),clk=>clk_s,reset =>reset_s, enable_in =>en439,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en440) ;
OBS_440:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(440),clk=>clk_s,reset =>reset_s, enable_in =>en440,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en441) ;
OBS_441:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(441),clk=>clk_s,reset =>reset_s, enable_in =>en441,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en442) ;
OBS_442:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(442),clk=>clk_s,reset =>reset_s, enable_in =>en442,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en443) ;
OBS_443:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(443),clk=>clk_s,reset =>reset_s, enable_in =>en443,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en444) ;
OBS_444:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(444),clk=>clk_s,reset =>reset_s, enable_in =>en444,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en445) ;
OBS_445:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(445),clk=>clk_s,reset =>reset_s, enable_in =>en445,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en446) ;
OBS_446:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(446),clk=>clk_s,reset =>reset_s, enable_in =>en446,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en447) ;
OBS_447:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(447),clk=>clk_s,reset =>reset_s, enable_in =>en447,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en448) ;
OBS_448:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(448),clk=>clk_s,reset =>reset_s, enable_in =>en448,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en449) ;
OBS_449:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(449),clk=>clk_s,reset =>reset_s, enable_in =>en449,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en450) ;
OBS_450:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(450),clk=>clk_s,reset =>reset_s, enable_in =>en450,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en451) ;
OBS_451:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(451),clk=>clk_s,reset =>reset_s, enable_in =>en451,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en452) ;
OBS_452:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(452),clk=>clk_s,reset =>reset_s, enable_in =>en452,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en453) ;
OBS_453:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(453),clk=>clk_s,reset =>reset_s, enable_in =>en453,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en454) ;
OBS_454:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(454),clk=>clk_s,reset =>reset_s, enable_in =>en454,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en455) ;
OBS_455:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(455),clk=>clk_s,reset =>reset_s, enable_in =>en455,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en456) ;
OBS_456:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(456),clk=>clk_s,reset =>reset_s, enable_in =>en456,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en457) ;
OBS_457:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(457),clk=>clk_s,reset =>reset_s, enable_in =>en457,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en458) ;
OBS_458:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(458),clk=>clk_s,reset =>reset_s, enable_in =>en458,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en459) ;
OBS_459:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(459),clk=>clk_s,reset =>reset_s, enable_in =>en459,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en460) ;
OBS_460:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(460),clk=>clk_s,reset =>reset_s, enable_in =>en460,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en461) ;
OBS_461:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(461),clk=>clk_s,reset =>reset_s, enable_in =>en461,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en462) ;
OBS_462:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(462),clk=>clk_s,reset =>reset_s, enable_in =>en462,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en463) ;
OBS_463:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(463),clk=>clk_s,reset =>reset_s, enable_in =>en463,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en464) ;
OBS_464:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(464),clk=>clk_s,reset =>reset_s, enable_in =>en464,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en465) ;
OBS_465:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(465),clk=>clk_s,reset =>reset_s, enable_in =>en465,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en466) ;
OBS_466:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(466),clk=>clk_s,reset =>reset_s, enable_in =>en466,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en467) ;
OBS_467:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(467),clk=>clk_s,reset =>reset_s, enable_in =>en467,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en468) ;
OBS_468:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(468),clk=>clk_s,reset =>reset_s, enable_in =>en468,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en469) ;
OBS_469:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(469),clk=>clk_s,reset =>reset_s, enable_in =>en469,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en470) ;
OBS_470:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(470),clk=>clk_s,reset =>reset_s, enable_in =>en470,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en471) ;
OBS_471:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(471),clk=>clk_s,reset =>reset_s, enable_in =>en471,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en472) ;
OBS_472:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(472),clk=>clk_s,reset =>reset_s, enable_in =>en472,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en473) ;
OBS_473:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(473),clk=>clk_s,reset =>reset_s, enable_in =>en473,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en474) ;
OBS_474:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(474),clk=>clk_s,reset =>reset_s, enable_in =>en474,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en475) ;
OBS_475:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(475),clk=>clk_s,reset =>reset_s, enable_in =>en475,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en476) ;
OBS_476:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(476),clk=>clk_s,reset =>reset_s, enable_in =>en476,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en477) ;
OBS_477:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(477),clk=>clk_s,reset =>reset_s, enable_in =>en477,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en478) ;
OBS_478:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(478),clk=>clk_s,reset =>reset_s, enable_in =>en478,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en479) ;
OBS_479:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(479),clk=>clk_s,reset =>reset_s, enable_in =>en479,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en480) ;
OBS_480:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(480),clk=>clk_s,reset =>reset_s, enable_in =>en480,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en481) ;
OBS_481:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(481),clk=>clk_s,reset =>reset_s, enable_in =>en481,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en482) ;
OBS_482:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(482),clk=>clk_s,reset =>reset_s, enable_in =>en482,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en483) ;
OBS_483:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(483),clk=>clk_s,reset =>reset_s, enable_in =>en483,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en484) ;
OBS_484:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(484),clk=>clk_s,reset =>reset_s, enable_in =>en484,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en485) ;
OBS_485:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(485),clk=>clk_s,reset =>reset_s, enable_in =>en485,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en486) ;
OBS_486:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(486),clk=>clk_s,reset =>reset_s, enable_in =>en486,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en487) ;
OBS_487:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(487),clk=>clk_s,reset =>reset_s, enable_in =>en487,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en488) ;
OBS_488:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(488),clk=>clk_s,reset =>reset_s, enable_in =>en488,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en489) ;
OBS_489:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(489),clk=>clk_s,reset =>reset_s, enable_in =>en489,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en490) ;
OBS_490:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(490),clk=>clk_s,reset =>reset_s, enable_in =>en490,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en491) ;
OBS_491:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(491),clk=>clk_s,reset =>reset_s, enable_in =>en491,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en492) ;
OBS_492:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(492),clk=>clk_s,reset =>reset_s, enable_in =>en492,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en493) ;
OBS_493:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(493),clk=>clk_s,reset =>reset_s, enable_in =>en493,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en494) ;
OBS_494:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(494),clk=>clk_s,reset =>reset_s, enable_in =>en494,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en495) ;
OBS_495:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(495),clk=>clk_s,reset =>reset_s, enable_in =>en495,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en496) ;
OBS_496:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(496),clk=>clk_s,reset =>reset_s, enable_in =>en496,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en497) ;
OBS_497:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(497),clk=>clk_s,reset =>reset_s, enable_in =>en497,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en498) ;
OBS_498:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(498),clk=>clk_s,reset =>reset_s, enable_in =>en498,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en499) ;
OBS_499:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(499),clk=>clk_s,reset =>reset_s, enable_in =>en499,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en500) ;
OBS_500:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(500),clk=>clk_s,reset =>reset_s, enable_in =>en500,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en501) ;
OBS_501:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(501),clk=>clk_s,reset =>reset_s, enable_in =>en501,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en502) ;
OBS_502:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(502),clk=>clk_s,reset =>reset_s, enable_in =>en502,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en503) ;
OBS_503:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(503),clk=>clk_s,reset =>reset_s, enable_in =>en503,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en504) ;
OBS_504:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(504),clk=>clk_s,reset =>reset_s, enable_in =>en504,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en505) ;
OBS_505:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(505),clk=>clk_s,reset =>reset_s, enable_in =>en505,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en506) ;
OBS_506:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(506),clk=>clk_s,reset =>reset_s, enable_in =>en506,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en507) ;
OBS_507:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(507),clk=>clk_s,reset =>reset_s, enable_in =>en507,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en508) ;
OBS_508:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(508),clk=>clk_s,reset =>reset_s, enable_in =>en508,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en509) ;
OBS_509:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(509),clk=>clk_s,reset =>reset_s, enable_in =>en509,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en510) ;
OBS_510:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(510),clk=>clk_s,reset =>reset_s, enable_in =>en510,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en511) ;
OBS_511:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(511),clk=>clk_s,reset =>reset_s, enable_in =>en511,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en512) ;
OBS_512:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(512),clk=>clk_s,reset =>reset_s, enable_in =>en512,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en513) ;
OBS_513:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(513),clk=>clk_s,reset =>reset_s, enable_in =>en513,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en514) ;
OBS_514:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(514),clk=>clk_s,reset =>reset_s, enable_in =>en514,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en515) ;
OBS_515:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(515),clk=>clk_s,reset =>reset_s, enable_in =>en515,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en516) ;
OBS_516:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(516),clk=>clk_s,reset =>reset_s, enable_in =>en516,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en517) ;
OBS_517:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(517),clk=>clk_s,reset =>reset_s, enable_in =>en517,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en518) ;
OBS_518:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(518),clk=>clk_s,reset =>reset_s, enable_in =>en518,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en519) ;
OBS_519:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(519),clk=>clk_s,reset =>reset_s, enable_in =>en519,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en520) ;
OBS_520:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(520),clk=>clk_s,reset =>reset_s, enable_in =>en520,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en521) ;
OBS_521:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(521),clk=>clk_s,reset =>reset_s, enable_in =>en521,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en522) ;
OBS_522:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(522),clk=>clk_s,reset =>reset_s, enable_in =>en522,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en523) ;
OBS_523:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(523),clk=>clk_s,reset =>reset_s, enable_in =>en523,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en524) ;
OBS_524:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(524),clk=>clk_s,reset =>reset_s, enable_in =>en524,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en525) ;
OBS_525:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(525),clk=>clk_s,reset =>reset_s, enable_in =>en525,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en526) ;
OBS_526:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(526),clk=>clk_s,reset =>reset_s, enable_in =>en526,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en527) ;
OBS_527:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(527),clk=>clk_s,reset =>reset_s, enable_in =>en527,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en528) ;
OBS_528:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(528),clk=>clk_s,reset =>reset_s, enable_in =>en528,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en529) ;
OBS_529:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(529),clk=>clk_s,reset =>reset_s, enable_in =>en529,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en530) ;
OBS_530:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(530),clk=>clk_s,reset =>reset_s, enable_in =>en530,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en531) ;
OBS_531:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(531),clk=>clk_s,reset =>reset_s, enable_in =>en531,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en532) ;
OBS_532:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(532),clk=>clk_s,reset =>reset_s, enable_in =>en532,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en533) ;
OBS_533:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(533),clk=>clk_s,reset =>reset_s, enable_in =>en533,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en534) ;
OBS_534:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(534),clk=>clk_s,reset =>reset_s, enable_in =>en534,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en535) ;
OBS_535:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(535),clk=>clk_s,reset =>reset_s, enable_in =>en535,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en536) ;
OBS_536:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(536),clk=>clk_s,reset =>reset_s, enable_in =>en536,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en537) ;
OBS_537:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(537),clk=>clk_s,reset =>reset_s, enable_in =>en537,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en538) ;
OBS_538:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(538),clk=>clk_s,reset =>reset_s, enable_in =>en538,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en539) ;
OBS_539:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(539),clk=>clk_s,reset =>reset_s, enable_in =>en539,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en540) ;
OBS_540:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(540),clk=>clk_s,reset =>reset_s, enable_in =>en540,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en541) ;
OBS_541:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(541),clk=>clk_s,reset =>reset_s, enable_in =>en541,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en542) ;
OBS_542:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(542),clk=>clk_s,reset =>reset_s, enable_in =>en542,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en543) ;
OBS_543:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(543),clk=>clk_s,reset =>reset_s, enable_in =>en543,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en544) ;
OBS_544:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(544),clk=>clk_s,reset =>reset_s, enable_in =>en544,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en545) ;
OBS_545:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(545),clk=>clk_s,reset =>reset_s, enable_in =>en545,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en546) ;
OBS_546:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(546),clk=>clk_s,reset =>reset_s, enable_in =>en546,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en547) ;
OBS_547:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(547),clk=>clk_s,reset =>reset_s, enable_in =>en547,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en548) ;
OBS_548:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(548),clk=>clk_s,reset =>reset_s, enable_in =>en548,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en549) ;
OBS_549:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(549),clk=>clk_s,reset =>reset_s, enable_in =>en549,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en550) ;
OBS_550:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(550),clk=>clk_s,reset =>reset_s, enable_in =>en550,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en551) ;
OBS_551:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(551),clk=>clk_s,reset =>reset_s, enable_in =>en551,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en552) ;
OBS_552:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(552),clk=>clk_s,reset =>reset_s, enable_in =>en552,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en553) ;
OBS_553:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(553),clk=>clk_s,reset =>reset_s, enable_in =>en553,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en554) ;
OBS_554:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(554),clk=>clk_s,reset =>reset_s, enable_in =>en554,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en555) ;
OBS_555:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(555),clk=>clk_s,reset =>reset_s, enable_in =>en555,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en556) ;
OBS_556:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(556),clk=>clk_s,reset =>reset_s, enable_in =>en556,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en557) ;
OBS_557:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(557),clk=>clk_s,reset =>reset_s, enable_in =>en557,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en558) ;
OBS_558:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(558),clk=>clk_s,reset =>reset_s, enable_in =>en558,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en559) ;
OBS_559:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(559),clk=>clk_s,reset =>reset_s, enable_in =>en559,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en560) ;
OBS_560:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(560),clk=>clk_s,reset =>reset_s, enable_in =>en560,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en561) ;
OBS_561:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(561),clk=>clk_s,reset =>reset_s, enable_in =>en561,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en562) ;
OBS_562:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(562),clk=>clk_s,reset =>reset_s, enable_in =>en562,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en563) ;
OBS_563:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(563),clk=>clk_s,reset =>reset_s, enable_in =>en563,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en564) ;
OBS_564:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(564),clk=>clk_s,reset =>reset_s, enable_in =>en564,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en565) ;
OBS_565:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(565),clk=>clk_s,reset =>reset_s, enable_in =>en565,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en566) ;
OBS_566:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(566),clk=>clk_s,reset =>reset_s, enable_in =>en566,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en567) ;
OBS_567:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(567),clk=>clk_s,reset =>reset_s, enable_in =>en567,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en568) ;
OBS_568:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(568),clk=>clk_s,reset =>reset_s, enable_in =>en568,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en569) ;
OBS_569:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(569),clk=>clk_s,reset =>reset_s, enable_in =>en569,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en570) ;
OBS_570:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(570),clk=>clk_s,reset =>reset_s, enable_in =>en570,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en571) ;
OBS_571:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(571),clk=>clk_s,reset =>reset_s, enable_in =>en571,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en572) ;
OBS_572:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(572),clk=>clk_s,reset =>reset_s, enable_in =>en572,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en573) ;
OBS_573:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(573),clk=>clk_s,reset =>reset_s, enable_in =>en573,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en574) ;
OBS_574:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(574),clk=>clk_s,reset =>reset_s, enable_in =>en574,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en575) ;
OBS_575:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(575),clk=>clk_s,reset =>reset_s, enable_in =>en575,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en576) ;
OBS_576:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(576),clk=>clk_s,reset =>reset_s, enable_in =>en576,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en577) ;
OBS_577:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(577),clk=>clk_s,reset =>reset_s, enable_in =>en577,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en578) ;
OBS_578:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(578),clk=>clk_s,reset =>reset_s, enable_in =>en578,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en579) ;
OBS_579:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(579),clk=>clk_s,reset =>reset_s, enable_in =>en579,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en580) ;
OBS_580:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(580),clk=>clk_s,reset =>reset_s, enable_in =>en580,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en581) ;
OBS_581:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(581),clk=>clk_s,reset =>reset_s, enable_in =>en581,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en582) ;
OBS_582:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(582),clk=>clk_s,reset =>reset_s, enable_in =>en582,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en583) ;
OBS_583:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(583),clk=>clk_s,reset =>reset_s, enable_in =>en583,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en584) ;
OBS_584:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(584),clk=>clk_s,reset =>reset_s, enable_in =>en584,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en585) ;
OBS_585:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(585),clk=>clk_s,reset =>reset_s, enable_in =>en585,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en586) ;
OBS_586:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(586),clk=>clk_s,reset =>reset_s, enable_in =>en586,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en587) ;
OBS_587:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(587),clk=>clk_s,reset =>reset_s, enable_in =>en587,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en588) ;
OBS_588:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(588),clk=>clk_s,reset =>reset_s, enable_in =>en588,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en589) ;
OBS_589:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(589),clk=>clk_s,reset =>reset_s, enable_in =>en589,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en590) ;
OBS_590:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(590),clk=>clk_s,reset =>reset_s, enable_in =>en590,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en591) ;
OBS_591:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(591),clk=>clk_s,reset =>reset_s, enable_in =>en591,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en592) ;
OBS_592:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(592),clk=>clk_s,reset =>reset_s, enable_in =>en592,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en593) ;
OBS_593:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(593),clk=>clk_s,reset =>reset_s, enable_in =>en593,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en594) ;
OBS_594:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(594),clk=>clk_s,reset =>reset_s, enable_in =>en594,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en595) ;
OBS_595:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(595),clk=>clk_s,reset =>reset_s, enable_in =>en595,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en596) ;
OBS_596:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(596),clk=>clk_s,reset =>reset_s, enable_in =>en596,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en597) ;
OBS_597:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(597),clk=>clk_s,reset =>reset_s, enable_in =>en597,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en598) ;
OBS_598:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(598),clk=>clk_s,reset =>reset_s, enable_in =>en598,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en599) ;
OBS_599:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(599),clk=>clk_s,reset =>reset_s, enable_in =>en599,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en600) ;
OBS_600:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(600),clk=>clk_s,reset =>reset_s, enable_in =>en600,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en601) ;
OBS_601:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(601),clk=>clk_s,reset =>reset_s, enable_in =>en601,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en602) ;
OBS_602:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(602),clk=>clk_s,reset =>reset_s, enable_in =>en602,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en603) ;
OBS_603:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(603),clk=>clk_s,reset =>reset_s, enable_in =>en603,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en604) ;
OBS_604:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(604),clk=>clk_s,reset =>reset_s, enable_in =>en604,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en605) ;
OBS_605:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(605),clk=>clk_s,reset =>reset_s, enable_in =>en605,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en606) ;
OBS_606:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(606),clk=>clk_s,reset =>reset_s, enable_in =>en606,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en607) ;
OBS_607:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(607),clk=>clk_s,reset =>reset_s, enable_in =>en607,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en608) ;
OBS_608:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(608),clk=>clk_s,reset =>reset_s, enable_in =>en608,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en609) ;
OBS_609:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(609),clk=>clk_s,reset =>reset_s, enable_in =>en609,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en610) ;
OBS_610:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(610),clk=>clk_s,reset =>reset_s, enable_in =>en610,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en611) ;
OBS_611:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(611),clk=>clk_s,reset =>reset_s, enable_in =>en611,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en612) ;
OBS_612:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(612),clk=>clk_s,reset =>reset_s, enable_in =>en612,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en613) ;
OBS_613:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(613),clk=>clk_s,reset =>reset_s, enable_in =>en613,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en614) ;
OBS_614:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(614),clk=>clk_s,reset =>reset_s, enable_in =>en614,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en615) ;
OBS_615:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(615),clk=>clk_s,reset =>reset_s, enable_in =>en615,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en616) ;
OBS_616:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(616),clk=>clk_s,reset =>reset_s, enable_in =>en616,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en617) ;
OBS_617:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(617),clk=>clk_s,reset =>reset_s, enable_in =>en617,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en618) ;
OBS_618:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(618),clk=>clk_s,reset =>reset_s, enable_in =>en618,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en619) ;
OBS_619:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(619),clk=>clk_s,reset =>reset_s, enable_in =>en619,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en620) ;
OBS_620:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(620),clk=>clk_s,reset =>reset_s, enable_in =>en620,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en621) ;
OBS_621:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(621),clk=>clk_s,reset =>reset_s, enable_in =>en621,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en622) ;
OBS_622:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(622),clk=>clk_s,reset =>reset_s, enable_in =>en622,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en623) ;
OBS_623:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(623),clk=>clk_s,reset =>reset_s, enable_in =>en623,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en624) ;
OBS_624:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(624),clk=>clk_s,reset =>reset_s, enable_in =>en624,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en625) ;
OBS_625:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(625),clk=>clk_s,reset =>reset_s, enable_in =>en625,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en626) ;
OBS_626:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(626),clk=>clk_s,reset =>reset_s, enable_in =>en626,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en627) ;
OBS_627:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(627),clk=>clk_s,reset =>reset_s, enable_in =>en627,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en628) ;
OBS_628:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(628),clk=>clk_s,reset =>reset_s, enable_in =>en628,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en629) ;
OBS_629:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(629),clk=>clk_s,reset =>reset_s, enable_in =>en629,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en630) ;
OBS_630:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(630),clk=>clk_s,reset =>reset_s, enable_in =>en630,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en631) ;
OBS_631:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(631),clk=>clk_s,reset =>reset_s, enable_in =>en631,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en632) ;
OBS_632:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(632),clk=>clk_s,reset =>reset_s, enable_in =>en632,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en633) ;
OBS_633:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(633),clk=>clk_s,reset =>reset_s, enable_in =>en633,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en634) ;
OBS_634:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(634),clk=>clk_s,reset =>reset_s, enable_in =>en634,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en635) ;
OBS_635:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(635),clk=>clk_s,reset =>reset_s, enable_in =>en635,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en636) ;
OBS_636:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(636),clk=>clk_s,reset =>reset_s, enable_in =>en636,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en637) ;
OBS_637:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(637),clk=>clk_s,reset =>reset_s, enable_in =>en637,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en638) ;
OBS_638:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(638),clk=>clk_s,reset =>reset_s, enable_in =>en638,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en639) ;
OBS_639:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(639),clk=>clk_s,reset =>reset_s, enable_in =>en639,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en640) ;
OBS_640:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(640),clk=>clk_s,reset =>reset_s, enable_in =>en640,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en641) ;
OBS_641:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(641),clk=>clk_s,reset =>reset_s, enable_in =>en641,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en642) ;
OBS_642:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(642),clk=>clk_s,reset =>reset_s, enable_in =>en642,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en643) ;
OBS_643:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(643),clk=>clk_s,reset =>reset_s, enable_in =>en643,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en644) ;
OBS_644:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(644),clk=>clk_s,reset =>reset_s, enable_in =>en644,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en645) ;
OBS_645:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(645),clk=>clk_s,reset =>reset_s, enable_in =>en645,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en646) ;
OBS_646:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(646),clk=>clk_s,reset =>reset_s, enable_in =>en646,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en647) ;
OBS_647:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(647),clk=>clk_s,reset =>reset_s, enable_in =>en647,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en648) ;
OBS_648:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(648),clk=>clk_s,reset =>reset_s, enable_in =>en648,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en649) ;
OBS_649:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(649),clk=>clk_s,reset =>reset_s, enable_in =>en649,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en650) ;
OBS_650:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(650),clk=>clk_s,reset =>reset_s, enable_in =>en650,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en651) ;
OBS_651:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(651),clk=>clk_s,reset =>reset_s, enable_in =>en651,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en652) ;
OBS_652:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(652),clk=>clk_s,reset =>reset_s, enable_in =>en652,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en653) ;
OBS_653:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(653),clk=>clk_s,reset =>reset_s, enable_in =>en653,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en654) ;
OBS_654:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(654),clk=>clk_s,reset =>reset_s, enable_in =>en654,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en655) ;
OBS_655:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(655),clk=>clk_s,reset =>reset_s, enable_in =>en655,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en656) ;
OBS_656:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(656),clk=>clk_s,reset =>reset_s, enable_in =>en656,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en657) ;
OBS_657:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(657),clk=>clk_s,reset =>reset_s, enable_in =>en657,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en658) ;
OBS_658:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(658),clk=>clk_s,reset =>reset_s, enable_in =>en658,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en659) ;
OBS_659:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(659),clk=>clk_s,reset =>reset_s, enable_in =>en659,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en660) ;
OBS_660:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(660),clk=>clk_s,reset =>reset_s, enable_in =>en660,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en661) ;
OBS_661:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(661),clk=>clk_s,reset =>reset_s, enable_in =>en661,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en662) ;
OBS_662:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(662),clk=>clk_s,reset =>reset_s, enable_in =>en662,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en663) ;
OBS_663:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(663),clk=>clk_s,reset =>reset_s, enable_in =>en663,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en664) ;
OBS_664:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(664),clk=>clk_s,reset =>reset_s, enable_in =>en664,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en665) ;
OBS_665:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(665),clk=>clk_s,reset =>reset_s, enable_in =>en665,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en666) ;
OBS_666:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(666),clk=>clk_s,reset =>reset_s, enable_in =>en666,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en667) ;
OBS_667:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(667),clk=>clk_s,reset =>reset_s, enable_in =>en667,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en668) ;
OBS_668:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(668),clk=>clk_s,reset =>reset_s, enable_in =>en668,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en669) ;
OBS_669:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(669),clk=>clk_s,reset =>reset_s, enable_in =>en669,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en670) ;
OBS_670:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(670),clk=>clk_s,reset =>reset_s, enable_in =>en670,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en671) ;
OBS_671:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(671),clk=>clk_s,reset =>reset_s, enable_in =>en671,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en672) ;
OBS_672:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(672),clk=>clk_s,reset =>reset_s, enable_in =>en672,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en673) ;
OBS_673:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(673),clk=>clk_s,reset =>reset_s, enable_in =>en673,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en674) ;
OBS_674:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(674),clk=>clk_s,reset =>reset_s, enable_in =>en674,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en675) ;
OBS_675:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(675),clk=>clk_s,reset =>reset_s, enable_in =>en675,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en676) ;
OBS_676:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(676),clk=>clk_s,reset =>reset_s, enable_in =>en676,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en677) ;
OBS_677:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(677),clk=>clk_s,reset =>reset_s, enable_in =>en677,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en678) ;
OBS_678:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(678),clk=>clk_s,reset =>reset_s, enable_in =>en678,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en679) ;
OBS_679:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(679),clk=>clk_s,reset =>reset_s, enable_in =>en679,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en680) ;
OBS_680:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(680),clk=>clk_s,reset =>reset_s, enable_in =>en680,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en681) ;
OBS_681:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(681),clk=>clk_s,reset =>reset_s, enable_in =>en681,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en682) ;
OBS_682:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(682),clk=>clk_s,reset =>reset_s, enable_in =>en682,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en683) ;
OBS_683:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(683),clk=>clk_s,reset =>reset_s, enable_in =>en683,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en684) ;
OBS_684:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(684),clk=>clk_s,reset =>reset_s, enable_in =>en684,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en685) ;
OBS_685:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(685),clk=>clk_s,reset =>reset_s, enable_in =>en685,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en686) ;
OBS_686:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(686),clk=>clk_s,reset =>reset_s, enable_in =>en686,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en687) ;
OBS_687:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(687),clk=>clk_s,reset =>reset_s, enable_in =>en687,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en688) ;
OBS_688:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(688),clk=>clk_s,reset =>reset_s, enable_in =>en688,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en689) ;
OBS_689:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(689),clk=>clk_s,reset =>reset_s, enable_in =>en689,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en690) ;
OBS_690:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(690),clk=>clk_s,reset =>reset_s, enable_in =>en690,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en691) ;
OBS_691:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(691),clk=>clk_s,reset =>reset_s, enable_in =>en691,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en692) ;
OBS_692:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(692),clk=>clk_s,reset =>reset_s, enable_in =>en692,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en693) ;
OBS_693:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(693),clk=>clk_s,reset =>reset_s, enable_in =>en693,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en694) ;
OBS_694:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(694),clk=>clk_s,reset =>reset_s, enable_in =>en694,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en695) ;
OBS_695:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(695),clk=>clk_s,reset =>reset_s, enable_in =>en695,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en696) ;
OBS_696:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(696),clk=>clk_s,reset =>reset_s, enable_in =>en696,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en697) ;
OBS_697:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(697),clk=>clk_s,reset =>reset_s, enable_in =>en697,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en698) ;
OBS_698:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(698),clk=>clk_s,reset =>reset_s, enable_in =>en698,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en699) ;
OBS_699:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(699),clk=>clk_s,reset =>reset_s, enable_in =>en699,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en700) ;
OBS_700:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(700),clk=>clk_s,reset =>reset_s, enable_in =>en700,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en701) ;
OBS_701:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(701),clk=>clk_s,reset =>reset_s, enable_in =>en701,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en702) ;
OBS_702:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(702),clk=>clk_s,reset =>reset_s, enable_in =>en702,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en703) ;
OBS_703:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(703),clk=>clk_s,reset =>reset_s, enable_in =>en703,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en704) ;
OBS_704:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(704),clk=>clk_s,reset =>reset_s, enable_in =>en704,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en705) ;
OBS_705:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(705),clk=>clk_s,reset =>reset_s, enable_in =>en705,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en706) ;
OBS_706:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(706),clk=>clk_s,reset =>reset_s, enable_in =>en706,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en707) ;
OBS_707:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(707),clk=>clk_s,reset =>reset_s, enable_in =>en707,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en708) ;
OBS_708:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(708),clk=>clk_s,reset =>reset_s, enable_in =>en708,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en709) ;
OBS_709:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(709),clk=>clk_s,reset =>reset_s, enable_in =>en709,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en710) ;
OBS_710:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(710),clk=>clk_s,reset =>reset_s, enable_in =>en710,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en711) ;
OBS_711:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(711),clk=>clk_s,reset =>reset_s, enable_in =>en711,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en712) ;
OBS_712:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(712),clk=>clk_s,reset =>reset_s, enable_in =>en712,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en713) ;
OBS_713:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(713),clk=>clk_s,reset =>reset_s, enable_in =>en713,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en714) ;
OBS_714:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(714),clk=>clk_s,reset =>reset_s, enable_in =>en714,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en715) ;
OBS_715:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(715),clk=>clk_s,reset =>reset_s, enable_in =>en715,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en716) ;
OBS_716:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(716),clk=>clk_s,reset =>reset_s, enable_in =>en716,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en717) ;
OBS_717:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(717),clk=>clk_s,reset =>reset_s, enable_in =>en717,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en718) ;
OBS_718:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(718),clk=>clk_s,reset =>reset_s, enable_in =>en718,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en719) ;
OBS_719:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(719),clk=>clk_s,reset =>reset_s, enable_in =>en719,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en720) ;
OBS_720:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(720),clk=>clk_s,reset =>reset_s, enable_in =>en720,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en721) ;
OBS_721:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(721),clk=>clk_s,reset =>reset_s, enable_in =>en721,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en722) ;
OBS_722:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(722),clk=>clk_s,reset =>reset_s, enable_in =>en722,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en723) ;
OBS_723:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(723),clk=>clk_s,reset =>reset_s, enable_in =>en723,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en724) ;
OBS_724:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(724),clk=>clk_s,reset =>reset_s, enable_in =>en724,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en725) ;
OBS_725:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(725),clk=>clk_s,reset =>reset_s, enable_in =>en725,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en726) ;
OBS_726:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(726),clk=>clk_s,reset =>reset_s, enable_in =>en726,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en727) ;
OBS_727:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(727),clk=>clk_s,reset =>reset_s, enable_in =>en727,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en728) ;
OBS_728:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(728),clk=>clk_s,reset =>reset_s, enable_in =>en728,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en729) ;
OBS_729:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(729),clk=>clk_s,reset =>reset_s, enable_in =>en729,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en730) ;
OBS_730:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(730),clk=>clk_s,reset =>reset_s, enable_in =>en730,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en731) ;
OBS_731:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(731),clk=>clk_s,reset =>reset_s, enable_in =>en731,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en732) ;
OBS_732:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(732),clk=>clk_s,reset =>reset_s, enable_in =>en732,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en733) ;
OBS_733:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(733),clk=>clk_s,reset =>reset_s, enable_in =>en733,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en734) ;
OBS_734:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(734),clk=>clk_s,reset =>reset_s, enable_in =>en734,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en735) ;
OBS_735:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(735),clk=>clk_s,reset =>reset_s, enable_in =>en735,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en736) ;
OBS_736:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(736),clk=>clk_s,reset =>reset_s, enable_in =>en736,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en737) ;
OBS_737:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(737),clk=>clk_s,reset =>reset_s, enable_in =>en737,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en738) ;
OBS_738:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(738),clk=>clk_s,reset =>reset_s, enable_in =>en738,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en739) ;
OBS_739:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(739),clk=>clk_s,reset =>reset_s, enable_in =>en739,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en740) ;
OBS_740:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(740),clk=>clk_s,reset =>reset_s, enable_in =>en740,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en741) ;
OBS_741:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(741),clk=>clk_s,reset =>reset_s, enable_in =>en741,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en742) ;
OBS_742:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(742),clk=>clk_s,reset =>reset_s, enable_in =>en742,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en743) ;
OBS_743:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(743),clk=>clk_s,reset =>reset_s, enable_in =>en743,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en744) ;
OBS_744:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(744),clk=>clk_s,reset =>reset_s, enable_in =>en744,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en745) ;
OBS_745:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(745),clk=>clk_s,reset =>reset_s, enable_in =>en745,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en746) ;
OBS_746:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(746),clk=>clk_s,reset =>reset_s, enable_in =>en746,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en747) ;
OBS_747:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(747),clk=>clk_s,reset =>reset_s, enable_in =>en747,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en748) ;
OBS_748:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(748),clk=>clk_s,reset =>reset_s, enable_in =>en748,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en749) ;
OBS_749:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(749),clk=>clk_s,reset =>reset_s, enable_in =>en749,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en750) ;
OBS_750:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(750),clk=>clk_s,reset =>reset_s, enable_in =>en750,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en751) ;
OBS_751:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(751),clk=>clk_s,reset =>reset_s, enable_in =>en751,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en752) ;
OBS_752:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(752),clk=>clk_s,reset =>reset_s, enable_in =>en752,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en753) ;
OBS_753:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(753),clk=>clk_s,reset =>reset_s, enable_in =>en753,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en754) ;
OBS_754:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(754),clk=>clk_s,reset =>reset_s, enable_in =>en754,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en755) ;
OBS_755:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(755),clk=>clk_s,reset =>reset_s, enable_in =>en755,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en756) ;
OBS_756:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(756),clk=>clk_s,reset =>reset_s, enable_in =>en756,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en757) ;
OBS_757:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(757),clk=>clk_s,reset =>reset_s, enable_in =>en757,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en758) ;
OBS_758:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(758),clk=>clk_s,reset =>reset_s, enable_in =>en758,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en759) ;
OBS_759:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(759),clk=>clk_s,reset =>reset_s, enable_in =>en759,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en760) ;
OBS_760:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(760),clk=>clk_s,reset =>reset_s, enable_in =>en760,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en761) ;
OBS_761:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(761),clk=>clk_s,reset =>reset_s, enable_in =>en761,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en762) ;
OBS_762:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(762),clk=>clk_s,reset =>reset_s, enable_in =>en762,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en763) ;
OBS_763:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(763),clk=>clk_s,reset =>reset_s, enable_in =>en763,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en764) ;
OBS_764:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(764),clk=>clk_s,reset =>reset_s, enable_in =>en764,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en765) ;
OBS_765:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(765),clk=>clk_s,reset =>reset_s, enable_in =>en765,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en766) ;
OBS_766:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(766),clk=>clk_s,reset =>reset_s, enable_in =>en766,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en767) ;
OBS_767:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(767),clk=>clk_s,reset =>reset_s, enable_in =>en767,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en768) ;
OBS_768:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(768),clk=>clk_s,reset =>reset_s, enable_in =>en768,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en769) ;
OBS_769:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(769),clk=>clk_s,reset =>reset_s, enable_in =>en769,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en770) ;
OBS_770:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(770),clk=>clk_s,reset =>reset_s, enable_in =>en770,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en771) ;
OBS_771:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(771),clk=>clk_s,reset =>reset_s, enable_in =>en771,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en772) ;
OBS_772:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(772),clk=>clk_s,reset =>reset_s, enable_in =>en772,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en773) ;
OBS_773:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(773),clk=>clk_s,reset =>reset_s, enable_in =>en773,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en774) ;
OBS_774:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(774),clk=>clk_s,reset =>reset_s, enable_in =>en774,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en775) ;
OBS_775:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(775),clk=>clk_s,reset =>reset_s, enable_in =>en775,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en776) ;
OBS_776:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(776),clk=>clk_s,reset =>reset_s, enable_in =>en776,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en777) ;
OBS_777:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(777),clk=>clk_s,reset =>reset_s, enable_in =>en777,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en778) ;
OBS_778:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(778),clk=>clk_s,reset =>reset_s, enable_in =>en778,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en779) ;
OBS_779:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(779),clk=>clk_s,reset =>reset_s, enable_in =>en779,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en780) ;
OBS_780:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(780),clk=>clk_s,reset =>reset_s, enable_in =>en780,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en781) ;
OBS_781:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(781),clk=>clk_s,reset =>reset_s, enable_in =>en781,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en782) ;
OBS_782:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(782),clk=>clk_s,reset =>reset_s, enable_in =>en782,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en783) ;
OBS_783:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(783),clk=>clk_s,reset =>reset_s, enable_in =>en783,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en784) ;
OBS_784:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(784),clk=>clk_s,reset =>reset_s, enable_in =>en784,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en785) ;
OBS_785:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(785),clk=>clk_s,reset =>reset_s, enable_in =>en785,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en786) ;
OBS_786:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(786),clk=>clk_s,reset =>reset_s, enable_in =>en786,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en787) ;
OBS_787:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(787),clk=>clk_s,reset =>reset_s, enable_in =>en787,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en788) ;
OBS_788:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(788),clk=>clk_s,reset =>reset_s, enable_in =>en788,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en789) ;
OBS_789:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(789),clk=>clk_s,reset =>reset_s, enable_in =>en789,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en790) ;
OBS_790:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(790),clk=>clk_s,reset =>reset_s, enable_in =>en790,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en791) ;
OBS_791:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(791),clk=>clk_s,reset =>reset_s, enable_in =>en791,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en792) ;
OBS_792:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(792),clk=>clk_s,reset =>reset_s, enable_in =>en792,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en793) ;
OBS_793:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(793),clk=>clk_s,reset =>reset_s, enable_in =>en793,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en794) ;
OBS_794:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(794),clk=>clk_s,reset =>reset_s, enable_in =>en794,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en795) ;
OBS_795:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(795),clk=>clk_s,reset =>reset_s, enable_in =>en795,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en796) ;
OBS_796:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(796),clk=>clk_s,reset =>reset_s, enable_in =>en796,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en797) ;
OBS_797:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(797),clk=>clk_s,reset =>reset_s, enable_in =>en797,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en798) ;
OBS_798:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(798),clk=>clk_s,reset =>reset_s, enable_in =>en798,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en799) ;
OBS_799:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(799),clk=>clk_s,reset =>reset_s, enable_in =>en799,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en800) ;
OBS_800:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(800),clk=>clk_s,reset =>reset_s, enable_in =>en800,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en801) ;
OBS_801:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(801),clk=>clk_s,reset =>reset_s, enable_in =>en801,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en802) ;
OBS_802:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(802),clk=>clk_s,reset =>reset_s, enable_in =>en802,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en803) ;
OBS_803:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(803),clk=>clk_s,reset =>reset_s, enable_in =>en803,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en804) ;
OBS_804:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(804),clk=>clk_s,reset =>reset_s, enable_in =>en804,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en805) ;
OBS_805:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(805),clk=>clk_s,reset =>reset_s, enable_in =>en805,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en806) ;
OBS_806:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(806),clk=>clk_s,reset =>reset_s, enable_in =>en806,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en807) ;
OBS_807:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(807),clk=>clk_s,reset =>reset_s, enable_in =>en807,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en808) ;
OBS_808:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(808),clk=>clk_s,reset =>reset_s, enable_in =>en808,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en809) ;
OBS_809:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(809),clk=>clk_s,reset =>reset_s, enable_in =>en809,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en810) ;
OBS_810:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(810),clk=>clk_s,reset =>reset_s, enable_in =>en810,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en811) ;
OBS_811:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(811),clk=>clk_s,reset =>reset_s, enable_in =>en811,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en812) ;
OBS_812:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(812),clk=>clk_s,reset =>reset_s, enable_in =>en812,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en813) ;
OBS_813:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(813),clk=>clk_s,reset =>reset_s, enable_in =>en813,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en814) ;
OBS_814:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(814),clk=>clk_s,reset =>reset_s, enable_in =>en814,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en815) ;
OBS_815:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(815),clk=>clk_s,reset =>reset_s, enable_in =>en815,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en816) ;
OBS_816:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(816),clk=>clk_s,reset =>reset_s, enable_in =>en816,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en817) ;
OBS_817:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(817),clk=>clk_s,reset =>reset_s, enable_in =>en817,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en818) ;
OBS_818:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(818),clk=>clk_s,reset =>reset_s, enable_in =>en818,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en819) ;
OBS_819:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(819),clk=>clk_s,reset =>reset_s, enable_in =>en819,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en820) ;
OBS_820:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(820),clk=>clk_s,reset =>reset_s, enable_in =>en820,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en821) ;
OBS_821:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(821),clk=>clk_s,reset =>reset_s, enable_in =>en821,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en822) ;
OBS_822:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(822),clk=>clk_s,reset =>reset_s, enable_in =>en822,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en823) ;
OBS_823:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(823),clk=>clk_s,reset =>reset_s, enable_in =>en823,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en824) ;
OBS_824:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(824),clk=>clk_s,reset =>reset_s, enable_in =>en824,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en825) ;
OBS_825:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(825),clk=>clk_s,reset =>reset_s, enable_in =>en825,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en826) ;
OBS_826:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(826),clk=>clk_s,reset =>reset_s, enable_in =>en826,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en827) ;
OBS_827:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(827),clk=>clk_s,reset =>reset_s, enable_in =>en827,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en828) ;
OBS_828:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(828),clk=>clk_s,reset =>reset_s, enable_in =>en828,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en829) ;
OBS_829:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(829),clk=>clk_s,reset =>reset_s, enable_in =>en829,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en830) ;
OBS_830:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(830),clk=>clk_s,reset =>reset_s, enable_in =>en830,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en831) ;
OBS_831:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(831),clk=>clk_s,reset =>reset_s, enable_in =>en831,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en832) ;
OBS_832:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(832),clk=>clk_s,reset =>reset_s, enable_in =>en832,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en833) ;
OBS_833:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(833),clk=>clk_s,reset =>reset_s, enable_in =>en833,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en834) ;
OBS_834:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(834),clk=>clk_s,reset =>reset_s, enable_in =>en834,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en835) ;
OBS_835:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(835),clk=>clk_s,reset =>reset_s, enable_in =>en835,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en836) ;
OBS_836:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(836),clk=>clk_s,reset =>reset_s, enable_in =>en836,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en837) ;
OBS_837:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(837),clk=>clk_s,reset =>reset_s, enable_in =>en837,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en838) ;
OBS_838:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(838),clk=>clk_s,reset =>reset_s, enable_in =>en838,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en839) ;
OBS_839:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(839),clk=>clk_s,reset =>reset_s, enable_in =>en839,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en840) ;
OBS_840:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(840),clk=>clk_s,reset =>reset_s, enable_in =>en840,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en841) ;
OBS_841:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(841),clk=>clk_s,reset =>reset_s, enable_in =>en841,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en842) ;
OBS_842:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(842),clk=>clk_s,reset =>reset_s, enable_in =>en842,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en843) ;
OBS_843:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(843),clk=>clk_s,reset =>reset_s, enable_in =>en843,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en844) ;
OBS_844:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(844),clk=>clk_s,reset =>reset_s, enable_in =>en844,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en845) ;
OBS_845:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(845),clk=>clk_s,reset =>reset_s, enable_in =>en845,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en846) ;
OBS_846:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(846),clk=>clk_s,reset =>reset_s, enable_in =>en846,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en847) ;
OBS_847:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(847),clk=>clk_s,reset =>reset_s, enable_in =>en847,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en848) ;
OBS_848:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(848),clk=>clk_s,reset =>reset_s, enable_in =>en848,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en849) ;
OBS_849:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(849),clk=>clk_s,reset =>reset_s, enable_in =>en849,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en850) ;
OBS_850:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(850),clk=>clk_s,reset =>reset_s, enable_in =>en850,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en851) ;
OBS_851:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(851),clk=>clk_s,reset =>reset_s, enable_in =>en851,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en852) ;
OBS_852:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(852),clk=>clk_s,reset =>reset_s, enable_in =>en852,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en853) ;
OBS_853:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(853),clk=>clk_s,reset =>reset_s, enable_in =>en853,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en854) ;
OBS_854:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(854),clk=>clk_s,reset =>reset_s, enable_in =>en854,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en855) ;
OBS_855:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(855),clk=>clk_s,reset =>reset_s, enable_in =>en855,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en856) ;
OBS_856:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(856),clk=>clk_s,reset =>reset_s, enable_in =>en856,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en857) ;
OBS_857:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(857),clk=>clk_s,reset =>reset_s, enable_in =>en857,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en858) ;
OBS_858:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(858),clk=>clk_s,reset =>reset_s, enable_in =>en858,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en859) ;
OBS_859:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(859),clk=>clk_s,reset =>reset_s, enable_in =>en859,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en860) ;
OBS_860:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(860),clk=>clk_s,reset =>reset_s, enable_in =>en860,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en861) ;
OBS_861:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(861),clk=>clk_s,reset =>reset_s, enable_in =>en861,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en862) ;
OBS_862:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(862),clk=>clk_s,reset =>reset_s, enable_in =>en862,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en863) ;
OBS_863:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(863),clk=>clk_s,reset =>reset_s, enable_in =>en863,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en864) ;
OBS_864:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(864),clk=>clk_s,reset =>reset_s, enable_in =>en864,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en865) ;
OBS_865:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(865),clk=>clk_s,reset =>reset_s, enable_in =>en865,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en866) ;
OBS_866:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(866),clk=>clk_s,reset =>reset_s, enable_in =>en866,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en867) ;
OBS_867:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(867),clk=>clk_s,reset =>reset_s, enable_in =>en867,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en868) ;
OBS_868:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(868),clk=>clk_s,reset =>reset_s, enable_in =>en868,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en869) ;
OBS_869:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(869),clk=>clk_s,reset =>reset_s, enable_in =>en869,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en870) ;
OBS_870:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(870),clk=>clk_s,reset =>reset_s, enable_in =>en870,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en871) ;
OBS_871:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(871),clk=>clk_s,reset =>reset_s, enable_in =>en871,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en872) ;
OBS_872:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(872),clk=>clk_s,reset =>reset_s, enable_in =>en872,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en873) ;
OBS_873:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(873),clk=>clk_s,reset =>reset_s, enable_in =>en873,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en874) ;
OBS_874:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(874),clk=>clk_s,reset =>reset_s, enable_in =>en874,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en875) ;
OBS_875:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(875),clk=>clk_s,reset =>reset_s, enable_in =>en875,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en876) ;
OBS_876:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(876),clk=>clk_s,reset =>reset_s, enable_in =>en876,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en877) ;
OBS_877:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(877),clk=>clk_s,reset =>reset_s, enable_in =>en877,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en878) ;
OBS_878:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(878),clk=>clk_s,reset =>reset_s, enable_in =>en878,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en879) ;
OBS_879:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(879),clk=>clk_s,reset =>reset_s, enable_in =>en879,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en880) ;
OBS_880:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(880),clk=>clk_s,reset =>reset_s, enable_in =>en880,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en881) ;
OBS_881:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(881),clk=>clk_s,reset =>reset_s, enable_in =>en881,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en882) ;
OBS_882:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(882),clk=>clk_s,reset =>reset_s, enable_in =>en882,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en883) ;
OBS_883:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(883),clk=>clk_s,reset =>reset_s, enable_in =>en883,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en884) ;
OBS_884:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(884),clk=>clk_s,reset =>reset_s, enable_in =>en884,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en885) ;
OBS_885:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(885),clk=>clk_s,reset =>reset_s, enable_in =>en885,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en886) ;
OBS_886:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(886),clk=>clk_s,reset =>reset_s, enable_in =>en886,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en887) ;
OBS_887:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(887),clk=>clk_s,reset =>reset_s, enable_in =>en887,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en888) ;
OBS_888:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(888),clk=>clk_s,reset =>reset_s, enable_in =>en888,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en889) ;
OBS_889:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(889),clk=>clk_s,reset =>reset_s, enable_in =>en889,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en890) ;
OBS_890:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(890),clk=>clk_s,reset =>reset_s, enable_in =>en890,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en891) ;
OBS_891:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(891),clk=>clk_s,reset =>reset_s, enable_in =>en891,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en892) ;
OBS_892:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(892),clk=>clk_s,reset =>reset_s, enable_in =>en892,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en893) ;
OBS_893:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(893),clk=>clk_s,reset =>reset_s, enable_in =>en893,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en894) ;
OBS_894:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(894),clk=>clk_s,reset =>reset_s, enable_in =>en894,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en895) ;
OBS_895:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(895),clk=>clk_s,reset =>reset_s, enable_in =>en895,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en896) ;
OBS_896:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(896),clk=>clk_s,reset =>reset_s, enable_in =>en896,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en897) ;
OBS_897:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(897),clk=>clk_s,reset =>reset_s, enable_in =>en897,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en898) ;
OBS_898:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(898),clk=>clk_s,reset =>reset_s, enable_in =>en898,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en899) ;
OBS_899:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(899),clk=>clk_s,reset =>reset_s, enable_in =>en899,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en900) ;
OBS_900:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(900),clk=>clk_s,reset =>reset_s, enable_in =>en900,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en901) ;
OBS_901:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(901),clk=>clk_s,reset =>reset_s, enable_in =>en901,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en902) ;
OBS_902:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(902),clk=>clk_s,reset =>reset_s, enable_in =>en902,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en903) ;
OBS_903:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(903),clk=>clk_s,reset =>reset_s, enable_in =>en903,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en904) ;
OBS_904:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(904),clk=>clk_s,reset =>reset_s, enable_in =>en904,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en905) ;
OBS_905:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(905),clk=>clk_s,reset =>reset_s, enable_in =>en905,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en906) ;
OBS_906:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(906),clk=>clk_s,reset =>reset_s, enable_in =>en906,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en907) ;
OBS_907:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(907),clk=>clk_s,reset =>reset_s, enable_in =>en907,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en908) ;
OBS_908:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(908),clk=>clk_s,reset =>reset_s, enable_in =>en908,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en909) ;
OBS_909:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(909),clk=>clk_s,reset =>reset_s, enable_in =>en909,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en910) ;
OBS_910:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(910),clk=>clk_s,reset =>reset_s, enable_in =>en910,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en911) ;
OBS_911:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(911),clk=>clk_s,reset =>reset_s, enable_in =>en911,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en912) ;
OBS_912:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(912),clk=>clk_s,reset =>reset_s, enable_in =>en912,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en913) ;
OBS_913:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(913),clk=>clk_s,reset =>reset_s, enable_in =>en913,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en914) ;
OBS_914:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(914),clk=>clk_s,reset =>reset_s, enable_in =>en914,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en915) ;
OBS_915:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(915),clk=>clk_s,reset =>reset_s, enable_in =>en915,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en916) ;
OBS_916:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(916),clk=>clk_s,reset =>reset_s, enable_in =>en916,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en917) ;
OBS_917:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(917),clk=>clk_s,reset =>reset_s, enable_in =>en917,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en918) ;
OBS_918:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(918),clk=>clk_s,reset =>reset_s, enable_in =>en918,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en919) ;
OBS_919:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(919),clk=>clk_s,reset =>reset_s, enable_in =>en919,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en920) ;
OBS_920:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(920),clk=>clk_s,reset =>reset_s, enable_in =>en920,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en921) ;
OBS_921:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(921),clk=>clk_s,reset =>reset_s, enable_in =>en921,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en922) ;
OBS_922:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(922),clk=>clk_s,reset =>reset_s, enable_in =>en922,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en923) ;
OBS_923:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(923),clk=>clk_s,reset =>reset_s, enable_in =>en923,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en924) ;
OBS_924:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(924),clk=>clk_s,reset =>reset_s, enable_in =>en924,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en925) ;
OBS_925:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(925),clk=>clk_s,reset =>reset_s, enable_in =>en925,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en926) ;
OBS_926:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(926),clk=>clk_s,reset =>reset_s, enable_in =>en926,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en927) ;
OBS_927:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(927),clk=>clk_s,reset =>reset_s, enable_in =>en927,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en928) ;
OBS_928:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(928),clk=>clk_s,reset =>reset_s, enable_in =>en928,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en929) ;
OBS_929:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(929),clk=>clk_s,reset =>reset_s, enable_in =>en929,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en930) ;
OBS_930:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(930),clk=>clk_s,reset =>reset_s, enable_in =>en930,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en931) ;
OBS_931:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(931),clk=>clk_s,reset =>reset_s, enable_in =>en931,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en932) ;
OBS_932:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(932),clk=>clk_s,reset =>reset_s, enable_in =>en932,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en933) ;
OBS_933:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(933),clk=>clk_s,reset =>reset_s, enable_in =>en933,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en934) ;
OBS_934:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(934),clk=>clk_s,reset =>reset_s, enable_in =>en934,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en935) ;
OBS_935:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(935),clk=>clk_s,reset =>reset_s, enable_in =>en935,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en936) ;
OBS_936:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(936),clk=>clk_s,reset =>reset_s, enable_in =>en936,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en937) ;
OBS_937:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(937),clk=>clk_s,reset =>reset_s, enable_in =>en937,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en938) ;
OBS_938:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(938),clk=>clk_s,reset =>reset_s, enable_in =>en938,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en939) ;
OBS_939:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(939),clk=>clk_s,reset =>reset_s, enable_in =>en939,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en940) ;
OBS_940:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(940),clk=>clk_s,reset =>reset_s, enable_in =>en940,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en941) ;
OBS_941:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(941),clk=>clk_s,reset =>reset_s, enable_in =>en941,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en942) ;
OBS_942:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(942),clk=>clk_s,reset =>reset_s, enable_in =>en942,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en943) ;
OBS_943:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(943),clk=>clk_s,reset =>reset_s, enable_in =>en943,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en944) ;
OBS_944:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(944),clk=>clk_s,reset =>reset_s, enable_in =>en944,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en945) ;
OBS_945:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(945),clk=>clk_s,reset =>reset_s, enable_in =>en945,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en946) ;
OBS_946:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(946),clk=>clk_s,reset =>reset_s, enable_in =>en946,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en947) ;
OBS_947:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(947),clk=>clk_s,reset =>reset_s, enable_in =>en947,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en948) ;
OBS_948:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(948),clk=>clk_s,reset =>reset_s, enable_in =>en948,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en949) ;
OBS_949:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(949),clk=>clk_s,reset =>reset_s, enable_in =>en949,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en950) ;
OBS_950:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(950),clk=>clk_s,reset =>reset_s, enable_in =>en950,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en951) ;
OBS_951:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(951),clk=>clk_s,reset =>reset_s, enable_in =>en951,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en952) ;
OBS_952:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(952),clk=>clk_s,reset =>reset_s, enable_in =>en952,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en953) ;
OBS_953:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(953),clk=>clk_s,reset =>reset_s, enable_in =>en953,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en954) ;
OBS_954:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(954),clk=>clk_s,reset =>reset_s, enable_in =>en954,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en955) ;
OBS_955:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(955),clk=>clk_s,reset =>reset_s, enable_in =>en955,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en956) ;
OBS_956:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(956),clk=>clk_s,reset =>reset_s, enable_in =>en956,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en957) ;
OBS_957:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(957),clk=>clk_s,reset =>reset_s, enable_in =>en957,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en958) ;
OBS_958:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(958),clk=>clk_s,reset =>reset_s, enable_in =>en958,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en959) ;
OBS_959:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(959),clk=>clk_s,reset =>reset_s, enable_in =>en959,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en960) ;
OBS_960:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(960),clk=>clk_s,reset =>reset_s, enable_in =>en960,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en961) ;
OBS_961:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(961),clk=>clk_s,reset =>reset_s, enable_in =>en961,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en962) ;
OBS_962:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(962),clk=>clk_s,reset =>reset_s, enable_in =>en962,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en963) ;
OBS_963:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(963),clk=>clk_s,reset =>reset_s, enable_in =>en963,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en964) ;
OBS_964:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(964),clk=>clk_s,reset =>reset_s, enable_in =>en964,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en965) ;
OBS_965:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(965),clk=>clk_s,reset =>reset_s, enable_in =>en965,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en966) ;
OBS_966:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(966),clk=>clk_s,reset =>reset_s, enable_in =>en966,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en967) ;
OBS_967:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(967),clk=>clk_s,reset =>reset_s, enable_in =>en967,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en968) ;
OBS_968:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(968),clk=>clk_s,reset =>reset_s, enable_in =>en968,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en969) ;
OBS_969:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(969),clk=>clk_s,reset =>reset_s, enable_in =>en969,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en970) ;
OBS_970:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(970),clk=>clk_s,reset =>reset_s, enable_in =>en970,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en971) ;
OBS_971:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(971),clk=>clk_s,reset =>reset_s, enable_in =>en971,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en972) ;
OBS_972:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(972),clk=>clk_s,reset =>reset_s, enable_in =>en972,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en973) ;
OBS_973:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(973),clk=>clk_s,reset =>reset_s, enable_in =>en973,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en974) ;
OBS_974:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(974),clk=>clk_s,reset =>reset_s, enable_in =>en974,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en975) ;
OBS_975:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(975),clk=>clk_s,reset =>reset_s, enable_in =>en975,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en976) ;
OBS_976:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(976),clk=>clk_s,reset =>reset_s, enable_in =>en976,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en977) ;
OBS_977:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(977),clk=>clk_s,reset =>reset_s, enable_in =>en977,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en978) ;
OBS_978:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(978),clk=>clk_s,reset =>reset_s, enable_in =>en978,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en979) ;
OBS_979:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(979),clk=>clk_s,reset =>reset_s, enable_in =>en979,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en980) ;
OBS_980:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(980),clk=>clk_s,reset =>reset_s, enable_in =>en980,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en981) ;
OBS_981:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(981),clk=>clk_s,reset =>reset_s, enable_in =>en981,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en982) ;
OBS_982:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(982),clk=>clk_s,reset =>reset_s, enable_in =>en982,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en983) ;
OBS_983:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(983),clk=>clk_s,reset =>reset_s, enable_in =>en983,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en984) ;
OBS_984:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(984),clk=>clk_s,reset =>reset_s, enable_in =>en984,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en985) ;
OBS_985:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(985),clk=>clk_s,reset =>reset_s, enable_in =>en985,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en986) ;
OBS_986:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(986),clk=>clk_s,reset =>reset_s, enable_in =>en986,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en987) ;
OBS_987:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(987),clk=>clk_s,reset =>reset_s, enable_in =>en987,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en988) ;
OBS_988:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(988),clk=>clk_s,reset =>reset_s, enable_in =>en988,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en989) ;
OBS_989:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(989),clk=>clk_s,reset =>reset_s, enable_in =>en989,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en990) ;
OBS_990:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(990),clk=>clk_s,reset =>reset_s, enable_in =>en990,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en991) ;
OBS_991:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(991),clk=>clk_s,reset =>reset_s, enable_in =>en991,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en992) ;
OBS_992:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(992),clk=>clk_s,reset =>reset_s, enable_in =>en992,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en993) ;
OBS_993:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(993),clk=>clk_s,reset =>reset_s, enable_in =>en993,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en994) ;
OBS_994:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(994),clk=>clk_s,reset =>reset_s, enable_in =>en994,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en995) ;
OBS_995:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(995),clk=>clk_s,reset =>reset_s, enable_in =>en995,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en996) ;
OBS_996:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(996),clk=>clk_s,reset =>reset_s, enable_in =>en996,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en997) ;
OBS_997:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(997),clk=>clk_s,reset =>reset_s, enable_in =>en997,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en998) ;
OBS_998:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(998),clk=>clk_s,reset =>reset_s, enable_in =>en998,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=>en999) ;
OBS_999:  observer GENERIC MAP(observernumber => x"03E8")
    PORT MAP ( output=>add(999),clk=>clk_s,reset =>reset_s, enable_in =>en999,invariance_tau => tau_s,signal_phi=> phi_s,enable_out=> next_obs_s) ;

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
