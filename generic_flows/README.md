# Generic Flows
Example for using sandpiper with edalize front-end, and fusesoc 
## Command to run with edalize
```python3 runner.py```

## Command to run with Fusesoc 

### Convert TLV to SV using Sandpiper - Tool Target

- Before using fusesoc for the first time add this as a core to the fusesoc library

```fusesoc library add adder .```

- Run the below command to generate the verilog with fusesoc (This uses Sandpiper support with the TOOLAPI in Edalize)

```fusesoc run --target=sandpiper adder```

- To achieve the same functionality with the latest FlowAPI in Edalize
```fusesoc run --target=sandpiper_astool --build-root="sp_flow" adder```

### Convert TLV to SV using Sandpiper and SV to Netlist using Design Compiler - Flow Target
```fusesoc run --target=sp_dc adder --build_root="sp_flow" adder```

### Convert TLV to SV using Sandpiper and SV to Bitstream using Vivado - Flow Target
- This command uses Sandpiper as a frontend to the Vivado flow in Edalize to generate the bitstream for your TLV Design
```fusesoc run --target=sandpiper_asfrontend --build-root="sp_flow" adder```

### Note:
- You need not know about the ToolAPI and FlowAPI to use these commands. The details are provided for the advanced user