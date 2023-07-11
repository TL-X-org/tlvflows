# makerchip_accessories
Fusesoc based Integration of commercial simulators for makerchip

## Fusesoc initial setup

- Register the library

    - `fusesoc library add makerchip_top .`

- Verify that the library is added as a fusesoc core

    - `fusesoc list-cores`

## Getting the files from makerchip

- You need two files from makerchip
    - top.tlv (Your TL-Verilog File)
    - top.sv  (Your System Verilog File generated from your TLV file)
        - You can generate the System Verilog file in makerchip and download it (or) use `fusesoc run --target=sandpiper makerchip_top` to generate the SV File

## Simulations

- Default simulator is VCS

### VCS

`fusesoc run --target=simulate makerchip_top` 

### XSIM (Xilinx Vivado Simulator)

`fusesoc run --target=simulate --tool=xsim makerchip_top`

## Synthesis

- Default synthesis tool is Synopsys Design Compiler

### Design Compiler

- Set the path of your target_library in `makerchip.core` file
- The default synthesis script should be just used for a dry run, as it takes the makerchip module as the top module

`fusesoc run --target=synth makerchip_top`

# TO-DO

- Add Simulator support for Verilator, Xcelium, Aldec Riveria, Questasim
- Add Synthesis support in Yosys, Innovus
