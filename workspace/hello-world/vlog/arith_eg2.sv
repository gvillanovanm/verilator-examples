module arith_eg2;
    integer a, b, r;
    logic [1:0] sel;
    localparam NUM_OF_CYCLES = 1000000;

    arith_eg2_mod uu_arith_eg2_mod(
        .a(a),
        .b(b),
        .sel(sel),
        .r(r)
    );

    initial begin 
        $display("Hello World"); 

        for(int i=0; i<NUM_OF_CYCLES; i++) begin
            if(i%(NUM_OF_CYCLES/16) == 0)
                $display("%0.2f %%", real'(i) / real'(NUM_OF_CYCLES) * 100);

            a   = $urandom;
            b   = $urandom  ;

            /* verilator lint_off WIDTHTRUNC */
            sel = $urandom_range(3, 0);
            /* verilator lint_on WIDTHTRUNC */
            #1;

            if(sel == 0) begin
                if(a+b != r)
                    $fatal(1, "Assertion failed: a+b does not equal r");
            end else 
            if(sel == 1) begin
                if(a-b != r)
                    $fatal(1, "Assertion failed: a-b does not equal r");
            end else 
            if(sel == 2) begin
                if(a*b != r)
                    $fatal(1, "Assertion failed: a*b does not equal r");
            end else 
            if(sel == 3) begin
                if(b == 0)
                    if(r != -1)
                        $fatal(1, "Assertion failed: a/b (-1) does not equal r");
                else
                    if(a/b != r)
                        $fatal(1, "Assertion failed: a/b does not equal r");
            end else
                $fatal(1, "It must never reaches here!");
        end
        $display("PASS");
        $finish; 
    end
endmodule
