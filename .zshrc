
export ZSH="$HOME/.oh-my-zsh";
ZSH_THEME="agnoster";

plugins=(
  git
  yarn
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

prompt_end() {
  if [[ -n $CURRENT_BG ]]; then
      print -n "%{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR"
  else
      print -n "%{%k%}"
  fi

  print -n "%{%f%}"
  CURRENT_BG='' 

  #Adds the new line and ➜ as the start character.
  printf "\n❯";
}

bindkey "[D" backward-word
bindkey "[C" forward-word

source ~/.bash_profile
