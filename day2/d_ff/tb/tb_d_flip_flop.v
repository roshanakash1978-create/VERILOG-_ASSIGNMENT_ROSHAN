module d_flip_flop_tb;
    reg D;
    reg clk;
    wire Q;
    d_flip_flop dut (
        .D(D),
        .clk(clk),
        .Q(Q)
    );
    always #5 clk = ~clk;
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, d_flip_flop_tb);
        $monitor("Time = %0d | clk = %b | D = %b | Q = %b", $time, clk, D, Q);
    end
    initial begin
        clk = 0;
        D = 0;
        #12;      
        D = 1;
        #10;
        D = 0;
        #10;
        D = 1;
        #20;
        $finish;
    end
endmodule
