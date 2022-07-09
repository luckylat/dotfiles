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
