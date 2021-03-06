# TCL File Generated by Component Editor 13.1
# Wed Oct 01 15:29:35 EDT 2014
# DO NOT MODIFY


# 
# ELE8307_VGA "ELE8307_VGA" v1.0
#  2014.10.01.15:29:35
# 
# 

# 
# request TCL package from ACDS 13.1
# 
package require -exact qsys 13.1


# 
# module ELE8307_VGA
# 
set_module_property DESCRIPTION ""
set_module_property NAME ELE8307_VGA
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME ELE8307_VGA
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL vga
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file vga.vhd VHDL PATH vga/vga.vhd TOP_LEVEL_FILE


# 
# parameters
# 
add_parameter base_address INTEGER 0 ""
set_parameter_property base_address DEFAULT_VALUE 0
set_parameter_property base_address DISPLAY_NAME base_address
set_parameter_property base_address WIDTH ""
set_parameter_property base_address TYPE INTEGER
set_parameter_property base_address UNITS None
set_parameter_property base_address ALLOWED_RANGES -2147483648:2147483647
set_parameter_property base_address DESCRIPTION ""
set_parameter_property base_address HDL_PARAMETER true


# 
# display items
# 


# 
# connection point avalon_master
# 
add_interface avalon_master avalon start
set_interface_property avalon_master addressUnits SYMBOLS
set_interface_property avalon_master associatedClock av_clock
set_interface_property avalon_master associatedReset av_reset
set_interface_property avalon_master bitsPerSymbol 8
set_interface_property avalon_master burstOnBurstBoundariesOnly false
set_interface_property avalon_master burstcountUnits WORDS
set_interface_property avalon_master doStreamReads false
set_interface_property avalon_master doStreamWrites false
set_interface_property avalon_master holdTime 0
set_interface_property avalon_master linewrapBursts false
set_interface_property avalon_master maximumPendingReadTransactions 0
set_interface_property avalon_master readLatency 0
set_interface_property avalon_master readWaitTime 1
set_interface_property avalon_master setupTime 0
set_interface_property avalon_master timingUnits Cycles
set_interface_property avalon_master writeWaitTime 0
set_interface_property avalon_master ENABLED true
set_interface_property avalon_master EXPORT_OF ""
set_interface_property avalon_master PORT_NAME_MAP ""
set_interface_property avalon_master CMSIS_SVD_VARIABLES ""
set_interface_property avalon_master SVD_ADDRESS_GROUP ""

add_interface_port avalon_master av_address address Output 32
add_interface_port avalon_master av_read read Output 1
add_interface_port avalon_master av_byteenable byteenable Output 16
add_interface_port avalon_master av_readdata readdata Input 128
add_interface_port avalon_master av_readdatavalid readdatavalid Input 1
add_interface_port avalon_master av_waitrequest waitrequest Input 1


# 
# connection point conduit_end
# 
add_interface conduit_end conduit end
set_interface_property conduit_end associatedClock clock_25
set_interface_property conduit_end associatedReset ""
set_interface_property conduit_end ENABLED true
set_interface_property conduit_end EXPORT_OF ""
set_interface_property conduit_end PORT_NAME_MAP ""
set_interface_property conduit_end CMSIS_SVD_VARIABLES ""
set_interface_property conduit_end SVD_ADDRESS_GROUP ""

add_interface_port conduit_end VGA_BLANK export Output 1
add_interface_port conduit_end VGA_B export Output 10
add_interface_port conduit_end VGA_CLK export Output 1
add_interface_port conduit_end VGA_G export Output 10
add_interface_port conduit_end VGA_HS export Output 1
add_interface_port conduit_end VGA_R export Output 10
add_interface_port conduit_end VGA_SYNC export Output 1
add_interface_port conduit_end VGA_VS export Output 1


# 
# connection point av_clock
# 
add_interface av_clock clock end
set_interface_property av_clock clockRate 0
set_interface_property av_clock ENABLED true
set_interface_property av_clock EXPORT_OF ""
set_interface_property av_clock PORT_NAME_MAP ""
set_interface_property av_clock CMSIS_SVD_VARIABLES ""
set_interface_property av_clock SVD_ADDRESS_GROUP ""

add_interface_port av_clock av_clk clk Input 1


# 
# connection point clock_25
# 
add_interface clock_25 clock end
set_interface_property clock_25 clockRate 0
set_interface_property clock_25 ENABLED true
set_interface_property clock_25 EXPORT_OF ""
set_interface_property clock_25 PORT_NAME_MAP ""
set_interface_property clock_25 CMSIS_SVD_VARIABLES ""
set_interface_property clock_25 SVD_ADDRESS_GROUP ""

add_interface_port clock_25 CLOCK_25 clk Input 1


# 
# connection point av_reset
# 
add_interface av_reset reset end
set_interface_property av_reset associatedClock av_clock
set_interface_property av_reset synchronousEdges DEASSERT
set_interface_property av_reset ENABLED true
set_interface_property av_reset EXPORT_OF ""
set_interface_property av_reset PORT_NAME_MAP ""
set_interface_property av_reset CMSIS_SVD_VARIABLES ""
set_interface_property av_reset SVD_ADDRESS_GROUP ""

add_interface_port av_reset av_reset reset Input 1


# 
# connection point avalon_slave
# 
add_interface avalon_slave avalon end
set_interface_property avalon_slave addressUnits WORDS
set_interface_property avalon_slave associatedClock av_clock
set_interface_property avalon_slave associatedReset av_reset
set_interface_property avalon_slave bitsPerSymbol 8
set_interface_property avalon_slave burstOnBurstBoundariesOnly false
set_interface_property avalon_slave burstcountUnits WORDS
set_interface_property avalon_slave explicitAddressSpan 0
set_interface_property avalon_slave holdTime 0
set_interface_property avalon_slave linewrapBursts false
set_interface_property avalon_slave maximumPendingReadTransactions 0
set_interface_property avalon_slave readLatency 0
set_interface_property avalon_slave readWaitTime 1
set_interface_property avalon_slave setupTime 0
set_interface_property avalon_slave timingUnits Cycles
set_interface_property avalon_slave writeWaitTime 0
set_interface_property avalon_slave ENABLED true
set_interface_property avalon_slave EXPORT_OF ""
set_interface_property avalon_slave PORT_NAME_MAP ""
set_interface_property avalon_slave CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave avs_address address Input 4
add_interface_port avalon_slave avs_write write Input 1
add_interface_port avalon_slave avs_writedata writedata Input 32
set_interface_assignment avalon_slave embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave embeddedsw.configuration.isPrintableDevice 0

