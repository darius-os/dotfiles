if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/darius/.oh-my-zsh"
export UPDATE_ZSH_DAYS=13

#COMPLETION_WAITING_DOTS="true"
ZSH_THEME="powerlevel10k/powerlevel10k"
#DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="mm/dd/yyyy"

plugins=(git
	 command-not-found sudo copyfile zsh-syntax-highlighting
 	 ripgrep python archlinux vi-mode)
# colored-man-pages taskwarrior
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
fi

alias el="exa -lh -F --icons"
alias exl="exa -lha -F --icons"
alias exla="exa -abghHliS -F --icons"
alias exat="exa -lTh -F --icons"
alias exatt="exa -abghHliST -F --icons"
alias mkdir="mkdir -pv"
alias vi="nvim"
alias clr="clear"
alias pget="sudo pacman -S"
alias pdel="sudo pacman -R"
alias batt="sudo tlp-stat -b"
alias i8k='sudo modprobe i8k'
alias dell='sudo dell-bios-fan-control 0'
alias fan0='i8kfan 0 0'
alias fan1='i8kfan 1 1'
alias fan2='i8kfan 2 2'
alias conf='cd ~/.config/'
alias copy='xsel --clipboard --input'
alias update='sudo pacman -Syu'
alias devupdate='yay -Sua --devel'
alias ping="prettyping --nolegend"
alias peaclock="peaclock --config-dir ~/.config/peaclock"

# recent installed packages: packg 20/30 etc...
alias packg="expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n"
# instaled devel-unstable packages
alias pacdv="pacman -Qq | grep -Ee '-(bzr|cvs|darcs|git|hg|svn)$'"
# files owned by a package: pacman -Qlq package alias
alias pkgfiles=" | grep -v '/$' | xargs du -h | sort -h'"
# Updating mirrors
alias rflctr="sudo reflector --latest 75 --protocol http --sort rate --save /etc/pacman.d/mirrorlist"
alias yayqueryaur="yay -Slq | fzf -m --preview 'yay -Si {1}'| xargs -ro yay -S"
alias yayquerydb="yay -Slq | fzf -m --preview 'yay -Si {1}'| xargs -ro yay -S"
# editing config files
alias vizsh="vi ~/.zshrc"
alias vioh="vi ~/.oh-my-zsh"
alias vixr="vi ~/.Xresources"
alias vi3="vi ~/.config/i3/config"
alias vinvim="vi ~/.config/nvim/init.vim"
alias pcl="peaclock"

# protonvpn
alias pvpnr="sudo protonvpn r"
alias pvpns="sudo protonvpn s"
alias pvpnc="sudo protonvpn c"
alias pvpnf="sudo protonvpn c -f"
alias pvpnt="sudo protonvpn c --tor"
alias pvpnsc="sudo protonvpn c --sc"
alias pvpnd="sudo protonvpn d"

# system maintenance
alias failed="systemctl --failed"
alias journal="sudo journalctl -p 3 -xb"
alias cached="rm -rf ~/.cache/*"
alias du="ncdu --color dark -rr -x --exclude .git"

# net
alias nmwifi="nmcli device wifi list"

alias venvp="source /darius/code/python/scripts/venv/bin/activate"

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /home/darius/.config/broot/launcher/bash/br
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh
