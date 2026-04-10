if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vi="nvim"

alias g="git"
alias gs="git status"
alias ga="git add"
alias gap="git add --patch"
alias gd="git diff"

# This might not be a good idea
alias python="python3"

alias gcurl='curl --header "Authorization: Bearer $(gcloud auth print-identity-token)"'

fish_add_path /usr/local/go/bin
fish_add_path $HOME/dotfiles
set GOPATH /usr/local/go/bin

fish_add_path $HOME/.local/bin/poetry
set -gx PYENV_ROOT "$HOME/.pyenv"

alias code='open -a "Visual Studio Code"'

pyenv init - | source

# The next line updates PATH for the Google Cloud SDK.
if test -f "$HOME/Downloads/google-cloud-sdk/path.fish.inc"
    source "$HOME/Downloads/google-cloud-sdk/path.fish.inc"
end

fish_add_path $HOME/.local/bin

if test -f "$HOME/.config/fish/local.fish"
    source "$HOME/.config/fish/local.fish"
end

# begin
#   status --is-interactive; and jenv init - | source
#   fish_add_path $HOME/.jenv/bin
# end &>/dev/null



# pnpm
set -gx PNPM_HOME "$HOME/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
