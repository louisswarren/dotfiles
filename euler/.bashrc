#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='${debian_chroot:+($debian_chroot)}\[\033[32m\]\u\[\e[0m\]@\[\e[1;31m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ \[\e[0;37m\]'
trap 'echo -ne "\e[0m"' DEBUG

