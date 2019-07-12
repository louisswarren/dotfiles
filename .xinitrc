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
