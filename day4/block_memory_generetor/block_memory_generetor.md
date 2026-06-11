<img width="1055" height="457" alt="Screenshot 2026-06-11 140045" src="https://github.com/user-attachments/assets/30549f04-12c0-4906-b411-dbf607558134" />
<img width="1632" height="861" alt="Screenshot 2026-06-11 135410 (1)" src="https://github.com/user-attachments/assets/07fe9dce-cf99-42a5-a373-815feb242a9d" />

This repository has a 256 x 8-bit Simple Dual-Port Block RAM.
------------------------------------------------------------
The 8-Bit Simple Dual-Port Block RAM is made for FPGA applications.
It is designed with an interface that has separate addresses for reading and writing.
The 8-Bit Simple Dual-Port Block RAM has its paths for data and it uses a clock to control when it reads and writes.
The 8-Bit Simple Dual-Port Block RAM also has a button that works when it is not being used by the clock.
The project has the 8-Bit Dual-Port Block RAM module and a script to test it.
The project also has pictures of the signals and information about how space it takes up.
All of this was put together using Xilinx Vivado.
The 8-Bit Simple Dual-Port Block RAM module and the test script and the pictures and the information, about space are all part of the project.

Behavioral Waveform Verification
-------------------------------
The test to see if the design works properly using the Xilinx Vivado Simulator shows that it behaves as expected when we write and read data.
From 0 ns to 17 ns which's when the system is starting up the reset button makes sure everything is lined up properly. At this point the output is what we expect based on the design.
From 35 ns to 65 ns when we are writing data the system is working smoothly. For example when we write to address 0x0A it records the value 0xAA. When we write to address 0x14 it captures the value 0xBB.
After 65 ns when we stop writing data the system starts to read the data back. It does this by going through the data one step at a time. It gets the values 0xAA. 0Xbb back, in the correct order, which is what we expect from the Behavioral Waveform Verification.
