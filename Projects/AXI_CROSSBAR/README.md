AXI4 Crossbar Verification Suite
--------------------------------
Project Description:
This repository holds the verification framework for a highly performant AXI4 Crossbar Interconnect. The crossbar itself is an adaptable design that allows for concurrent transactions between multiple masters and slaves with the capability to adaptively arbitrate and monitor errors. The verification group worked diligently to validate that the crossbar was reliable, protocol-compliant, and stress tolerant, performing with no deadlocks or protocol errors.

Verification Technique:
The verification approach uses a modular agents-based approach for modeling the 4x4 AXI system. Modular Agents: Independent Master drivers and Slave responders for separate channel controls (AW, W, B, AR, and R). Stress Injection: Concentrates on “corner cases” of traffic like starvation floods, matrix congestion, and backpressure. Protocol Validation: Verification of AXI handshake and non-blocking fabric behavior under multi-master accesses.

<img width="717" height="418" alt="image" src="https://github.com/user-attachments/assets/03212cca-6faa-4cce-b456-66d3d038319c" />

Verification Modules Verification of key components:
- AXICB Master Driver (axicb_master_driver.sv)
    - This is a SystemVerilog module to create bursts of transactions.
    - drive_write_burst(addr, burst_len, master_id) task performs address, data, and response phases of the transaction for testing arbitration and ordering.
- Adaptive Arbiter Monitor
    - This module verifies dynamic change of priorities according to traffic.
- AXI Response Monitor (axicb_resp_monitor)
    - This monitors error responses (SLVERR/DECERR).
- Timeout Detector
    - It has separate counters for read/write transactions.

Verification Scenarios:
Starvation Flood: High-priority masters flood the switch to check that the low-priority masters complete their tasks without any deadlocks.
Matrix Congestion: Simulates cross-routing at the same time to check the non-blocking nature of the fabric and also that there is no data leakage.
Slave Backpressure: Simulates backpressure on the slaves by high latency weights (upto 6 cycles) to check the "Ready" signal deassertion on the switch.

Final Results of Verification

Stability: System has absolute stability in 100% saturation bandwidth.  
Performance: System has completed 100% of 16-beats bursts with very extreme asymmetric pipeline delays.  
Reliability: System is 100% deadlock free, and there

<img width="1245" height="591" alt="WhatsApp Image 2026-06-22 at 9 13 29 PM" src="https://github.com/user-attachments/assets/b9753b5e-c94d-4c11-a3c6-27518fb1dd26" />
<img width="1249" height="584" alt="WhatsApp Image 2026-06-22 at 9 13 31 PM" src="https://github.com/user-attachments/assets/54149737-58e4-4486-bc44-87fa622b48ca" />


