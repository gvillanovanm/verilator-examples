CXXFLAGS += -fcoroutines

run_eg1: compil_eg1
	./obj_dir/Vhelloworld_eg1

compil_eg1:
	verilator --binary -j 0 -Wall ../vlog/helloworld_eg1.v

run_eg2: compil_eg2
	./obj_dir/Varith_eg2

compil_eg2:
	verilator -CFLAGS $(CXXFLAGS) --binary -j 0 -Wall --top-module arith_eg2 ../vlog/arith_eg2.sv ../vlog/arith_eg2_mod.sv

run_eg3: compil_eg3
	./obj_dir/Varith_eg3

compil_eg3:
	verilator -CFLAGS $(CXXFLAGS) --binary -j 0 -Wall --top-module arith_eg3 ../vlog/arith_eg3.sv ../vlog/arith_eg3_mod.sv