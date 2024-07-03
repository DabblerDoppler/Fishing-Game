transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+F:/QuartusStuff/Projects/FishingGame/v {F:/QuartusStuff/Projects/FishingGame/v/led_driver.v}
vlog -vlog01compat -work work +incdir+F:/QuartusStuff/Projects/FishingGame/v {F:/QuartusStuff/Projects/FishingGame/v/SEG7_LUT_6.v}
vlog -vlog01compat -work work +incdir+F:/QuartusStuff/Projects/FishingGame/v {F:/QuartusStuff/Projects/FishingGame/v/SEG7_LUT.v}
vlog -vlog01compat -work work +incdir+F:/QuartusStuff/Projects/FishingGame/v {F:/QuartusStuff/Projects/FishingGame/v/Reset_Delay.v}
vlog -vlog01compat -work work +incdir+F:/QuartusStuff/Projects/FishingGame {F:/QuartusStuff/Projects/FishingGame/DE10_LITE_Default.v}
vlog -vlog01compat -work work +incdir+F:/QuartusStuff/Projects/FishingGame {F:/QuartusStuff/Projects/FishingGame/VGA_Audio_PLL.v}
vlog -vlog01compat -work work +incdir+F:/QuartusStuff/Projects/FishingGame/db {F:/QuartusStuff/Projects/FishingGame/db/vga_audio_pll_altpll.v}
vlog -vlog01compat -work work +incdir+F:/QuartusStuff/Projects/FishingGame/v {F:/QuartusStuff/Projects/FishingGame/v/spi_ee_config.v}
vlog -vlog01compat -work work +incdir+F:/QuartusStuff/Projects/FishingGame/v {F:/QuartusStuff/Projects/FishingGame/v/spi_controller.v}
vlog -sv -work work +incdir+F:/QuartusStuff/Projects/FishingGame/v {F:/QuartusStuff/Projects/FishingGame/v/pseudo_rng.sv}
vlog -sv -work work +incdir+F:/QuartusStuff/Projects/FishingGame {F:/QuartusStuff/Projects/FishingGame/debouncer.sv}
vlog -sv -work work +incdir+F:/QuartusStuff/Projects/FishingGame {F:/QuartusStuff/Projects/FishingGame/VGA.sv}
vlog -sv -work work +incdir+F:/QuartusStuff/Projects/Chiptune {F:/QuartusStuff/Projects/Chiptune/audio_gen.sv}
vlog -sv -work work +incdir+F:/QuartusStuff/Projects/FishingGame {F:/QuartusStuff/Projects/FishingGame/game_logic.sv}

