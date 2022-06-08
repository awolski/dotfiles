#!/usr/bin/env bash

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

setxkbmap gb -option 'ctrl:nocaps'

xset -b

exec emacs &

exec i3
