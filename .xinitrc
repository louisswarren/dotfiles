./.fehbg &
compton --config ~/.compton.conf &
numlockx &
udiskie &
xbindkeys &
xmodmap ~/.Xmodmap &

xrdb ~/.Xresources &&
exec i3
