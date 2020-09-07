#!/bin/sh
# sourced by .zshrc

# GNU or OS-X ls
if ls --color > /dev/null 2>&1; then 
    colorflag="--color"
else 
    colorflag="-G"
fi

# enable color support
alias ls='ls ${colorflag}'

# some more ls aliases
alias l.='ls -d .* ${colorflag}'
alias ll='ls -alF ${colorflag}'
alias la='ls -A ${colorflag}'
alias l='ls -CF ${colorflag}'

alias httpserver='python -m SimpleHTTPServer 10001'
alias vi=vim
alias vimf='vim --remote-silent'
alias pgrep='ps -eo "%p %c %U %C" | grep'
alias nano='nano -m'
alias emacs='emacs -nw'

alias pushrefs='git push origin HEAD:refs/for/master'
alias gitclean='git reflog expire --expire=now --all && git gc --prune=now --aggressive'

alias clangf='clang-format-3.7 -i'
alias scala="scala -Dscala.color=true"
