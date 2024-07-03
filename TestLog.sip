set_global_assignment -entity "TestLog" -library "lib_TestLog" -name IP_TOOL_NAME "altera_fp_functions"
set_global_assignment -entity "TestLog" -library "lib_TestLog" -name IP_TOOL_VERSION "16.1"
set_global_assignment -entity "TestLog" -library "lib_TestLog" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_TestLog" -name SPD_FILE [file join $::quartus(sip_path) "TestLog.spd"]

set_global_assignment -library "lib_TestLog" -name MISC_FILE [file join $::quartus(sip_path) "TestLog_sim/TestLog_memoryC0_uid231_lnTables_lutmem.hex"]
set_global_assignment -library "lib_TestLog" -name MISC_FILE [file join $::quartus(sip_path) "TestLog_sim/TestLog_memoryC0_uid232_lnTables_lutmem.hex"]
set_global_assignment -library "lib_TestLog" -name MISC_FILE [file join $::quartus(sip_path) "TestLog_sim/TestLog_memoryC1_uid235_lnTables_lutmem.hex"]
set_global_assignment -library "lib_TestLog" -name MISC_FILE [file join $::quartus(sip_path) "TestLog_sim/TestLog_memoryC1_uid236_lnTables_lutmem.hex"]
set_global_assignment -library "lib_TestLog" -name MISC_FILE [file join $::quartus(sip_path) "TestLog_sim/TestLog_memoryC2_uid239_lnTables_lutmem.hex"]
set_global_assignment -library "lib_TestLog" -name MISC_FILE [file join $::quartus(sip_path) "TestLog_sim/TestLog.vo"]
