export PATH=~/bin:$PATH
export EDITOR='gvim -v'

razercfg -d mouse -l all:off

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
	exec startx -- -keeptty > .xorg.log 2>&1
if_euler(`
elif [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 2 ]; then
	exec startx /usr/bin/xfwm4
')
fi
