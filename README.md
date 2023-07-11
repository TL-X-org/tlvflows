# TL-Verilog Flows
This repository contains various design flows (Simulation, ASIC Design/FPGA Design, Lint, etc.,) that can be performed with TL-Verilog designs.

Flows refer to a combination of using various commercial/open-source design tools in conjunction with TL-Verilog frontend tools like makerchip/sandpiper-saas to achieve a design goal.

The flows may be broadly classified into two types
- [Generic Flows](./generic_flows/)
- [Makerchip Flows](./makerchip_flows/)

Please refer the readme, in the directories for detailed information

## [Generic Flows](./generic_flows/README.md)
Flows described here are meant for designers using Sandpiper, TL-Verilog compiler directly. In other words, the design can be any generic TL-Verilog/SV design and can have any top module.

## [Makerchip Flows](./makerchip_flows/README.md)
Flows described here are meant for designers using the makerchip IDE and want to leverage its features like automatic stimulus/tb generation, VIZ, design hierarchy diagram etc., out of the box. This primarily uses the makerchip top module which instantiates the user design, and runs on makerchip. 

## Note
This project is WiP, readme and instructions may be out-of-date. Please join TL-Verilog users Slack by clicking [here](https://tl-verilog-users.slack.com/) for discussions, issues, contributions etc.,

