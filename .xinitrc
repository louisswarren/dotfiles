./.fehbg &
./bin/msens "USB OPTICAL MOUSE" 0.45 &
xrdb ~/.Xresources &
xmodmap ~/.Xmodmap &
xbindkeys &
numlockx &
xrandr --output DVI-D-0 --primary &
udiskie &
compton --config ~/.compton.conf &
exec i3
