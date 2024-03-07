#!/usr/bin/env bash

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

setxkbmap gb -option 'ctrl:nocaps'

xset -b

exec emacs &

dbus-update-activation-environment DISPLAY XAUTHORITY WAYLAND_DISPLAY

exec i3
