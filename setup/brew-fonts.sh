#!/bin/zsh

fonts=(
  font-droid-sans-mono-for-powerline
  font-fira-code
  font-inconsolata
  font-ubuntu
)
brew tap homebrew/homebrew-cask-fonts
brew cask install ${fonts[@]}