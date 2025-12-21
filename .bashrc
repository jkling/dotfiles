PS1='\[\033[38;5;214m\][\u@\h]\[\033[00m\] \[\033[38;5;130m\]\w\[\033[00m\]\$ '

alias ls='ls --color=auto -A'

# if rust environment exists, source it
if [ -f "$HOME/.cargo/env" ]; then
    source "$HOME/.cargo/env"
fi

export HISTCONTROL=ignoreboth
shopt -s histappend

export HISTSIZE=10000
export HISTFILESIZE=20000
export HISTTIMEFORMAT="%F %T "
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

PROMPT_COMMAND="history -a; history -c; history -r;"

set -o noclobber
. "$HOME/.cargo/env"
