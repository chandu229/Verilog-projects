# 4-to-1 Multiplexer (MUX) using Verilog/SystemVerilog
A hardware description and simulation setup for a fundamental combinational logic block: the **4-to-1 Digital Multiplexer**. This project includes the structural/dataflow design logic, a comprehensive testbench simulation, and timing waveforms verified using Icarus Verilog on EDA Playground.
---
## 📖 Overview
A 4-to-1 multiplexer routes data from one of four input lines ($I_1, I_2, I_3, I_4$) to a single output line ($Y$) based on a 2-bit selection code ($S_1, S_2$). 
### Logic Function
The dataflow expression implemented in this design is:
$$Y = (\sim S_1 \cdot \sim S_2 \cdot I_1) + (\sim S_1 \cdot S_2 \cdot I_2) + (S_1 \cdot \sim S_2 \cdot I_3) + (S_1 \cdot S_2 \cdot I_4)$$
### Truth Table

| $S_1$ | $S_2$ | Output ($Y$) | Selected Input |
| :--- | :--- | :--- | :--- |
| 0 | 0 | $I_1$ | Data Input 1 |
| 0 | 1 | $I_2$ | Data Input 2 |
| 1 | 0 | $I_3$ | Data Input 3 |
| 1 | 1 | $I_4$ | Data Input 4 |

---
## 📂 Repository Structure
* `mux4_1.v` — The structural/dataflow RTL logic design.
* `mux4_1_tb.v` — The testbench simulator providing test vectors and stimulus.
* `Screenshot 2026-07-10 195211.png` — Verified EPWave timing waveform graph.
---
## 💻 Design Implementation
```systemverilog
module mux4_1(
    input I1, I2, I3, I4,
    input S1, S2,
    output Y
);
    // Continuous assignment using boolean logic
    assign Y = (~S1 & ~S2 & I1) | 
               (~S1 &  S2 & I2) | 
               ( S1 & ~S2 & I3) | 
               ( S1 &  S2 & I4);
endmodule
