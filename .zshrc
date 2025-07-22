export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh
PROMPT='%F{cyan}%1~%f $(git_prompt_info)'

alias ls="ls -1"

alias gpl="git push"
alias gst="git status"
alias gcm="git commit -m"

alias editz="code ~/.zshrc"
alias reloadz="source ~/.zshrc"

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