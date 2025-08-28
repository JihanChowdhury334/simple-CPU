# Simple 8-bit CPU (VHDL – FPGA Project)

## Overview
This project implements a simple **8-bit CPU** using VHDL on an FPGA board.  
The design integrates **registers, a finite state machine (FSM), a decoder, and multiple ALU variants**.  
Outputs are verified with simulation waveforms and displayed on **7-segment displays**.

---

## Block Diagrams & Waveforms

### ALU_1
**Block Diagram**  
![ALU_1 Block Diagram](alu1_block.png)

**Simulation Waveform**  
![ALU_1 Waveform](alu1_waveform.png)

---

### ALU_2
**Block Diagram**  
![ALU_2 Block Diagram](alu2_block.png)

**Simulation Waveform**  
![ALU_2 Waveform](alu2_waveform.png)

---

### ALU_3
**Block Diagram**  
![ALU_3 Block Diagram](alu3_block.png)

**Simulation Waveform**  
![ALU_3 Waveform](alu3_waveform.png)

---

## Features
- **Registers** to store 8-bit inputs A and B across clock cycles.  
- **FSM + Decoder** generate control signals and opcodes.  
- **ALU_1**: Standard arithmetic & logic operations (ADD, SUB, etc.).  
- **ALU_2**: Alternate operations with modified opcode mapping.  
- **ALU_3**: Even/odd check of student ID → outputs `"y"` or `"n"` on 7-seg.  
- **Output** displayed on dual 7-segment displays and student ID display.  

---

## Tools
- **Quartus II** (VHDL design, simulation, synthesis)  
- **FPGA Board** (Altera/Intel compatible)  
- **7-segment display modules**

---

## Results
- Verified CPU design through Quartus simulation waveforms.  
- Demonstrated functionality of multiple ALU variations.  
- Reinforced concepts of sequential circuits, finite state machines, and processor design.  

---

Made by **Jihan Chowdhury**  
Toronto Metropolitan University – COE 328 (Digital Systems)
