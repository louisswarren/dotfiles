export PATH=~/bin:$PATH
export EDITOR='gvim -v'

razercfg -d mouse -l all:off

[ -e ~/.dircolors ] && eval $(dircolors -b ~/.dircolors) || 
    eval $(dircolors -b)
