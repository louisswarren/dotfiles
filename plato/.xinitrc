#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

./.fehbg &
./bin/msens "YSTEK G Mouse" 0.5 &
udiskie &
xbindkeys &
xmodmap ~/.Xmodmap &
xset -b &

./bin/xrdbbase16 phd
xrdb -merge ~/.Xresources

exec i3
