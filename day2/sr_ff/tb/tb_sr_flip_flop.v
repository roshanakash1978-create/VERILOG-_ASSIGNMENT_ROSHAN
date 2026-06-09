module sr_flip_flop_tb;
    reg clk;
    reg s;
    reg r;
    wire q;
    sr_flip_flop uut (
        .clk(clk),
        .s(s),
        .r(r),
        .q(q)
    );
    always #5 clk = ~clk;
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, sr_flip_flop_tb);  
        $monitor("Time = %0dt | CLK = %b | S = %b | R = %b | Q = %b", $time, clk, s, r, q);
    end
    initial begin
        clk = 0;
        s = 0; r = 0;
        #10;
        s = 1; r = 0;
        #10;
        s = 0; r = 0;
        #10;
        s = 0; r = 1;
        #10;
        s = 0; r = 0;
        #10;
        s = 1; r = 1;
        #10;
        $finish;
    end
endmodule
