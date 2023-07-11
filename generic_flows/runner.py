from edalize.edatool import get_edatool
import os
work_root = 'build_multifile'

files = [
    {'name':os.path.relpath('1_adder.tlv',work_root),'file_type':'TLVerilogSource'}
]

tool_options = {
		"sandpipersaas": {                  # Any arguments that needed to be passed to sandpiper-saas
			"sandpiper_saas": [
				"--bestsv", "--inlineGen"
			],
            "output_file":"1_adder_rtl.sv", # One file name that ends with .v or .sv
            "output_dir":"out1"  #,           # Optional
            # "sandpiper_jar":" <Arguments to the sandpiper compiler>",
            # "endpoint":"<Optional: URL for the compile service endpoint",
            # "includes" :"List of include files to be used durung compilation "
		}
	}
tool = 'sandpipersaas'
parameters = {}
edam = {
    'files':files,
    'name':'build_tlv1',
    'parameters':parameters,
    'tool_options':tool_options
}

backend = get_edatool(tool)(edam=edam, work_root=work_root)

os.makedirs(work_root)
backend.configure()
backend.build()
backend.run()
