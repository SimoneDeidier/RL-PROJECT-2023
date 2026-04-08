<p align="center">
	<a href="LICENSE"><img src="https://img.shields.io/badge/License-GPLv3-blue.svg" alt="License: GPL v3"></a>
	<a href="documentation/10710827_10742651.tex"><img src="https://img.shields.io/badge/Course-Reti%20Logiche-darkgreen.svg" alt="Course Project"></a>
	<a href="rl_project_2023/rl_project_2023.srcs/sources_1/new/project_reti_logiche.vhd"><img src="https://img.shields.io/badge/HDL-VHDL-orange.svg" alt="Language: VHDL"></a>
	<a href="final/final.xpr"><img src="https://img.shields.io/badge/Tool-Xilinx%20Vivado-1f6feb.svg" alt="Tooling: Xilinx Vivado"></a>
</p>

This repository contains the final project for the university course **Reti Logiche** (*Logic Networks*), developed by a **two-person team** during the **2022/2023 academic year**.

The goal of the project was to design, implement, and verify in **VHDL** a hardware component that receives a **serial input stream**, selects **one of four output channels**, reads a memory word, and stores the value so it can later be shown on the chosen output.

## Project Snapshot

- **Goal:** build a *synthesizable VHDL circuit* for a final course assignment.
- **Core behavior:** read a serial configuration stream, fetch a byte from memory, and route it to the selected output.
- **Outputs:** **four persistent 8-bit channels** that keep their last assigned value until overwritten or reset.
- **Implementation:** structured around a **FSM**, shift registers, output registers, and a demultiplexer.
- **Verification:** supported by **Vivado simulations** and a dedicated set of testbenches.

## Key Features

- **Serial input handling** with bit-by-bit capture of the output selector and memory address.
- **Persistent output registers** that preserve the last valid memory value for each channel.
- **Clean control flow** managed by a dedicated *finite state machine*.
- **Reusable datapath blocks** that keep the design modular and easy to inspect.
- **Complete test coverage** across reset cases, address edge cases, overwrite behavior, and all four outputs.

## Quick Links

- [Documentation](documentation/10710827_10742651.tex)
- [Main VHDL design](rl_project_2023/rl_project_2023.srcs/sources_1/new/project_reti_logiche.vhd)
- [Testbench collection](testbenches/)
- [Vivado project](final/final.xpr)
- [License](LICENSE)

## Project Overview

The circuit implements a **small memory-routing system** with the following external interface:

- one serial input for the output-channel selection and memory address bits
- four 8-bit outputs: `Z0`, `Z1`, `Z2`, `Z3`
- a `DONE` signal that marks the end of an operation
- a 16-bit memory address output
- memory enable and write-enable control signals

At a high level, the component:

1. reads two bits to select which output register must be updated
2. reads the memory address bit by bit
3. requests the value from memory
4. stores the returned byte in the selected output register
5. exposes the stored value on the chosen output when `DONE` is asserted

## Hardware Architecture

The design is split into a few reusable blocks:

- **FSM**: controls the full execution flow and drives the internal control signals.
- **2-bit shift register**: stores the selected output channel.
- **16-bit address register**: collects the memory address and expands it to the required width.
- **DeMux**: routes the returned memory byte to the correct output register.
- **4 output registers**: keep the last value assigned to each output channel.

The top-level entity is implemented in [project_reti_logiche.vhd](rl_project_2023/rl_project_2023.srcs/sources_1/new/project_reti_logiche.vhd), while the support blocks are stored in the same source directory.

## Documentation

The detailed design report is available in [documentation/10710827_10742651.tex](documentation/10710827_10742651.tex). It includes:

- the original project specification
- the complete FSM description
- the datapath rationale
- the register and demultiplexer design choices
- synthesis observations
- simulation strategy and test coverage

## Simulations And Tests

The repository includes several VHDL testbenches and simulation artifacts used to validate the design in **Vivado**. The test suite covers cases such as:

- empty address handling
- full-length address capture
- maximum address value
- updates on all four outputs
- output overwrite behavior
- reset behavior in different execution phases

Useful material can be found under [testbenches/](testbenches/) and in the Vivado-generated simulation folders.

## Repository Structure

- [datapath/](datapath/) contains the original datapath sketch and related material
- [documentation/](documentation/) contains the full written report
- [final/](final/) contains the final Vivado project and generated implementation artifacts
- [rl_project_2023/](rl_project_2023/) contains the main Vivado project sources and simulation files
- [testbenches/](testbenches/) contains the standalone VHDL testbenches and run notes

## How To Open The Project

The easiest way to explore or simulate the design is to open one of the **Vivado projects**:

1. Start Xilinx Vivado.
2. Open [final/final.xpr](final/final.xpr) or [rl_project_2023/rl_project_2023.xpr](rl_project_2023/rl_project_2023.xpr).
3. Inspect the source files in `sources_1/new`.
4. Run the available simulations from the Test Bench section.

If you only want to read the implementation, the main entry point is [project_reti_logiche.vhd](rl_project_2023/rl_project_2023.srcs/sources_1/new/project_reti_logiche.vhd).

## Team

- Edoardo D'Alessio, student code 10710827
- Simone Deidier, student code 10742651

## License

This repository is distributed under the terms of the **GNU General Public License v3.0** ([LICENSE](LICENSE)).