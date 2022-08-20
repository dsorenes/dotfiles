if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vi="nvim"

alias g="git"
alias gs="git status"
alias ga="git add"
alias gap="git add --patch"
alias gd="git diff"

fish_add_path /usr/local/go/bin
set GOPATH /usr/local/go/bin
