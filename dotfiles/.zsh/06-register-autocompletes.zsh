# Auto completions

# pip
if [ $commands[pip] ]; then
    eval "$(pip completion --zsh)"
fi

# pipx
if [ $commands[pipx] ]; then
    autoload -U bashcompinit
    bashcompinit
    eval "$(register-python-argcomplete pipx)"
fi
