
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

abbr vim=nvim
# alias emacs="emacsclient -q -a ''"
alias editor=nvim
# set -Ux EDITOR nvim

abbr gs 'git status'
abbr ga 'git add .; git status'
abbr gcm 'git commit'
abbr gc 'git checkout'
abbr gcb 'git checkout -b'
abbr gpb 'git push -u origin HEAD'

alias gl "git log --pretty=format:'%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s' --date=short --graph" 

alias drun "docker run --rm -it"
alias dcomposerun "docker-compose -f dev.yml up --build"

alias conffish 'editor ~/.config/fish/config.fish'
alias confnvim 'editor ~/.config/nvim/init.vim'

export GOPATH=(go env GOPATH)
set PATH $PATH (go env GOPATH)
set PATH $PATH (go env GOPATH)/bin

eval (direnv hook fish)
