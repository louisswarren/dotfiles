./.fehbg &
compton --config ~/.compton.conf &
numlockx &
udiskie &
xbindkeys &
xmodmap ~/.Xmodmap &
xset -b &

xrdbbase16 &&
xrdb -merge ~/.Xresources &&
exec i3
