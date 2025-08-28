# Simple 8-bit CPU (VHDL – FPGA Project)

## Overview
This project implements a simple **8-bit CPU** in VHDL and was deployed on an FPGA board.  
The design integrates **registers, a finite state machine (FSM), a 3-to-8 decoder, and multiple ALUs**.  
Outputs are displayed on **7-segment displays**, and functionality is verified through simulation waveforms.

## Features
- **Registers** – store 8-bit inputs A and B across clock cycles.  
- **Control Unit** – FSM + decoder generates opcodes for ALU operations.  
- **ALU_1** – standard arithmetic & logic operations (e.g., addition, subtraction).  
- **ALU_2** – modified opcode mapping to demonstrate flexibility of ALU design.  
- **ALU_3** – conditional logic: displays `"y"` if student ID is even, `"n"` if odd.  
- **Output** – results displayed on dual 7-segment displays + student ID output.  

## Block Diagram
![CPU Block Diagram](cpu%20block%20diagram.PNG)

*(Optional: add waveform screenshots here to show correct simulation outputs)*  
Example:  
![Waveform Example](docs/images/alu_waveform.png)

## Tools & Technology
- **VHDL** (Quartus II – simulation + synthesis)  
- **FPGA board** (Altera/Intel Quartus compatible)  
- **7-segment displays** for real-time output visualization  

## Repository Structure
- `/src` → VHDL source files (`ALU_unit.vhd`, `decode.vhd`, `machine.vhd`, `reg.vhd`, etc.)  
- `/docs` → Block diagram, waveforms, lab report (optional)  
- `README.md` → Project summary (this file)  

## Results
- Verified in simulation with Quartus functional waveforms.  
- CPU correctly executes multiple arithmetic/logic functions depending on FSM state and opcode.  
- Demonstrates understanding of **sequential circuits, state machines, and CPU architecture design**.  

---
Made by **Jihan Chowdhury**  
Toronto Metropolitan University – COE 328 (Digital Systems)
