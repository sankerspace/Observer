
set tb "Five_observer_testbench"

project compileoutofdate

vsim -msgmode both -displaymsgmode both -novopt work.$tb

add wave -hex tau_s
add wave clk_s
add wave reset_s
add wave enable_s
add wave en1
add wave en2
add wave en3
add wave en4
add wave next_obs_s
add wave  -color "yellow" phi_s 
add wave  -color "orange" /Five_observer_testbench/OBS_1/cycle
add wave  -color "orange" /Five_observer_testbench/OBS_1/count_p
add wave  -color "light blue" add1
add wave  -color "orange" /Five_observer_testbench/OBS_2/cycle
add wave  -color "orange" /Five_observer_testbench/OBS_2/count_p
add wave  -color "light blue" add2
add wave  -color "orange" /Five_observer_testbench/OBS_3/cycle
add wave  -color "orange" /Five_observer_testbench/OBS_3/count_p
add wave  -color "light blue" add3
add wave  -color "orange" /Five_observer_testbench/OBS_4/cycle
add wave  -color "orange" /Five_observer_testbench/OBS_4/count_p
add wave  -color "light blue" add4
add wave  -color "orange" /Five_observer_testbench/OBS_5/cycle
add wave  -color "orange" /Five_observer_testbench/OBS_5/count_p
add wave  -color "light blue" add5
add wave  -color "red" output_s


run 2000ms
wave zoom full