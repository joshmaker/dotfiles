
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
            "path": ".",
            "folder_exclude_patterns": [".venv"]
        }
    ]
}
EOS
    subl --project "$1.sublime-project"
}
