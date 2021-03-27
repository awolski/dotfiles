#!/usr/bin/env bash

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

setxkbmap gb -option 'ctrl:nocaps' -option 'caps:escape'

xset -b

exec i3
