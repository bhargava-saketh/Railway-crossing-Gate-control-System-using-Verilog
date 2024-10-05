# Railway-crossing-Gate-control-System-using-Verilog

## Project Overview
This project involves the design and implementation of a simplified railway crossing gate control system using Verilog. The system aims to manage the opening and closing of a railway crossing gate based on the presence of trains on multiple tracks. The main goal is to ensure safety by closing the gate and activating warning lights whenever a train is detected. This README provides an overview of the project, including setup instructions, tasks completed, and a conclusion highlighting the system's effectiveness and potential applications.

## Introduction
The "Railway Crossing Gate Control System" project is a Verilog-based implementation of a control system for managing railway crossings. The project uses multiple input signals representing different tracks to determine whether the crossing gate should be open or closed. The system activates a red warning light and closes the gate when trains are detected on any of the tracks (`rail_A`, `rail_B`, `rail_C`, `rail_D`). This project simulates how automated control mechanisms can ensure safety at railway crossings, which is a critical aspect of real-world transportation systems.

## Tasks Completed
The development of this project involved creating and testing a Verilog module that simulates the behavior of a railway crossing gate. Key accomplishments include:

### State Machine Implementation:
- Developed a finite state machine (FSM) to manage the different states of the railway crossing gate.
- **State `1'b0` (Gate Open)**: The default state, where no trains are present, and the gate remains open.
- **State `1'b1` (Gate Closed)**: The state when any of the tracks have an active train signal, triggering the gate to close and activating the red warning light.

### Input and Output Signal Management:
- **Input Signals**:
  - `rail_A`, `rail_B`, `rail_C`, `rail_D`: Represent different tracks monitored for the presence of trains.
  - `reset`: Resets the system to its default state.
  - `enable`: Enables the operation of the system.
- **Output Signals**:
  - `gate`: Represents the gate status (`1` for closed, `0` for open).
  - `red_light`: Represents the status of the red warning light (`1` for on, `0` for off).

### Logic Design:
- Designed logic to determine the `next_state` of the system based on the input signals.
- Implemented output logic to manage the red light and gate status, ensuring safety measures are activated when a train is detected.

### Testbench for Verification:
- Created a testbench to simulate the behavior of the railway crossing gate control system.
- **Input Initialization**: Initialized input signals and simulated different train detection scenarios.
- **Verification**: Observed the behavior of the gate and red light outputs in response to changes in the presence of trains on the tracks, ensuring proper system functionality.

## Results
The implemented railway crossing control system successfully managed the gate and warning lights based on the presence of trains on the monitored tracks. The testbench verified that:
- The gate closed and the red light turned on whenever a train was detected on any of the tracks.
- The gate opened, and the red light turned off when all tracks were clear, demonstrating correct state transitions and output control.

![image](https://github.com/user-attachments/assets/0d6469dc-13b3-486e-8993-991d56829578)

## Conclusion
This project demonstrates how automated systems can effectively control railway crossings, ensuring safety at intersections where rail and road traffic meet. By implementing a finite state machine in Verilog, the system dynamically manages gate and light controls based on the real-time status of the tracks. This type of control system can be extended to handle more complex scenarios, such as multiple gates or different priorities for tracks, making it applicable in modern railway infrastructure to enhance safety and efficiency.
