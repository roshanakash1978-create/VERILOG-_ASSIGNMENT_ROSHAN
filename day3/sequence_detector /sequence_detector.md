<img width="1880" height="310" alt="Screenshot 2026-06-10 135406" src="https://github.com/user-attachments/assets/e09ec6e4-b381-4518-bba1-31c85af05286" />

1110 Sequence Detector (Verilog FSM)
----------------------------------
This repository contains a Verilog implementation of a synchronous Finite State Machine (FSM) designed to detect a specific serial binary sequence: 1110. The design uses an overlapping/non-overlapping Moore/Mealy hybrid FSM architectural logic style implemented via a two-always-block coding standard.

## System Specifications & FSM Logic
The state machine transitions through four states to identify the incoming serial stream on the input pin din.
State Diagram Logic
idle (2'b00): Resets or waits for the first valid bit (din = 1).
s1 (2'b01): Progresses if another 1 is received (detects 1).
s2 (2'b10): Progresses if a third 1 is received (detects 11).
s3 (2'b11): Represents the state where 111 has been successfully captured. If the next incoming bit is 0, the full sequence 1110 is matched, and the detected flag is pulled high.

## Simulation & Waveform Analysis
The design was simulated using standard EDA tools, producing a VCD dump file visualized in EPWave.

Waveform Observations
Successful Detection: Once the states stabilize and transition sequentially through idle -> s1 -> s2 -> s3, the final transition at t = 100 when din drops to 0 successfully triggers the output pulse detected = 1.
