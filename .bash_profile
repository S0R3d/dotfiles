HOST_NAME=tw1g

source ~/.nvm/nvm.sh
nvm use stable
shopt -s autocd
shopt -s histappend

export PATH=$PATH:$HOME/bin

export HISTSIZE=5000
export HISTFILESIZE=10000

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtyel='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue

bldred='\e[1;31m' # Bold Red
bldgrn='\e[1;32m' # Bold Green
bldyel='\e[1;33m' # Bold Yellow
bldblu='\e[1;34m' # Bold Blue
bldpur='\e[1;35m' # Bold Purple

txtrst='\e[0m'    # Text Reset

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $txtred%s: $txtgrn%s $txtyel%s\n$txtrst" "$HOST_NAME" "$dir" "$(vcprompt)"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1="🌍 >"

function mkcd()
{
	mkdir $1 && cd $1
}

# -------
# Aliases
# -------
alias a='code .'
alias c='code .'
alias init='npm init'
alias ns='npm start'
alias start='npm start'
alias nr='npm run'
alias run='npm run'
alias nis='npm i -S'
alias nll='npm ls'
alias nlg='npm ls -gl'
alias audit='npm audit'
alias fix='npm audit fix'
alias fixforce='npm audit fix --force'
alias l="ls" # List files in current directory
alias ll="ls -al" # List all files in current directory in long list format
alias o="open ." # Open the current directory in Finder
alias cls="clear"

# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff'
alias gi='git init'
alias gl='git log'
alias gp='git pull'
alias gpsh='git push'
alias gss='git status -s'
alias gs='git status'
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
