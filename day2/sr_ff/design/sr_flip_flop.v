module sr_flip_flop (
    input clk,
    input s,
    input r,
    output reg q
);
    initial begin
        q = 1'b0;
    end
    always @(posedge clk) begin
        case ({s,r})
            2'b00: q <= q;
            2'b01: q <= 1'b0;
            2'b10: q <= 1'b1;
            2'b11: q <= 1'bx;
        endcase
    end
endmodule
