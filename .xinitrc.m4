#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

./.fehbg &
if_euler(`
msens "USB OPTICAL MOUSE " -0.55
numlockx &
')if_plato(`
./bin/msens "Telink Wireless Receiver Mouse" -0.2 &
')
udiskie &
xbindkeys &
xmodmap ~/.Xmodmap &
xset -b &

if_euler(`
./bin/xrdbbase16 gruvbox-dark-pale
')if_plato(`
./bin/xrdbbase16 gruvbox-light-soft
')

exec i3
