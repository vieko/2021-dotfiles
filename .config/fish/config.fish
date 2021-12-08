set fish_greeting

# +> GENERAL
alias y="xclip -selection clipboard -in"
alias p="xclip -selection clipboard -out"

#+> DIRECTORY
alias l="exa -1"
alias ll="exa -lg"
alias la="LC_COLLATE=c exa -la"

# +> CONVENIENCE
alias dot="/usr/bin/git --git-dir=/home/vieko/.dotfiles/ --work-tree=/home/vieko"
alias bat="batcat"
alias fd="fdfind"
alias rm="trash"
alias speedtest="speed-test"
alias st="speed-test"

# +> EDITOR
alias vi="nvim"
alias vim="nvim"

# +> VERSION CONTROL
alias ga="git add"
alias gb="git branch -av"
alias gop="git open"
alias gc="git commit"
alias gcm="git commit -m"
alias gcl="git clone"
alias gco="git checkout"
alias gcoo="git checkout --"
alias gf="git fetch"
alias gi="git init"
alias gl="git log --graph --pretty='format:%C(yellow)%h%Creset %C(red)%G?%Creset%C(green)%d%Creset %s %Cblue(%cr) %C(bold blue)<%aN>%Creset'"
alias gll="git log --pretty='format:%C(yellow)%h%Creset %C(red)%G?%Creset%C(green)%d%Creset %s %Cblue(%cr) %C(bold blue)<%aN>%Creset'"
alias gL="gl --stat"
alias gp="git push"
alias gpl="git pull --rebase --autostash"
alias gs="git status --short ."
alias gss="git status"

# +> PYENV
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

# +> PATHS
set -U fish_user_paths (yarn global bin) $fish_user_paths
