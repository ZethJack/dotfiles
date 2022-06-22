#!/usr/bin/env bash

function run {
    if ! pgrep $1 ;
    then
        $@&
    fi
}
DPI=96

run xrandr --dpi "$DPI"
run setbg
run xrdb ${XDG_CONFIG_HOME:-$HOME/.config}/x11/xresources
run remaps
run xset r rate 300 50
run xset -dpms
run mpd
run xcompmgr
run redshift
run dunst
run unclutter
run ssh-agent
run lxpolkit
run xsettingsd
# run pwsinks
# run pw-rewire
[ -n "$xrdbpid" ] && wait "$xrdbpid"
