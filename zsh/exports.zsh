#!/bin/sh
# sourced by .zshrc

export TERM=xterm-256color

export PAGER=less
export EDITOR=vim

export GREP_COLOR="1;33";

export LESS_TERMCAP_mb=$'\E[1;31m'
export LESS_TERMCAP_md=$'\E[1;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[1;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[1;32m'

export KEYTIMEOUT=1

export PATH="/usr/local/sbin:$PATH"
