#!/bin/sh
# sourced by .zshrc

# ex - archive extractor
# usage: ex <file>
ex() {    
  if [ -f "$1" ] ; then
    case "$1" in
      *.tar.bz2) tar xvjf "$1"   ;;
      *.tar.gz)  tar xvzf "$1"   ;;
      *.bz2)     bunzip2 "$1"    ;;
      *.rar)     unrar x "$1"    ;;
      *.gz)      gunzip "$1"     ;;
      *.tar)     tar xvf "$1"    ;;
      *.tbz2)    tar xvjf "$1"   ;;
      *.tgz)     tar xvzf "$1"   ;;
      *.zip)     unzip "$1"      ;;
      *.Z)       uncompress "$1" ;;
      *.7z)      7z x "$1"       ;;
      *)
      echo "'$1' cannot be extracted"
      return 1
      ;;
    esac
  else
    echo "'$1' is not a valid file"
    return 1
  fi
  return 0
}

# roll - archive wrapper
# usage: roll <foo.tar.gz> ./foo ./bar
roll () {
  if [ -n "$1" ] ; then
    FILE=$1
    case $FILE in
      *.tar)     shift && tar cf $FILE $*   ;;
      *.tar.bz2) shift && tar cvjf $FILE $* ;;
      *.tar.gz)  shift && tar cvzf $FILE $* ;;
      *.tgz)     shift && tar cvzf $FILE $* ;;
      *.zip)     shift && zip $FILE $*      ;;
      *.rar)     shift && rar $FILE $*      ;;
    esac
  else
    echo "usage: roll <foo.tar.gz> ./foo ./bar"
	  return 1
  fi
  return 0
}

# swap two files
swap() {
  local TMPFILE=tmp.$$
  mv "$1" $TMPFILE
  mv "$2" "$1"
  mv $TMPFILE "$2"
}

# open a GUI app from CLI
open() {
  $1 >/dev/null 2>&1 &
}

# create .gitignore files using gitignore.io API
function gi() {
	curl -L -s https://www.gitignore.io/api/$@ ;
}

#
function hgrep() {
history | grep $*;
}

function hist() {
    history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
}

