module arith_eg2_mod(
    input int a,
    input int b,
    input [1:0] sel,
    output int r
);
    always_comb begin
        case (sel)
            2'b00: r = a + b;
            2'b01: r = a - b;
            2'b10: r = a * b;
            2'b11: r = (b != 0) ? a / b : -1;
        endcase      
    end
endmodule
