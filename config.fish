set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

abbr vim 'nvim'
alias editor=nvim

abbr gs 'git status'
abbr ga 'git add .; git status'
abbr gcm 'git commit'
abbr gcmu 'git commit -m update'
abbr gc 'git checkout'
abbr gcb 'git checkout -b'
abbr gpb 'git push -u origin HEAD'
abbr gd 'git branch -d'
function gdcb --wraps git --description 'delete create branch'
    git branch -d $argv; git checkout -b $argv
end

alias gl "git log --pretty=format:'%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s' --date=short --graph" 

alias drun "docker run --rm -it"
alias dcomposerun "docker-compose -f dev.yml up --build"

abbr kp 'kubectl get pods'
abbr kl 'kubectl logs -f'
abbr km 'kubectl port-forward mongodb-856c79854c-4qvtp 27017'

export NVM_DIR="$HOME/.nvm" 

alias conffish 'editor ~/.config/fish/config.fish'
alias confnvim 'editor ~/.config/nvim/init.vim'

# export GOPATH=(go env GOPATH)
# set PATH $PATH (go env GOPATH)
# set PATH $PATH (go env GOPATH)/bin
# set PATH $PATH ~/.meteor 
# eval (direnv hook fish)

# source ~/.cargo/env

set fish_greeting ""