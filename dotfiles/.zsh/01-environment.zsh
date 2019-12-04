# Paths
export PATH=$HOME/.pyenv/bin/:/Users/josh/.local/bin/:/usr/local/bin/:/usr/local/sbin:$PATH

# Fix "sed: RE error: illegal byte sequence"
# https://stackoverflow.com/a/19770395
# export LC_CTYPE=C 
# export LANG=C

# Fix bug with utf-8 in command prompt and duplicated tab completion commands
# https://stackoverflow.com/a/22779469
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Colorize man pages
# source: https://github.com/imkira/dotfiles/blob/master/.zsh/colored-man-pages.zsh
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;38;5;74m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[38;33;246m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[04;38;5;146m'

# GPG
export GPG_TTY=$(tty)

# Prompt
export PROMPT='%(?.%F{green}√.%F{red}X)%f %B%F{240}%d%f%b ~> '
