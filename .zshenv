typeset -U PATH path

path=( "/usr/bin" \
  "/usr/local/bin" \
  "$HOME/.local/bin" \
  "$HOME/.cargo/bin" \
  "$HOME/.config/npm-global/bin" \
  "$HOME/Dropbox/code/scripts/shell" \
  "$( printf "%s" "$PATH" | awk -v RS=':' '!a[$1]++ { if (NR > 1) printf RS; printf $1 }' )" )

export PATH
