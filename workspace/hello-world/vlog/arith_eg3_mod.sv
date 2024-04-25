module arith_eg3_mod(
    input clk,
    input rst,
    input int a,
    input int b,
    input [1:0] sel,
    output int r
);
    int w_a;
    int w_b;
    int w_r;
    logic [1:0] w_s;

    always_ff @(posedge clk) begin
        if(rst) begin
            r <= 0;
        end
        else begin
            w_a <= a;
            w_b <= b;
            w_s <= sel;
            r   <= w_r;
        end
    end

    always_comb begin
        case (w_s)
            2'b00: w_r = w_a + w_b;
            2'b01: w_r = w_a - w_b;
            2'b10: w_r = w_a * w_b;
            2'b11: w_r = (w_b != 0) ? w_a / w_b : -1;
        endcase      
    end

endmodule
