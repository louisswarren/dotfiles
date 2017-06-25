#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='${debian_chroot:+($debian_chroot)}\[\033[32m\]\u\[\e[0m\]@\[\e[1;31m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ \[\e[0;37m\]'
trap 'echo -ne "\e[0m"' DEBUG

alias vim='gvim -v'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias clip='xclip -selection clipboard'

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
