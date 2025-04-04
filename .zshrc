export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh


# Alias
alias c="open $1 a \"Cursor\""
alias editz="code ~/.zshrc"
alias ls="ls -l1"
alias dev="cd ~/Developer"
alias gst="git status"
alias gc="git commit"
alias gco="git checkout"
alias gaa="git add -A"
alias gd="git diff"
alias gdc="git diff --cached"
alias githow="cat ~/.zshrc | grep 'alias g'"

gpa() { git add . && git commit -m "$2" && git push }


HASH="%C(always,yellow)%h%C(always,reset)"
RELATIVE_TIME="%C(always,green)%ar%C(always,reset)"
AUTHOR="%C(always,bold blue)%an%C(always,reset)"
REFS="%C(always,red)%d%C(always,reset)"
SUBJECT="%s"

FORMAT="$HASH $RELATIVE_TIME{$AUTHOR{$REFS $SUBJECT"

plog() {
	git log --graph --pretty="tformat:$FORMAT" $* |
	column -t -s '{' |
	less -XRS --quit-if-one-screen
}
