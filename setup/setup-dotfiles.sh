#!/bin/zsh

# Check if stow has been installed
if ! [ -x "$(command -v stow)" ]; then
    printf "  🔶  Installing stow...\n"
    brew install stow
fi

# Run "stow" on all folders in the dotfiles directory
# --target= user's home directory
# --dir= the .dotfiles repo
stow --verbose=2 --target=$HOME --dir=$(dirname $0)/../ dotfiles
