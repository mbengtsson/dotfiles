#!/bin/bash

echo "Installing dotfiles"
source install/link.sh

if [ "$(uname)" == "Darwin" ]; then
    echo "Running on OSX"

    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    echo "Brewing all the things"
    source install/brew.sh

    echo "Updating OSX settings"
    source install/osx.sh
fi

