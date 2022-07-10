# zsh-plugins for mac
if type brew &> /dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi

# command history
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=10000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY

# starship
if type "starship" > /dev/null 2>&1; then
    eval "$(starship init zsh)"
else
    echo "Starship is not installed."
fi

# alias
if type "tree" > /dev/null 2>&1; then
    alias tree="tree -I node_modules -L 3"
fi

if type "exa" > /dev/null 2>&1; then
    alias ls=exa --git
fi

export TERM=xterm-256color
