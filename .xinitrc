./.fehbg &
compton --config ~/.compton.conf &
numlockx &
udiskie &
xbindkeys &
xmodmap ~/.Xmodmap &
xset -b &

xrdb ~/.Xresources &&
exec i3
