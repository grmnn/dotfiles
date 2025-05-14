export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"
plugins=(git)

source $ZSH/oh-my-zsh.sh

PROMPT='%F{cyan}%1~%f $(git_prompt_info)'


alias ls="ls -1"
alias editz="zed ~/.zshrc"
alias editg="zed ~/Library/Application\ Support/com.mitchellh.ghostty/config"

alias ada="cd ~/Developer/ada-web"
alias cont="cd ~/Developer/ada-container-integration"

alias gpl="git pull"
alias gst="git status"
alias gc="git commit"
alias gco="git switch"
alias gaa="git add -A"
alias gd="git diff -- . ':(exclude)assets/codegen'"
alias gdc="git diff --cached"
alias gcod="git restore . && git switch develop && git pull"

gbsc() {
    local branch_name=$(echo "$1" | sed 's/: */\//' | sed 's/ /-/g' | tr -s '-')
    echo "Creating branch: $branch_name"
    git switch -c "$branch_name"
}

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


#disable auto correct
unsetopt correct_all
