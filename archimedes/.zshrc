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

PROMPT="%{$fg_bold[green]%}%n%{$reset_color%}@%{$fg_bold[red]%}%m%{$reset_color%}:%~$ "
RPROMPT="%(1j,%{$fg_bold[blue]%}[%{$fg_bold[red]%}%j%{$fg_bold[blue]%}]%{$reset_color%},)"
zle_highlight=(default:bold)
#zle_highlight=()

alias ls='ls --color=auto'

# bindkey '^R' history-incremental-search-backward

export PATH=~/bin:$PATH
