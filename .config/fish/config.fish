if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias dot='/usr/bin/git --git-dir=/home/vieko/.dotfiles/ --work-tree=/home/vieko'
alias bat="batcat"
alias fd="fdfind"

set fzf_fd_opts --hidden --exclude=.git
