#!/usr/bin/env bash
#Lauch apps when AwesomeWM starts
#set modnitor DPI
DPI=96
xrandr --dpi "$DPI"

function run {
    if ! pgrep "$1" ;
    then
        "$@"&
    fi
}

# Some adjustments to related to x
xset r rate 300 50 & # speed x rate up
xset -dpms # disables monitor sleep time

# List of the apps to autostart below, preceeded with "run"

# Enable numlock and run remaps script
run remaps &
#Policy kit (needed for GUI apps to ask for password)
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
#sxhkd hotkeys
run sxhkd &
# unclutter - hides mouse cursor when inactive
run unclutter &
# Run redshift - night time mode
run redshift &
# MPD
run mpd ~/.config/mpd/mpd.conf &
# Notification daemon
run dunst &
# set background - runs setbg script, requires xwallpaper
run setbg &
# Run compositor
run picom -b &
# Create virtual audio devices and route audio through them
run pwsinks &
run qpwgraph -max ~/.config/qpwgraph/default.qpwgraph &
