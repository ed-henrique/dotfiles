export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="awesomepanda"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias v=nvim
alias t=todo.sh

if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
  export MOZ_ENABLE_WAYLAND=1
fi

LIBVA_DRIVER_NAME=iHD

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=/home/eduardo/bin:$PATH
export DOCKER_HOST=unix:///run/user/1000/docker.sock


# bun completions
[ -s "/home/eduardo/.bun/_bun" ] && source "/home/eduardo/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
# source /usr/share/nvm/init-nvm.sh

# opam configuration
[[ ! -r /home/eduardo/.opam/opam-init/init.zsh ]] || source /home/eduardo/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

export EDITOR=nvim

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

export PATH="$HOME/.local/bin:$PATH"
export MANPATH="$HOME/.local/share/man:$MANPATH"

t ls
