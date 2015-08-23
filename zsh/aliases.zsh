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

alias httpserver='python -m http.server'
alias vi=vim
alias pgrep='ps -eo "%p %c %U %C" | grep'
alias nano='nano -m'

alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

alias elasticsearch=~/Development/elasticsearch-1.5.2/bin/elasticsearch
