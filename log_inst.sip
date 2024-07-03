set_global_assignment -entity "log_inst" -library "lib_log_inst" -name IP_TOOL_NAME "altera_fp_functions"
set_global_assignment -entity "log_inst" -library "lib_log_inst" -name IP_TOOL_VERSION "16.1"
set_global_assignment -entity "log_inst" -library "lib_log_inst" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_log_inst" -name SPD_FILE [file join $::quartus(sip_path) "log_inst.spd"]

set_global_assignment -library "lib_log_inst" -name MISC_FILE [file join $::quartus(sip_path) "log_inst_sim/log_inst_memoryC0_uid231_lnTables_lutmem.hex"]
set_global_assignment -library "lib_log_inst" -name MISC_FILE [file join $::quartus(sip_path) "log_inst_sim/log_inst_memoryC0_uid232_lnTables_lutmem.hex"]
set_global_assignment -library "lib_log_inst" -name MISC_FILE [file join $::quartus(sip_path) "log_inst_sim/log_inst_memoryC1_uid235_lnTables_lutmem.hex"]
set_global_assignment -library "lib_log_inst" -name MISC_FILE [file join $::quartus(sip_path) "log_inst_sim/log_inst_memoryC1_uid236_lnTables_lutmem.hex"]
set_global_assignment -library "lib_log_inst" -name MISC_FILE [file join $::quartus(sip_path) "log_inst_sim/log_inst_memoryC2_uid239_lnTables_lutmem.hex"]
set_global_assignment -library "lib_log_inst" -name MISC_FILE [file join $::quartus(sip_path) "log_inst_sim/log_inst.vo"]
