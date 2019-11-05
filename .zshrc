
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "lib/*", from:oh-my-zsh
# zplug "plugins/git", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"

# export NVM_LAZY_LOAD=true
zplug "lukechilds/zsh-nvm"

export SPACESHIP_GIT_SYMBOL=''
zplug denysdovhan/spaceship-prompt, use:spaceship.zsh, from:github, as:theme
  
# zplug "themes/simple", from:oh-my-zsh, as:theme
# ZSH_THEME_GIT_PROMPT_DIRTY=""
# ZSH_THEME_GIT_PROMPT_CLEAN=""

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load #--verbose

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
#   node          # Node.js section
#   golang        # Go section
#   docker        # Docker section
#   aws           # Amazon Web Services section
  exec_time     # Execution time
  line_sep      # Line break
#   jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)


# Enable colored output for ls
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

alias vim='nvim'
alias editor=nvim

alias gs='git status'
alias ga='git add .; git status'
alias gcm='git commit'
alias gcma='git commit --amend'
alias gcmnv='git commit --no-verify'
alias gcmnva='git commit --no-verify --amend'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gpb='git push -u origin HEAD'
alias gd='git branch -d'
alias gl="git log --pretty=format:'%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s' --date=short --graph"

alias dcd='docker-compose down && docker system prune -f'
alias dcu='docker-compose down && docker system prune -f && docker-compose up -d --build'

function ddac(){
# Docker - delete all containers
  docker ps -a | awk 'NR>1 {print }' | xargs docker rm -f
}

function ddai(){
# Docker - delete all images
  docker images | awk 'NR>1 {print }' | xargs doker rmi -f
}

function dlsof(){
# Docker - display all ports exposed by docker container
  lsof -Pnl +M -i -cmd | grep -E "LISTEN|TCP"   | grep "com\.dock"
}

# [[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
