<img width="1860" height="396" alt="image" src="https://github.com/user-attachments/assets/461a46a3-3c27-49e7-bea1-0907a59865db" />
Synchronous FIFO Design and Verification

Hi everyone I am working on a project for a 8-bit Synchronous FIFO memory buffer using Verilog. I also made a testbench in SystemVerilog style to check how it handles writing and reading data.
To keep the testbench clean and organized I used a SystemVerilog interface to bundle all the wires like clock, reset, data and flags between the testbench and the FIFO.

📌 Project Features

* Data Size: The FIFO has 8-bit inputs and outputs.
* Storage: It can hold, up to 8 data values.
* Clean Code: The FIFO uses a fifo_if interface to connect everything.
* Flags: It has empty indicators so it does not overflow or glitch out. The FIFO has empty flags.
