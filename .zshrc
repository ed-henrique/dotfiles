# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="garyblessington"
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Cargo
. "$HOME/.cargo/env"

# Go
export GOBIN=$HOME/go/bin
export PATH=$PATH:/usr/local/go/bin

# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Path
export PATH="$HOME/.local/opt:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Aliases
alias pbcopy=xsel -i -b
alias pbpaste=xsel -o -b

## Git Aliases
alias gs="git status --short"
alias gl="git log --all --graph --pretty=\
	format:'%h  %an  %ar  %D%n%s%n'"
alias gd="git diff"
alias ga="git add"
alias gap="git add --patch"
alias gc="git commit -m"
alias gp="git push"
alias gu="git pull"
alias gb="git switch"
