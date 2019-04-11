#!/bin/sh

./.fehbg &
xrdb ~/.Xresources &
xmodmap ~/.Xmodmap &
xbindkeys &
./bin/msens "YSTEK G Mouse" 0.5 &
xset -b &
udiskie &

exec i3
