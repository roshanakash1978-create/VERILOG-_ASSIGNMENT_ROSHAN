module tb_sequencedetect;
  reg clk;
  reg reset;
  reg din;
  wire detected;

  sequencedetect uut (
    .clk(clk), 
    .reset(reset), 
    .din(din), 
    .detected(detected)
  );

  always begin
    #10 clk = ~clk;
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1, tb_sequencedetect); 
    clk = 0;
    reset = 1;
    din = 0;
    #25;   
    reset = 0;
    #20;   
    din = 1;
    #20;    
    din = 1;
    #20;   
    din = 1;
    #20;   
    din = 0;
    #20;    
    $finish;
  end     
endmodule
