PS1='\[\033[38;5;214m\][\u@\h]\[\033[00m\] \[\033[38;5;130m\]\w\[\033[00m\]\$ '

alias ls='ls --color=auto -A'

# if rust environment exists, source it
if [ -f "$HOME/.cargo/env" ]; then
    source "$HOME/.cargo/env"
fi
