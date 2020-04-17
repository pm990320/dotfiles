
export ZSH="$HOME/.oh-my-zsh";
ZSH_THEME="agnoster";

plugins=(
  git
  yarn
  sudo
  ssh-agent
  zsh_reload
  python
  helm
  pip
  git-auto-fetch
  dotenv
  django
  colored-man-pages
  aws
  osx
  kubectl
)

export SSH_KEY_PATH="$HOME/.ssh/id_rsa"
zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities id_rsa

source $ZSH/oh-my-zsh.sh
source $ZSH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

bindkey "[D" backward-word
bindkey "[C" forward-word

source ~/.bash_profile
