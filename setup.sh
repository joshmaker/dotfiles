#!/bin/zsh

local install="dotfiles"
for ARGUMENT in "$@"
do
    if [ $ARGUMENT = '--all' ]; then
        install="all"
    else
        echo "Invalid argument $ARGUMENT"
        return 1
    fi
done

# Ensure the homebrew is on the path (otherwise `stow` won't run correctly)
# After dotfiles have been installed, this will be set in `.zsh/01-environment.zsh`
if ! [[ $PATH =~ "usr/local/bin" ]]; then
    export PATH="usr/local/bin:$PATH"
fi

# Only run the dotfiles installation script
if [ $install = "dotfiles" ]; then
    source $(dirname $0)/setup/setup-dotfiles.sh

# Full install of everything
else
    # Install homebrew if it isn't there
    if ! [ -x "$(command -v brew)" ]; then
        printf "  🔶  Installing Homebrew...\n"
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi

    # run each setup script in the setup/ dir
    for setup ($(dirname $0)/setup/*.sh) source $setup
fi
