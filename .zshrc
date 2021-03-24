zmodload zsh/pcre
zmodload zsh/regex
zmodload zsh/net/tcp

autoload -Uz compinit
autoload -Uz add-zsh-hook

ZSH_THEME="minimal_improved"
HIST_STAMPS="mm/dd/yyyy"
DISABLE_UNTRACKED_FILES_DIRTY="true"


plugins=(
    git
    zsh-syntax-highlighting
    sudo
    poetry
    vi-mode
    archlinux
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

#if [[ $- == *i* ]] && command -v shellhistory-location &>/dev/null; then
#  . $(shellhistory-location)
#  shellhistory enable
#fi

exit_zsh() {
  exit
}

zshcache_time="$(date +%s%N)"

rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]]; then
    local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
    if (( zshcache_time < paccache_time )); then
      rehash
      zshcache_time="$paccache_time"
    fi
  fi
}

awsmfa() {
  #ARN_OF_MFA=arn:aws:iam::oops

  unset AWS_ACCESS_KEY_ID
  unset AWS_SECRET_ACCESS_KEY
  unset AWS_SESSION_TOKEN

  $(aws sts get-session-token --duration-seconds 129600 \
      --serial-number $ARN_OF_MFA --token-code $1 --output text \
      | awk '{printf("export AWS_ACCESS_KEY_ID=%s\nexport AWS_SECRET_ACCESS_KEY=%s\nexport AWS_SESSION_TOKEN=%s\n",$2,$4,$5)}' > ~/.aws/.env)
  source ~/.aws/.env
}


column_count() {
    awk '{print NF}' $1 \
        | sort -nu \
        | tail -n 2
}

# vpnloc() {
#     curl -sS https://ipvigilante.com/\/"$(curl https://ipinfo.io/ip)" \
#         | python3 -m json.tool
# }

get_packages_by_size() {

    pacman -Qi  \
    | awk 'BEGIN{sort="sort -k2 -n"} /Name/ {name=$3} /Size/{size=$4/1024;print name":",size,"Mb"|sort}' | less
}

file_type_count() {
    find $1 -type f | perl -ne 'print $1 if m/\.([^.\/]+)$/' \
        | sort \
        | uniq -c \
        | sort -n
}

_clamscan() {
    read -p
    find $LOCATION_TO_SCAN -type f -print0 \
        | xargs -0 -P $(nproc) clamscan
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

