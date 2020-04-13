
export ZSH="$HOME/.oh-my-zsh";
ZSH_THEME="material-patrick";

plugins=(
  git
  pip
  cargo
  npm
  nvm
)

source $ZSH/oh-my-zsh.sh
source $ZSH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export SSH_KEY_PATH="$HOME/.ssh/id_rsa"
source ~/.bash_profile

eval "$(rbenv init -)"

bindkey "[D" backward-word
bindkey "[C" forward-word
