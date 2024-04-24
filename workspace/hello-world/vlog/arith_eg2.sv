module arith_eg2;
    integer a, b, r;
    logic [1:0] sel;

    arith_eg2_mod uu_arith_eg2_mod(
        .a(a),
        .b(b),
        .sel(sel),
        .r(r)
    );

    initial begin 
        $display("Hello World"); 

        a = 30;
        b = 2;
        sel = 2'b11;
        #1;

        $display("r: %0d", r); 
        $finish; 
    end
endmodule
