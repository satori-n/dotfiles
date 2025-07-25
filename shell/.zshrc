
[[ $- != *i* ]] && return

# Settings
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zhistory

# Prompt
autoload -U colors && colors
PROMPT='%F{green}%B%n@%m%b %F{blue}%B[%D{%L:%M:%S}]%b%F{white} [%~] %F{blue}%B$%b %f'

# Source
source ~/.zshalias

