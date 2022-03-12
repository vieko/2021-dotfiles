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
alias st="speed-test"
alias speedtest="speed-test"

# +> EDITOR
alias vi="nvim"
alias vim="nvim"

# +> VERSION CONTROL
alias ga="git add"
alias gap="git add --patch"
alias gai="git add --interactive"
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
alias gst="git stash"
alias gr="git reset HEAD"
alias grv="git rev-parse"

# +> PYENV
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

# +> GO
set -x GOPATH $HOME/usr/local/go/bin

# +> IPINFO
function __complete_ipinfo
    set -lx COMP_LINE (commandline -cp)
    test -z (commandline -ct)
    and set COMP_LINE "$COMP_LINE "
    /usr/bin/ipinfo
end
complete -f -c ipinfo -a "(__complete_ipinfo)"

# +> PATHS
set -U fish_user_paths (yarn global bin) $fish_user_paths
