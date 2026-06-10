<img width="1860" height="340" alt="image" src="https://github.com/user-attachments/assets/d0cc5aa3-667c-4d86-ac1c-892db88d83be" />

The 4-Bit Universal Shift Register is an useful thing. It is made using Verilog. It can do lots of things with data. The 4-Bit Universal Shift Register works with a clock. It can reset itself when it needs to. It can also change how it handles data based on what mode it's in. There is a testbench that comes with it which is called tb_universal_shift_register. It helps make sure the 4-Bit Universal Shift Register is working correctly.

📋 Block Diagram and Mode Descriptions

The 4-Bit Universal Shift Register is, like a box that can move data around in ways. It can take data in parallel or one bit at a time. It can do this all at the same time. The mode input tells the 4-Bit Universal Shift Register what to do with the data. The 4-Bit Universal Shift Register has four modes and it can switch between them when the clock tells it to. The 4-Bit Universal Shift Register is a flexible thing and it can be used in lots of different situations.

Operation Modes Table
Mode is decided by Mode bits these Mode bits are represented as mode[1:0].
The Operation Mode is described as follows:
* 00 is SISO mode which means Serial-In and Serial-Out.
In this SISO mode Data shifts to the line by line from the serial input.
The Significant Bit, which is shift_reg[3] is continually sent to the serial output.
* 01 is SIPO mode which means Serial-In and Parallel-Out.
In this SIPO mode Data shifts to the left from the input.
The entire internal register state is continually mapped to the 4-bit output bus.
* 10 is PISO mode which means Parallel-In and Serial-Out.
In this PISO mode the loaded internal data is shifted out via the serial output bit, by bit.
At the time zeros are shifted in from the right side.
* 11 is PIPO mode which means Parallel-In and Parallel-Out.
In this PIPO mode the entire 4-bit parallel input bus is instantly captured into the register.
Then this captured data is directly exposed to the output.

Verification Module (tb_universal_shift_register)

The testbench gives a clean clock signal. The clock signal changes every 5 units. It has a clock period. This helps to test the device under test (UUT) step-by-step. The UUT goes through verification milestones.
*. Reset: The simulation environment starts up. It sets a reset state. This reset state lasts for the 15ns.
* PIPO Validation (Mode 11): The system loads 4-bit configurations. The configurations are 1011 and 0101. This shows that the system can load data in parallel away.
* PISO Validation (Mode 10): The system checks if it can take data out one bit at a time through the single serial_out pin. This happens over 4 clock cycles.
* SISO Validation (Mode 00): The system sends custom bits one by one. The bits are 1, 1 0 1 and so on. This checks if the system can track the bits in the register array.
* SIPO Validation (Mode 01): The system puts one bit through the pipeline at a time. It checks if all the bits, in the register can be seen at parallel_out at the time.
