# i3status configuration file.
# see "man i3status" for documentation.

# It is important that this file is edited as UTF-8.
# The following line should contain a sharp s:
# ß
# If the above line is not correctly displayed, fix your editor first!

general {
	colors = true
if_euler(`
	color_good = "#5299bf"
	color_degraded = "#fbd461"
	color_bad = "#d07346"
')if_plato(`
	color_good = "#076678"
	color_degraded = "#b57614"
	color_bad = "#9d0006"
')
	interval = 1
}

order += "kernelupdatebar"
order += "window"
order += "playerctlbar"
order += "volume master"
if_euler(`
order += "sensors"
')
if_plato(`
order += "wireless wlp3s0"
order += "battery 0"
')
order += "tztime local"

window {
	hide_title = true
if_euler(`
	position = "center"
	min_length = 126
')
}

kernelupdatebar {
if_euler(`
	color = "#d07346"
')if_plato(`
	color = "#9d0006"
')
}

volume master {
	format = "%volume ♪"
	format_muted = "%volume m"
	device = "pulse"
}

if_plato(`
wireless wlp3s0 {
	format_up = "%essid"
	format_down = ""
}


battery 0 {
	format = "%remaining%status (%percentage)"
	format_down = "No battery"
	status_chr = " ⚡"
	status_bat = ""
	status_unk = " ?"
	status_full = " ☻"
	path = "/sys/class/power_supply/BAT%d/uevent"
	low_threshold = 10
	last_full_capacity = true
	integer_battery_capacity = true
}
')

tztime local {
	format = "%A %-e %B %-l:%M:%S %P "
}
