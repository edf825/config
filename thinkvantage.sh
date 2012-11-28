#!/bin/bash

screens=$(xrandr | sed -n 's/\(.*\) connected \(.*\)+.*+.* .*$/\1@\2/p' | tr "\n" "," | sed -e 's/,$/\n/')

if [ $screens = "LVDS-0@1920x1080" ]; then
  setup="Laptop"
elif [ $screens = "VGA-0@1920x1200,LVDS-0@1920x1080,DP-3@1920x1200" ]; then
  setup="Workstation"
fi

# Set up touchpad the way I like it
synclient HorizTwoFingerScroll=1
synclient VertTwoFingerScroll=1
synclient EmulateTwoFingerMinW=1000
synclient EmulateTwoFingerMinZ=1000
synclient VertEdgeScroll=0
synclient HorizEdgeScroll=0
xinput set-button-map 'SynPS/2 Synaptics TouchPad' 1 2 3 5 4 7 6

if [ $setup = "Laptop" ]; then
  xrandr --output VGA-0 --off --output DP-3 --off
  xrandr --output LVDS-0 --auto
elif [ $setup = "Workstation" ]; then
  xrandr --output DP-3 --auto
  xrandr --output LVDS-0 --off
  xrandr --output VGA-0 --auto
  xrandr --output DP-3 --rotate left --output VGA-0 --rotate right --left-of VGA-0
fi

notify-send "Setup Changed" $setup
