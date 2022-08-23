# load start
echo "loading zshrc..."

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
    alias tree="tree -I .git -I node_modules -L 3"
fi

if type "exa" > /dev/null 2>&1; then
    alias ls=exa --git
fi

alias ga="git add"
alias gc="git cz"
alias gp="git push"

alias zshrc="vim ~/.zshrc; source ~/.zshrc"

alias vim="noglob vim"
alias vp='vim -c ":e #<1"'
# VBox(for vagrant)

if [ $USER = 'vagrant' ]; then
    VBoxClient --clipboard
fi

# read .zprofile
if [ -e ${HOME}/.zprofile ]; then
    source ~/.zprofile
fi

export TERM=xterm-256color

# load end
echo "done."
