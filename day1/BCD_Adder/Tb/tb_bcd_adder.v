module tb_bcd_adder;
    reg [3:0] A;
    reg [3:0] B;
    reg cin;
    wire [3:0] Sum;
    wire cout;
    
    bcd_adder dut (
        .A(A),
        .B(B),
        .cin(cin),
        .Sum(Sum),
        .cout(cout)
    );
    
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_bcd_adder);
    end
    
    initial begin
        $monitor("Time=%0dt | A=%d, B=%d, cin=%b -> cout=%b, Sum=%d", 
                 $time, A, B, cin, cout, Sum);
        
        #1; 
        A = 4'd3; B = 4'd4; cin = 0; #10;
        A = 4'd7; B = 4'd6; cin = 0; #10;
        A = 4'd4; B = 4'd5; cin = 0; #10;
        A = 4'd9; B = 4'd9; cin = 1; #10;
        
        #5; 
        $finish;
    end
endmodule
