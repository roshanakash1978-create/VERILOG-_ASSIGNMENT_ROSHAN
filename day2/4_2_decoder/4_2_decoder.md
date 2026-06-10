<img width="1872" height="300" alt="Screenshot 2026-06-09 210113" src="https://github.com/user-attachments/assets/3aa3cca6-4a29-423b-b471-f61df5ca65b7" />
Here is a clear and simple description of the Verilog code and testbench that you provided. You can. Paste this directly into your GitHub repositorys README.md file or use it as the description of the repository.

The Verilog code is for a 2-to-4 Decoder with Enable.

This repository has the Verilog code for a 2-to-4 Binary Decoder with a signal. The enable signal is active-high. The code uses an approach. It also has a testbench to check if the decoder works correctly.

📋 Block Diagram and Description

The 2-to-4 decoder takes a 2-bit input. It then activates one of its four outputs based on the input value.

The decoder has a control. If the enable signal is 0 the decoder is disabled. In this case all outputs are 0000 no matter what the input is.

The decoder also has a decoding logic. When the enable signal is 1 the 2-bit input drives one of the 4 output lines high. This is a high output. The 2-to-4 decoder works in this way. The Verilog code for the 2-to-4 decoder is in this repository. The testbench, for the 2-to-4 decoder is also here.

1. Design Module (

The hardware for this module is written using a simple block of code that is always running. It checks the signal to see what it is doing. If the signal says to go it looks at the input and figures out what to do with it. The code also has a default setting so that it does not get stuck on any one thing.

2. Testbench Module (tb_decoder_2to4)

The testbench module is like a test for the module. It tries out all sorts of things on the decoder over a period of time which's 90 time units.

Here is what it does:

* From 0ns to 40ns it tests the decoder when it is turned off. It tries all inputs but the output is always 0000.

* From 40ns to 80ns it tests the decoder when it is turned on. It tries all inputs again and we can see the output changing.

* From 80ns to 90ns it turns off the decoder again. The output goes back, to 0000.

The testbench also makes a file that we can use to look at the output. It prints out what is happening to all the signals.
