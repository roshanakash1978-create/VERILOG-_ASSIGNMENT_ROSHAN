module tb_decoder_2to4;
    reg [1:0] tb_in;
    reg tb_en;
    wire [3:0] tb_out;   
    decoder_2to4_behavioral uut (
        .in(tb_in),
        .en(tb_en),
        .out(tb_out)
    );
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_decoder_2to4);   
        $monitor("Time = %0d, en = %b, in = %b, out = %b", $time, tb_en, tb_in, tb_out);
    end
    initial begin
        tb_en = 0;
        tb_in = 2'b00; #10;
        tb_in = 2'b01; #10;
        tb_in = 2'b10; #10;
        tb_in = 2'b11; #10;       
        tb_en = 1;
        tb_in = 2'b00; #10;
        tb_in = 2'b01; #10;
        tb_in = 2'b10; #10;
        tb_in = 2'b11; #10;       
        tb_en = 0;
        tb_in = 2'b10; #10;
        
        $finish;
    end
endmodule
