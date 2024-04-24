run_eg1:
	vsim +nowarn3116 -batch -do "run -all" work.helloworld_eg1

compil_eg1: 
	vlog ../vlog/helloworld_eg1.v

run_eg2:
	vsim +nowarn3116 -batch -do "run -all" work.arith_eg2
	
compil_eg2:
	vlog ../vlog/arith_eg2.sv ../vlog/arith_eg2_mod.sv
