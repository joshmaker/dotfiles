# Fish like autosuggestions
# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#manual-git-clone
source $(dirname $0)/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax Highlighting
# Should be last plugin installed
# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
source $(dirname $0)/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Starship command line 
eval "$(starship init zsh)"
