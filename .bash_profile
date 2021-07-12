
HOST_NAME=tw1g
BASE_DIR=$(pwd)

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
txtpur='\e[0;35m' # Purple

bldred='\e[1;31m' # Bold Red
bldgrn='\e[1;32m' # Bold Green
bldyel='\e[1;33m' # Bold Yellow
bldblu='\e[1;34m' # Bold Blue
bldpur='\e[1;35m' # Bold Purple

txtrst='\e[0m'    # Text Reset


emojis=("😀" "😃" "😄" "😁" "😆" "😅")
EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $txtred%s: $txtgrn%s → $txtyel%s $txtblu%s\n$txtrst" "$HOST_NAME" "$BASE_DIR" "$dir" "$(vcprompt)"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
#PS1="TW1G >"
PS1="$EMOJI >"

# ------
# Function Aliases
# ------
function mkcd()
{
    mkdir $1 && cd $1 # Make directory and go inside
}
function gacm() 
{
    git add . && git commit -m $1 # git add . (all files), git commit with message
}

# -------
# Aliases
# -------
alias c='code .'
alias ni='npm init'
alias ns='npm start'
alias start='npm start'
alias nr='npm run'
alias run='npm run'
alias nis='npm i -S'
alias nll='npm ls'
alias nlg='npm ls -gl'
alias l="ls" # List files in current directory
alias ll="ls -al" # List all files in current directory in long list format
alias o="open ." # Open the current directory in Finder
alias cls="clear" # Clear terminal use cls (as in Windows Shell)

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