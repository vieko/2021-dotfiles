set fish_greeting

# +> GENERAL
alias y="xclip -selection clipboard -in"
alias p="xclip -selection clipboard -out"

# +> CONVENIENCE
alias dot="/usr/bin/git --git-dir=/home/vieko/.dotfiles/ --work-tree=/home/vieko"
alias bat="batcat"
alias fd="fdfind"

# +> EDITOR
alias vi="nvim"
alias vim="nvim"

# +> VERSION CONTROL
alias gs="git status"

# +> PATHS
set -U fish_user_paths (yarn global bin) $fish_user_paths
