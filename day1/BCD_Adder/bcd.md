<img width="1854" height="596" alt="image" src="https://github.com/user-attachments/assets/0455830f-eb29-4128-afe8-215e4f0e3637" />

4-Bit BCD Adder
---------------
A Verilog implementation of a 4-Bit BCD Adder. This project uses Ripple Carry Adders.

## Design Overview
-----------------
A 4-bit binary adder can output sums from 0 to 15.. A BCD adder can only output from 0 to 9.
When the binary sum is, than 9 or has an output carry it is not a valid BCD number. So we add 6 to it using another Ripple Carry Adder to make it valid.
We check if the sum needs this correction. If it does we use a Ripple Carry Adder to add 6.

## Verification & Simulation Results
------------------------------------
The testbench tests the design, with different test vectors. These test vectors include addition and BCD overflow corrections. They also include input carry handling. The testbench uses these test vectors to see how the design works. The design is tested with the test vectors to make sure it works correctly. The test vectors cover addition BCD overflow corrections and input carry handling of the design.
