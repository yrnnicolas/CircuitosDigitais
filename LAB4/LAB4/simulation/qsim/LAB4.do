onerror {exit -code 1}
vlib work
vlog -work work LAB4.vo
vlog -work work WaveformMux21.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DECODER416_vlg_vec_tst -voptargs="+acc"
vcd file -direction LAB4.msim.vcd
vcd add -internal DECODER416_vlg_vec_tst/*
vcd add -internal DECODER416_vlg_vec_tst/i1/*
run -all
quit -f
