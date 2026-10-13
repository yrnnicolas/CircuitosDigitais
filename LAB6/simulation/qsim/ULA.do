onerror {exit -code 1}
vlib work
vlog -work work ULA.vo
vlog -work work Waveform_decod.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Decodificador_Display_7_vlg_vec_tst -voptargs="+acc"
vcd file -direction ULA.msim.vcd
vcd add -internal Decodificador_Display_7_vlg_vec_tst/*
vcd add -internal Decodificador_Display_7_vlg_vec_tst/i1/*
run -all
quit -f
