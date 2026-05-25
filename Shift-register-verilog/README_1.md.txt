# Shift Register Design in Verilog

This project implements a 4-bit Shift Register using Verilog Hardware Description Language. It demonstrates data storage and shifting operations, which are fundamental in digital systems for data transfer and manipulation.

## Features

* Shift Left Operation
* Shift Right Operation
* Parallel-In Serial-Out (PISO)
* Serial-In Parallel-Out (SIPO)
* Synchronous design using clock signal

## Tools Used

* Verilog HDL
* EDA Playground (Simulation)
* EPWave (Waveform Viewer)

## Inputs

* `clk` : Clock signal
* `reset` : Reset signal
* `shift_left` : Enable left shift
* `shift_right` : Enable right shift
* `serial_in` : Serial input
* `parallel_in[3:0]` : 4-bit parallel input
* `load` : Load parallel data

## Outputs

* `data_out[3:0]` : Shift register output
* `serial_out` : Serial output

## Working Principle

* When `reset` is high, the register is cleared.
* When `load` is enabled, parallel data is loaded into the register.
* When `shift_right` is enabled, data shifts right and LSB is output as serial output.
* When `shift_left` is enabled, data shifts left and new bit enters from serial input.

## Simulation

The design was simulated using EDA Playground, and waveform analysis was performed using EPWave to verify correct shifting operations.

## Simulation Waveform

![Waveform](waveform.png)

## Author

Manoj U K
Electronics and Communication Engineering
