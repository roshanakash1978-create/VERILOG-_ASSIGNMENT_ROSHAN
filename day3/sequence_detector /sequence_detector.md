<img width="1880" height="310" alt="Screenshot 2026-06-10 135406" src="https://github.com/user-attachments/assets/e09ec6e4-b381-4518-bba1-31c85af05286" />

1110 Sequence Detector (Verilog FSM)
------------------------------------
This repository has a Verilog version of a Finite State Machine that detects a specific binary sequence: 1110. The design uses a kind of logic that is a mix of Moore and Mealy styles. It is written in a way that uses two blocks.

System Specifications & FSM Logic
--------------------------------
The state machine goes through four states to find the sequence in the input stream on the din pin.
* It starts in the state when it is reset or waiting for the first 1.
* Then it goes to the s1 state if it gets another 1.
* After that it goes to the s2 state if it gets a 1.
* Finally it goes to the s3 state when it has seen three 1s in a row.
If the next bit is 0 then the whole sequence 1110 is. The detected flag goes high.
Simulation & Waveform Analysis
The design was tested using EDA tools and it made a VCD file that can be seen in EPWave.

Waveform Observations
--------------------
The 1110 Sequence Detector works correctly when the states go in order from idle, to s1 to s2 to s3.
When the din bit goes to 0 at time 100 the detected flag goes to 1 which means the 1110 sequence was found.
The 1110 Sequence Detector is working as it should.
