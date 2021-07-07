# RISC-V_MYTH_Workshop

For students of "Microprocessor for You in Thirty Hours" Workshop, offered by for VLSI System Design (VSD) and Redwood EDA, find here accompanying live info and links.

Check the folders for assignments for particular days.

## Overview
Over the course of five days with the help of video lectures, laboratory work and assistance from others, a RISC-V RV32I CPU has been written in a hardware description 
language and simulated. This process has been accelerated by the use of TL-Verilog, a language which greatly simplifies pipeline implementations and minimises code overhead,
and by the use of Makerchip, an online platform where TL-Verilog designs can be simulated and visualised. TL-Verilog code was not available to be cut and paste as the student 
progressed but rather the video exercises gave instructions and hints for the student to write the lines themselves in a step by step manner. This meant that the concepts in
the video lectures had to be grasped in order to complete this project.

Each day could be roughly summarised as follows
- Day 1: The RISC-V toolchain and binary representation of numbers (yes no prior knowledge was assumed)
- Day 2: RISC-V Application Binary Interface (ABI) and running a RISC-V program on an RTL RISC-V CPU
- Day 3: Introduction to TL-Verilog and Makerchip through implementing logic gates up to a calculator with a single memory
- Day 4: Implementing enough RISC-V RV32I instructions in a non-pipelined core to execute a program with a loop and summation
- Day 5: Pipeline the processor implemented on Day 4 and add hazard detection and handling as well as implement all RV32I instructions except ECALL, EBREAK and FENCE.

## Acknowledgements
In addition to the helpful video lectures and simple but powerful tools, this project could not be completed within the five days without the help of the instructors:
- Kunal Ghosh
- Steve Hoover

and the support of assistants who supported my team:
- Shivani Shah
- Vineet Jain

## Motivation and Learning
The primary motivation was to gain an increased understanding of CPU micro-architecture. Materials at the university of the student did not cover concepts such as pipelining
and hazards which have been found to be essential pre-requisite knowledge in the digital design industry. After finding many holes in understanding regarding CPU 
micro-architecture while working as a verification engineer, it became clear that in order to be more effective, these concepts needed to be learned.
Unfortunately, theoretical approaches such as lectures alone, have not clarified how a CPU really works. Are pipelines really necessary? Why do hazards appear and why 
use a micro-architecture that has to deal with them? How does one handle these hazards and why can they be handled in that way? The answers to these
questions has become clear in this course. Brief answers have been included below for memory and humour.

- Pipelines are not theoretically necessary but are practically necessary to shorten timing paths for high frequencies
- Hazards appear because pipelines process instructions faster than normal, so fast, that sometimes the instruction is ready before the data it needs
- Handling of hazards is not easy to summarise but could be, if the data is ready sooner from somewhere else grab it, otherwise wait and **do not touch** anything.

There has been nothing like having to learn these answers from implementing a pipelined RISC-V core and spending many long debugging sessions working out whether the concept
has been understood and implemented correctly.
