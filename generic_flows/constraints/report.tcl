set maxpaths 15
check_design > "${log_path}checkdesign.rpt"
report_area >> "${log_path}area.rpt"
report_design >> "${log_path}reportdesign.rpt"
report_cell >> "${log_path}reportcell.rpt"
report_reference >> "${log_path}reportreference.rpt"
report_port -verbose >> "${log_path}reportport.rpt"
report_net >> "${log_path}reportnet.rpt"
report_compile_options >> "${log_path}reportcompileoptions.rpt"
report_constraint -all_violators -verbose \
 >> "${log_path}reportconstranit.rpt"
report_timing -path end >> "${log_path}reporttimingpathend.rpt"
report_timing -max_path $maxpaths \
 >> "${log_path}reporttimingmaxpaths.rpt"
report_qor >> "${log_path}reportqor.rpt"
report_power >> "${log_path}reportpower.rpt"