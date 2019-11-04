if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

./.fehbg &
./bin/msens "USB OPTICAL MOUSE" 0.45 &
compton --config ~/.compton.conf &
numlockx &
udiskie &
xbindkeys &
xmodmap ~/.Xmodmap &
xrdb ~/.Xresources &
xset -b &

xrdbbase16 &&
xrdb -merge ~/.Xresources &&
exec i3
