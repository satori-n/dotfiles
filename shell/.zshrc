
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

# History search.
if [ -d ~/.config/zsh/zsh-history-substring-search ]; then
    source ~/.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
    # Zsh-history-substring-search binds.
    bindkey '^[[A' history-substring-search-up
    bindkey '^[[B' history-substring-search-down
fi

# Run fastfetch if available.
if command -v fastfetch >/dev/null && [ -d ~/.config/fastfetch ]; then
    fastfetch
    ls
fi
