#!/usr/bin/env bash
#Lauch apps when AwesomeWM starts

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

# List of the apps to autostart below, preceeded with "run"

#Policy kit (needed for GUI apps to ask for password)
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
#sxhkd hotkeys
run sxhkd &
# unclutter - hides mouse cursor when inactive
run unclutter &
# MPD
run mpd ~/.config/mpd/mpd.conf &
# Notification daemon
run dunst &
# Restore wallpaper
run setbg &
