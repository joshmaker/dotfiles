#!/bin/zsh

# Useful utilities
# Note: starship required for command line fun
binaries=(
  ack
  fzf
  htop
  pyenv
  tldr
  trash
  tree
  starship
)
brew install ${binaries[@]}
