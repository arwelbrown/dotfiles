#    _               _              
#   | |__   __ _ ___| |__  _ __ ___ 
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__ 
# (_)_.__/ \__,_|___/_| |_|_|  \___|
# 
# -----------------------------------------------------
# ~/.bashrc
# -----------------------------------------------------

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------

alias nf='neofetch'
alias pf='pfetch'
alias ls='eza -al'
alias shutdown='systemctl poweroff'
alias v='nvim'
alias wifi='nmtui'
alias dot="cd ~/dotfiles"

# -----------------------------------------------------
# GIT
# -----------------------------------------------------

alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gst="git stash"
alias gsp="git stash; git pull"
alias gcheck="git checkout"

# -----------------------------------------------------
# EDIT NOTES
# -----------------------------------------------------

alias notes='nvim ~/notes.txt'

# -----------------------------------------------------
# START STARSHIP
# -----------------------------------------------------
eval "$(starship init bash)"

# _____________________________________________________
# ZOXIDE
# _____________________________________________________
eval "$(zoxide init bash)"
export PATH="/home/arwel/.local/bin"
alias cd="z"

# _____________________________________________________
# BASH FUNCTIONS
# _____________________________________________________
source ~/.bash_functions

export PATH="/home/arwel/bin:$PATH"
export PATH="$PATH:$(go env GOPATH)/bin"



