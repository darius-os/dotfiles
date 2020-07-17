zmodload zsh/pcre
zmodload zsh/regex
zmodload zsh/net/tcp

autoload -Uz compinit
autoload -Uz add-zsh-hook

ZSH_THEME="lambda-mod"
HIST_STAMPS="mm/dd/yyyy"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
    git
    zsh-syntax-highlighting
    sudo
    vi-mode
    docker
    archlinux
    github
)

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

if [[ -n ${ZDOTDIR:-${HOME}}/$ZSH_COMPDUMP(#qN.mh+24) ]]; then
  compinit -d $ZSH_COMPDUMP;
else
  compinit -C;
fi

exit_zsh() {
  exit
}

zshcache_time="$(date +%s%N)"

rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]]; then
    local paccache_time="$(dare -r /var/cache/zsh/pacman +%s%N)"
    if (( zshcache_time < paccache_time )); then
      rehash
      zshcache_time="$paccache_time"
    fi
  fi
}


add-zsh-hook -Uz precmd rehash_precmd

zle -N exit_zsh
bindkey '^D' exit_zsh
zstyle ':completion:*' rehash true

#--------------------------------------------#

source /home/darius/.aliasrc
source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#source /home/darius/.config/broot/launcher/bash/br
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh
