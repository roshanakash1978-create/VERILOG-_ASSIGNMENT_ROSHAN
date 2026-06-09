module d_flip_flop(D,clk,Q);
    input D;
    input clk;
    output reg Q;
    initial begin
        Q = 1'b0;
    end
    always @(posedge clk) begin
        Q <= D;
    end
endmodule
