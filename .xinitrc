#!/bin/bash
# lembrar de aliasar startx como "startx ~/.xinitrc'

export EDITOR=nvim

export XCURSOR_SIZE=24

export PATH=~/scripts:~/appimage:$PATH

# [ -f "$HOME/.Xresources" ] && xrdb -merge "$HOME/.Xresources"

setxkbmap us
setxkbmap -option caps:escape
xset r rate 220 35

# /home/guss/scripts/xmouse.sh

xrandr --output DP-3 --primary --mode 1920x1080 --rate 144 --pos 0x0 \
       --output HDMI-1 --mode 1920x1080 --rate 60 --pos 1920x0

xset -dpms

picom --config ~/.config/picom/picom.conf &

/home/guss/scripts/swall
/home/guss/scripts/setadorderoot &

# dunst
# dunst &

# xfce4-notifyd
# xfce4-notifyd &

/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &

# blueman
# blueman-applet &

numlockx on

systemctl --user import-environment DISPLAY XAUTHORITY
dbus-update-activation-environment --systemd DISPLAY XAUTHORITY

exec $1
