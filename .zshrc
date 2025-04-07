# 1. Tool Specific Config

## 1.1. Oh My Zsh
## OBS: This one needs to be the first thing to load, since its the package manager
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="garyblessington"
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

## 1.2. Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# 2. Language Specific Config

## 2.1. Rust

### 2.1.1. Cargo
. "$HOME/.cargo/env"

## 2.2. Go
export PATH=$PATH:/usr/local/go/bin

## 2.3. JS

### 2.3.1. Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

### 2.3.2. Angular
source <(ng completion script)

# 3. Other Configs

## 3.1. Path
export PATH="$HOME/.local/opt:$PATH"
export PATH="$HOME/.local/bin:$PATH"

## 3.2. Aliases
alias pbcopy=xsel -i -b
alias pbpaste=xsel -o -b
