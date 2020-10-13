typeset -U PATH path

path=( "/usr/bin" \
       "/usr/local/bin" \
       "$HOME/.local/bin" \
       "$HOME/bin" \
       "$HOME/kafka_2.12-2.6.0/bin" \
       "$HOME/.config/emacs/bin" \
       "$HOME/.config/npm-global/bin" \
       "$HOME/.poetry/bin" \
       "$( printf "%s" "$PATH" | awk -v RS=':' '!a[$1]++ { if (NR > 1) printf RS; printf $1 }' )" 
)

export PATH
