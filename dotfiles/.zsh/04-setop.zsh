## See: https://scriptingosx.com/2019/06/moving-to-zsh-part-3-shell-options/

# Enable auto CD
setopt AUTO_CD

# Add timestamp and elapsed time of the command to the history file
setopt EXTENDED_HISTORY
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt APPEND_HISTORY
# expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST 
# do not store duplications
setopt HIST_IGNORE_DUPS
#ignore duplicates when searching
setopt HIST_FIND_NO_DUPS
# removes blank lines from history
setopt HIST_REDUCE_BLANKS


# Enable ZShell correction of mistyped commands
setopt CORRECT
setopt CORRECT_ALL
export CORRECT_IGNORE_FILE='.*'
