# 🚦 Traffic Light Controller FSM (DE2-115 FPGA)

This project implements a **finite-state machine (FSM) traffic light controller** for a two-street intersection using the **Altera DE2-115 FPGA**.

The intersection consists of:
- ✅ **Main Road** — has priority (normally stays green)
- ✅ **Side Road** — controlled by a car detection sensor

The controller manages the entire light sequence:
- Green → Yellow → Red for the **main road**
- Red → Green → Yellow for the **side road**
- Uses timed states (multi-second delays using counters + Timers )
- Responds to a **car sensor** on the side road 
- Automatically returns to the main-road-priority state

---

## 🧩 Main Features
Fully designed using VHDL + Quartus II
Clean FSM controller with clear state transitions and timing logic
Separate datapath (counters, enable signals, and control logic)
Hardware implementation tested on the DE2-115 FPGA
Works with:
Slide switches (sensor inputs)
LEDs (traffic light outputs)
Includes hand-drawn state diagrams and state transition tables to ensure clarity in design
FSM implemented using one-hot encoding for D Flip-Flops, chosen for its cleaner structure and easier debugging

---

## 📁 File Structure
The repository includes the following VHDL files and design components:
fsm_controller.vhd – main finite state machine handling state transitions and control logic
Debounce.vhd – cleans noisy sensor inputs using a debounce mechanism
Counter.vhd – generates precise timing delays for state transitions
Timer.vhd – provides periodic timing control signals for the FSM
multiplexer.vhd – handles signal selection between multiple inputs
TopLevel.bdf – block diagram integrating all modules into a single top-level design
Additional supporting entities used within the top-level architecture, all coded in VHDL

---

## 🛠 Tools Used
- Quartus II / Quartus Prime  
- ModelSim (optional for simulation)  
- Altera DE2-115 FPGA  

---
🧩 Top-Level Design
Below is the Top Entity schematic created in Quartus II, showing how all components are interconnected:
<img width="1075" height="558" alt="Top_entity" src="https://github.com/user-attachments/assets/2346b793-c495-4c21-a64d-f848e6dd1dc8" />


This top-level block diagram connects the FSM controller, timing modules, and input/output interfaces for the complete traffic light system.

⚙️ Simulation Results

To validate functionality before FPGA implementation, simulations were performed in Quartus II / ModelSim.
(Add screenshots of your waveform simulations — for example)
<img width="1432" height="569" alt="Simulation" src="https://github.com/user-attachments/assets/4f175757-e2a1-40f4-a158-4268d98757a8" />

In the waveform:
MSTL and SSTL represent the Main Street and Side Street traffic light signals.
Each signal is a 3-bit vector encoded as = (Red, Yellow, Green)
100 → Red ON
010 → Yellow ON
001 → Green ON
The transitions confirm the correct light sequence and mutual exclusivity between the two directions.

## ✅ Summary
A complete, working, and hardware-tested traffic light controller demonstrating:
- FSM design  
- Timing control  
- VHDL coding  
- FPGA implementation  
Perfect for FPGA, embedded systems, and hardware engineering roles.

