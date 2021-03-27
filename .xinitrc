#!/usr/bin/env bash

setxkbmap gb -option 'ctrl:nocaps' -option 'caps:escape'

xset -b

exec i3
