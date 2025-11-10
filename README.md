# 🚦 Traffic Light Controller FSM (DE2-115 FPGA)

This project implements a **finite-state machine (FSM) traffic light controller** for a two-street intersection using the **Altera DE2-115 FPGA**.

The intersection consists of:
- ✅ **Main Road** — has priority (normally stays green)
- ✅ **Side Road** — controlled by a car detection sensor

The controller manages the entire light sequence:
- Green → Yellow → Red for the **main road**
- Green → Yellow → Red for the **side road**
- Uses timed states (multi-second delays using counters)
- Responds to a **car sensor** on the side road
- Automatically returns to the main-road-priority state

---

## 🧩 Main Features
- Fully designed using **VHDL + Quartus II**
- Clean **FSM controller** (state transitions + timing)
- Separate **datapath** (counters, enable signals, timing logic)
- Hardware implementation tested on the **DE2-115 FPGA**
- Works with:
  - Slide switches (sensor input)
  - LEDs (traffic light outputs)

---

## 📁 File Structure
The repository includes:
- `FSM_Controller.vhd` – main state machine  
- `Debounce.vhd` – cleans sensor input  
- `Counter.vhd` – generates timing delays  
- `TopLevel.bdf` – block diagram connecting all components  
- Quartus project files and simulation outputs  

---

## 🛠 Tools Used
- Quartus II / Quartus Prime  
- ModelSim (optional for simulation)  
- Altera DE2-115 FPGA  

---

## ✅ Summary
A complete, working, and hardware-tested traffic light controller demonstrating:
- FSM design  
- Timing control  
- VHDL coding  
- FPGA implementation  
Perfect for FPGA, embedded systems, and hardware engineering roles.

