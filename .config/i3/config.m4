# This file has been auto-generated by i3-config-wizard(1).
# It will not be overwritten, so edit it as you like.
#
# Should you change your keyboard layout some time, delete
# this file and re-run i3-config-wizard(1).
#

# i3 config file (v4)
#
# Please see http://i3wm.org/docs/userguide.html for a complete reference!

set $mod Mod3
set $super Mod3+Shift

if_euler(`
set $leftmonitor DVI-I-0
set $rightmonitor DVI-D-0
') if_plato(`
set $monitor LVDS1
set $externalmonitor VGA1
')

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
#font pango:monospace 10

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
if_euler(`
font pango:DejaVu Sans Mono 10
')if_plato(`
font pango:DejaVu Sans Mono 9
')

# Before i3 v4.8, we used to recommend this one as the default:
# font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, its unicode glyph coverage is limited, the old
# X core fonts rendering does not support right-to-left and this being a bitmap
# font, it doesn’t scale on retina/hidpi displays.

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# Base16 from Xresources
set_from_resource $base00 base16.00 #181818
set_from_resource $base01 base16.01 #282828
set_from_resource $base02 base16.02 #383838
set_from_resource $base03 base16.03 #585858
set_from_resource $base04 base16.04 #b8b8b8
set_from_resource $base05 base16.05 #d8d8d8
set_from_resource $base06 base16.06 #e8e8e8
set_from_resource $base07 base16.07 #f8f8f8
set_from_resource $base08 base16.08 #ab4642
set_from_resource $base09 base16.09 #dc9656
set_from_resource $base0A base16.0A #f7ca88
set_from_resource $base0B base16.0B #a1b56c
set_from_resource $base0C base16.0C #86c1b9
set_from_resource $base0D base16.0D #7cafc2
set_from_resource $base0E base16.0E #ba8baf
set_from_resource $base0F base16.0F #a16946


# start a terminal
bindsym $mod+Return exec i3-sensible-terminal

# show scratchpad
bindsym $mod+grave scratchpad show
bindsym $super+grave move scratchpad

# kill focused window
bindsym $super+q kill

bindsym $mod+d exec dmenu_run      -nb "$base01" -nf "$base04" -sb "$base0D" -sf "$base00"
bindsym $mod+n exec dmenu_notify   -nb "$base01" -nf "$base04" -sb "$base0D" -sf "$base00"
bindsym $mod+o exec openmenu -l 30 -nb "$base01" -nf "$base04" -sb "$base0D" -sf "$base00"
bindsym $mod+m exec manmenu  -l 30 -nb "$base01" -nf "$base04" -sb "$base0D" -sf "$base00"

# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
# bindsym $mod+d exec --no-startup-id i3-dmenu-desktop

# change focus
bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+l focus right

focus_wrapping no

# alternatively, you can use the cursor keys:
bindsym $mod+Left  focus left
bindsym $mod+Down  focus down
bindsym $mod+Up    focus up
bindsym $mod+Right focus right

# move focused window
bindsym $super+h move left
bindsym $super+j move down
bindsym $super+k move up
bindsym $super+l move right

# alternatively, you can use the cursor keys:
bindsym $super+Left  move left
bindsym $super+Down  move down
bindsym $super+Up    move up
bindsym $super+Right move right

# split in horizontal orientation
bindsym $mod+b split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $super+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
#bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child


if_euler(`
set $ws1  "1:webbrowser"
set $ws2  "2:webbrowser"
set $ws3  "3:operations"
set $ws4  "4:operations"
set $ws5  "5:messengers"
set $ws6  "6:webbrowser"
set $ws7  "7:webbrowser"
set $ws8  "8:extraspace"
set $ws9  "9:background"
set $ws10 "10:maximised"
')if_plato(`
set $ws1  "1:internet"
set $ws2  "2:latexpdf"
set $ws3  "3:terminal"
set $ws4  "4:terminal"
set $ws5  "5:messages"
set $ws6  "6:anything"
set $ws7  "7:watching"
set $ws8  "8:watching"
set $ws9  "9:bglisten"
set $ws10 "10:fullmax"
')

# switch to workspace
bindsym $mod+1 workspace $ws1
bindsym $mod+2 workspace $ws2
bindsym $mod+3 workspace $ws3
bindsym $mod+4 workspace $ws4
bindsym $mod+5 workspace $ws5
bindsym $mod+6 workspace $ws6
bindsym $mod+7 workspace $ws7
bindsym $mod+8 workspace $ws8
bindsym $mod+9 workspace $ws9
bindsym $mod+0 workspace $ws10

# move focused container to workspace
bindsym $super+1 move container to workspace $ws1
bindsym $super+2 move container to workspace $ws2
bindsym $super+3 move container to workspace $ws3
bindsym $super+4 move container to workspace $ws4
bindsym $super+5 move container to workspace $ws5
bindsym $super+6 move container to workspace $ws6
bindsym $super+7 move container to workspace $ws7
bindsym $super+8 move container to workspace $ws8
bindsym $super+9 move container to workspace $ws9
bindsym $super+0 move container to workspace $ws10

# reload the configuration file
bindsym $super+c reload
# re-initialise picom
bindsym $super+t exec "killall -SIGUSR1 picom"
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $super+r restart
# exit i3 (logs you out of your X session)
bindsym $super+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
	# These bindings trigger as soon as you enter the resize mode

	# Pressing left will shrink the window’s width.
	# Pressing right will grow the window’s width.
	# Pressing up will shrink the window’s height.
	# Pressing down will grow the window’s height.
if_euler(`
	bindsym h resize shrink width  5 px or 5 ppt
	bindsym j resize grow   height 5 px or 5 ppt
	bindsym k resize shrink height 5 px or 5 ppt
	bindsym l resize grow   width  5 px or 5 ppt
')if_plato(`
	bindsym h resize shrink width  2 px or 2 ppt
	bindsym j resize grow   height 5 px or 5 ppt
	bindsym k resize shrink height 5 px or 5 ppt
	bindsym l resize grow   width  2 px or 2 ppt
')

	# same bindings, but for the arrow keys
	bindsym Left  resize shrink width  5 px or 5 ppt
	bindsym Down  resize grow   height 5 px or 5 ppt
	bindsym Up    resize shrink height 5 px or 5 ppt
	bindsym Right resize grow   width  5 px or 5 ppt

	# back to normal: Enter or Escape
	bindsym Return mode "default"
	bindsym Escape mode "default"
}

bindsym $mod+a mode "resize"

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
	status_command py3status --include ~/.config/i3/py3status/

if_euler(`
	tray_output primary
')
	separator_symbol " | "

	bindsym button4 nop
	bindsym button5 nop

	colors {
		background $base01
		separator  $base03
		statusline $base04

		# State              Border  BG      Text
		focused_workspace    $base0D $base0D $base01
if_euler(`
		active_workspace     $base03 $base02 $base04
		inactive_workspace   $base00 $base00 $base04
')if_plato(`
		active_workspace     $base03 $base03 $base05
		inactive_workspace   $base03 $base02 $base05
')
		urgent_workspace     $base08 $base08 $base00
		binding_mode         $base0A $base0A $base00

	}
}

if_euler(`
for_window [class="^.*"] border pixel 2
')if_plato(`
for_window [class="^.*"] border pixel 3
')

if_euler(`
gaps inner 18
gaps outer -6
')if_plato(`
gaps inner 20
gaps outer -4
')
smart_gaps on
smart_borders on


if_euler(`
bindsym $mod+g   gaps inner current set 18; gaps outer current set -6
')if_plato(`
bindsym $mod+g   gaps inner current set 20; gaps outer current set -4
')
bindsym $super+g gaps inner current set 4;  gaps outer current set 0
bindsym $super+b gaps inner current set 0;  gaps outer current set 0


exec --no-startup-id redshift
exec --no-startup-id dunst
exec --no-startup-id picom
exec --no-startup-id "while true; do urxvt -g 80 -name scratch; done"

bindsym $super+w exec "qutebrowser"

if_euler(`
workspace $ws1  output $leftmonitor
workspace $ws2  output $rightmonitor
workspace $ws3  output $leftmonitor
workspace $ws4  output $rightmonitor
workspace $ws5  output $leftmonitor
workspace $ws6  output $rightmonitor
workspace $ws7  output $leftmonitor
workspace $ws8  output $rightmonitor
workspace $ws9  output $leftmonitor
workspace $ws10 output $rightmonitor
')if_plato(`
workspace $ws1  output $monitor
workspace $ws2  output $monitor
workspace $ws3  output $monitor
workspace $ws4  output $monitor
workspace $ws5  output $monitor
workspace $ws6  output $monitor
workspace $ws7  output $monitor
workspace $ws8  output $externalmonitor
workspace $ws9  output $monitor
workspace $ws10 output $externalmonitor
')

for_window [class="Civ5XP"]       move to workspace $ws10
for_window [class="Spotify"]      move to workspace $ws9
for_window [class="Steam"]        move to workspace $ws6
for_window [class="csgo_linux64"] move to workspace $ws10
for_window [class="Caprine"]      move to workspace $ws5
if_euler(`
for_window [class="discord"]      move to workspace $ws3
for_window [class="Signal"]      move to workspace $ws3
')if_plato(`
for_window [class="discord"]      move to workspace $ws5
for_window [class="Signal"]      move to workspace $ws5
')
for_window [class="dota2"]        move to workspace $ws10

for_window [instance="floating"]  floating enable
for_window [class="floating"]  floating enable
for_window [instance="messenger"] move to workspace $ws5
for_window [instance="scratch"]   move to scratchpad

for_window [class="mpv" floating] border pixel 0

focus_follows_mouse no

#colorclass             border  bg      text    ind     child_border
client.focused          $base0D $base0D $base01 $base0D $base0D
if_euler(`
client.focused_inactive $base02 $base02 $base04 $base01 $base01
client.unfocused        $base02 $base00 $base04 $base01 $base01
')if_plato(`
client.focused_inactive $base03 $base03 $base05 $base00 $base00
client.unfocused        $base03 $base02 $base05 $base00 $base00
')
client.urgent           $base08 $base08 $base00 $base08 $base08
client.placeholder      $base00 $base00 $base05 $base00 $base00
client.background       $base07

bindsym $super+f move container to workspace $ws10; workspace $ws10

focus_on_window_activation urgent

exec i3 workspace $ws1