
# ls
alias ls="ls -hFG"
alias ll="ls -hFGl"
alias la="ls -hFGlA"

# mkdir
alias mkdir="mkdir -p"

# tree
alias tree="Tree -CFA --dirsfirst"

# Chown
alias mine="sudo chown -R $(whoami)"

# Python
# clear cached Python files 
pyclean() {
    find ./$1 -type d -name "__pycache__" -or -type f -name "*.pyc" -delete
}

# Create a new Python project and launch Sublime Text 3
pynew() {
    poetry new --src $1
    cd $1
    poetry install
    git init
    touch .gitignore
    git add .
    git commit -m "Initial commit"
    cat <<EOS > "$1.sublime-project"
{
    "folders": [
        {
            "folder_exclude_patterns": [".venv"],
            "path": "."
        }
    ],
    "settings": {
        "anaconda_linting": true,
        "anaconda_linting_behaviour": "always",
        "python_interpreter": "$PWD/.venv/bin/python",
        "sublack.black_blackd_autostart": true,
        "sublack.black_on_save": true,
        "sublack.black_use_blackd": true,
        "test_command": "pytest",
        "test_virtualenv": "$PWD/.venv",
        "validate_imports": true
    }
}
EOS
    subl --project "$1.sublime-project"
}
