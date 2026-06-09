module usr_tb;
  wire [3:0] DATAOUT;
  reg clock, reset;
  reg [1:0] MODE;
  reg [3:0] DATAIN;  
  usr dut(DATAOUT, clock, reset, MODE, DATAIN);  
  always #5 clock = ~clock;  
  initial begin 
    $dumpfile("dump.vcd"); 
    $dumpvars(0, usr_tb);
    $monitor("Time=%0dt | Reset=%b | Mode=%b | DataIn=%b | DataOut=%b", $time, reset, MODE, DATAIN, DATAOUT);
  end
  initial begin
    clock = 0; 
    MODE = 2'b00; 
    DATAIN = 4'b0000;
    reset = 1; #10; 
    reset = 0; #10;
    MODE = 2'b00; reset = 1; #10; reset = 0; #10;
    MODE = 2'b01; DATAIN = 4'b0011; #10;
    MODE = 2'b01; DATAIN = 4'b0011; #10;
    MODE = 2'b00; reset = 1; #10; reset = 0; #10;
    MODE = 2'b10; DATAIN = 4'b0111; #10;
    MODE = 2'b10; DATAIN = 4'b0111; #10;
    MODE = 2'b00; reset = 1; #10; reset = 0; #10;
    MODE = 2'b11; DATAIN = 4'b1010; #10;
    #20;
    $finish;
  end  
endmodule
