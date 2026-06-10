<img width="512" height="266" alt="605756094-3f876b6b-4b31-4cc4-90ee-3487bd5e3090 (1)" src="https://github.com/user-attachments/assets/4377a1e4-73a1-4362-8a6d-abba3f896085" />
<img width="713" height="365" alt="605757043-0fedc50d-cc61-43c2-a41b-e1d2b3b5e1a0" src="https://github.com/user-attachments/assets/107e4112-3a78-4817-b679-f402d67611d6" />
<img width="1571" height="813" alt="605757622-38a04a2f-011d-4d0b-8da1-c2fe9a35feba" src="https://github.com/user-attachments/assets/2be72acb-103e-4c03-9ee6-9d24d458733b" />
<img width="1575" height="816" alt="605760157-447c4f26-66dd-40ca-b1c5-b8805eb05e5f" src="https://github.com/user-attachments/assets/83970737-6053-47a7-b9a8-3cdef3c82eb3" />
Project Overview

This project shows a digital hardware design idea. It is about transferring data, between a fast data producer and a slow data consumer without losing any data. To solve this problem a First-In-First-Out memory buffer, also known as a FIFO is used. The FIFO holds the data until the slower consumer is ready to process it.

System. File Structure

* face_mod.v (Fast Producer): This module generates and sends 8-bit data continuously at every positive clock edge. It acts as the high-speed source.
* fifo.v (Buffer Memory): This is an area-optimized memory buffer. It uses. Write pointers to store data from the producer and feed it to the consumer when needed.
* mod_out.v (Slow Consumer): This module uses a 3-state Finite State Machine with states IDLE, READ_PROC. Done. It carefully reads data from the FIFO simulates a processing delay and outputs the result.
* top_module.v (Top-Level Wrapper): This is the file that connects the above three modules and wires them together with a global reset signal.
* top_module_tb.v (Testbench): This simulation file injects a burst of data to verify that the FIFO successfully buffers it and outputs it sequentially without dropping any initial values.

Simulation of: top_module_tb.v
