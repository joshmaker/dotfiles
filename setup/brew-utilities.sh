#!/bin/zsh

# Useful utilities
binaries=(
  ack
  fzf
  htop
  pyenv
  tldr
  tree
)
brew install ${binaries[@]}
