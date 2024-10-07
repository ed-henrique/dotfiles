# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="garyblessington"
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# Cargo
. "$HOME/.cargo/env"

# Nvim
export PATH="$PATH:/opt/nvim-linux64/bin"

# Path
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/opt:$PATH"

# Aliases
alias v=nvim
alias pbcopy=xsel -i -b
alias pbpaste=xsel -o -b

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# .NET Version Manager (Dnvm)
if [ -f "$HOME/.local/share/dnvm/env" ]; then
    . "$HOME/.local/share/dnvm/env"
fi

# Angular
source <(ng completion script)
