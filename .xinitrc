#!/usr/bin/env bash

setxkbmap gb -option 'ctrl:nocaps'

xset -b

exec i3
