export PATH=$PATH:~/bin
export EDITOR='gvim -v'

razercfg -d mouse -l all:off
./bin/msens "Razer" 0 &

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
elif [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 2 ]; then
  exec startx /usr/bin/xfwm4
fi
