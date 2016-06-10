# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd nomatch
unsetopt beep extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/louis/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz colors
colors

PROMPT="%{$fg[green]%}%n%{$reset_color%}@%{$fg[red]%}%m%{$reset_color%}:%~$ "
RPROMPT="%(1j,%{$fg[blue]%}[%{$fg[red]%}%j%{$fg[blue]%}]%{$reset_color%},)"
#zle_highlight=(default:bold)
zle_highlight=()

alias ls='ls --color=auto'

# bindkey '^R' history-incremental-search-backward
