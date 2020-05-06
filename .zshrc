#--------------------------------------------#

export ZSH=$HOME/.oh-my-zsh
export ZSH_CACHE_DIR=$HOME/.cache
export UPDATE_ZSH_DAYS=13

ZSH_THEME="minimal"
HIST_STAMPS="mm/dd/yyyy"

plugins=(git zsh-syntax-highlighting sudo copyfile colored-man-pages
    python ripgrep taskwarrior vi-mode command-not-found)

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

#--------------------------------------------#

#Ubuntu
export PATH=$HOME/bin:$PATH
export PATH=$PATH:/usr/local/bin:$PATH
export PATH=$PATH:~/bin:~/bin/scripts:$PATH
export PATH=$PATH:~/.local/bin:$PATH
export PATH=$HOME/.nimble/bin:$PATH

export TERM="xterm-256color"
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="brave"
export READER="zathura"
export FILE="nemo"
export QT_SELECT=5
export PAGER="nvimpager -p"
export ARCHFLAGS="-arch x86_64"
export RANGER_LOAD_DEFAULT_RC=FALSE
export _JAVA_AWT_WM_NONREPARENTING=1

export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
export FZF_DEFAULT_COMMAND='rg --files --hidden 2>/dev/null'
export FZF_COMPLETION_TRIGGER='**'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS='--preview "/usr/bin/cat {} | nvimpager -c "'
export FZF_ALT_C_COMMAND='rg --hidden --files --null --sort path 2>/dev/null | xargs -0 dirname | uniq'

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export __GL_MaxFramesAllowed=1
export ARCHFLAGS="-arch x86_64"

#Arch Linux
#export FBFONT=/usr/share/kbd/consolefonts/ter-216n.psf.gz
#export SBCL_HOME=/home/darius/.roswell/impls/x86-64/linux/sbcl-bin/2.0.1/lib/sbcl
#export LANG=en_US.UTF-8
#export LC_ALL=en_US.UTF-8
#export LC_CTYPE=en_US.UTF-8

#export EDITOR="nvim"
#export TERMINAL="alacritty"
#export BROWSER="chromium"
#export READER="zathura"
#export FILE="nemo"
#export PAGER="nvimpager -p"
#export ARCHFLAGS="-arch x86_64"
#export RANGER_LOAD_DEFAULT_RC=FALSE
#export _JAVA_AWT_WM_NONREPARENTING=1

#export HISTFILE=~/.zsh_history
#export HISTSIZE=10000
#export SAVEHIST=10000

#export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
#export FZF_DEFAULT_COMMAND='rg --files --hidden 2>/dev/null'
#export FZF_COMPLETION_TRIGGER='**'
#export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
#export FZF_CTRL_T_OPTS='--preview "/usr/bin/cat {} | nvimpager -c "'
#export FZF_ALT_C_COMMAND='rg --hidden --files --null --sort path 2>/dev/null | xargs -0 dirname | uniq'

#export XDG_CURRENT_DESKTOP=i3
##export XDG_SESSION_DESKTOP=i3
##export XDG_CONFIG_HOME="$HOME/.config"

#--------------------------------------------#
# Ubuntu

alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade"
alias install="sudo apt-get install"
alias sshar='cd ; ./Documents/ssh/sshar.sh'
alias el="exa -lh -F --icons"
alias exl="exa -lha -F --icons"
alias exla="exa -abghHliS -F --icons"
alias exat="exa -lTh -F --icons"
alias exatt="exa -abghHliST -F --icons"
alias vinvim="vi ~/.config/nvim/init.vim"

# protonvpn
alias pvpnr="sudo protonvpn r"
alias pvpns="sudo protonvpn s"
alias pvpnc="sudo protonvpn c"
alias pvpnf="sudo protonvpn c -f"
alias pvpnt="sudo protonvpn c --tor"
alias pvpnsc="sudo protonvpn c --sc"
alias pvpnd="sudo protonvpn d"

# Arch Linux
#alias el="exa -lh -F --icons"
#alias exl="exa -lha -F --icons"
#alias exla="exa -abghHliS -F --icons"
#alias exat="exa -lTh -F --icons"
#alias exatt="exa -abghHliST -F --icons"
#alias mkdir="mkdir -pv"
#alias vi="nvim"
#alias clr="clear"
#alias pget="sudo pacman -S"
#alias pdel="sudo pacman -R"
#alias batt="sudo tlp-stat -b"
#alias i8k='sudo modprobe i8k'
#alias dell='sudo dell-bios-fan-control 0'
#alias fan0='i8kfan 0 0'
#alias fan1='i8kfan 1 1'
#alias fan2='i8kfan 2 2'
#alias conf='cd ~/.config/'
#alias copy='xsel --clipboard --input'
#alias update='sudo pacman -Syu'
#alias devupdate='yay -Sua --devel'
#alias ping="prettyping --nolegend"
#alias peaclock="peaclock --config-dir ~/.config/peaclock"

# recent installed packages: packg 20/30 etc...
#alias packg="expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n"
# instaled devel-unstable packages
#alias pacdv="pacman -Qq | grep -Ee '-(bzr|cvs|darcs|git|hg|svn)$'"
# files owned by a package: pacman -Qlq package alias
#alias pkgfiles=" | grep -v '/$' | xargs du -h | sort -h'"
# Updating mirrors
#alias rflctr="sudo reflector --latest 75 --protocol http --sort rate --save /etc/pacman.d/mirrorlist"
#alias yayqueryaur="yay -Slq | fzf -m --preview 'yay -Si {1}'| xargs -ro yay -S"
#alias yayquerydb="yay -Slq | fzf -m --preview 'yay -Si {1}'| xargs -ro yay -S"
# editing config files
#alias vizsh="vi ~/.zshrc"
#alias vioh="vi ~/.oh-my-zsh"
#alias vixr="vi ~/.Xresources"
#alias vi3="vi ~/.config/i3/config"
#alias vinvim="vi ~/.config/nvim/init.vim"

# protonvpn
#alias pvpnr="sudo protonvpn r"
#alias pvpns="sudo protonvpn s"
#alias pvpnc="sudo protonvpn c"
#alias pvpnf="sudo protonvpn c -f"
#alias pvpnt="sudo protonvpn c --tor"
#alias pvpnsc="sudo protonvpn c --sc"
#alias pvpnd="sudo protonvpn d"

# system maintenance
#alias failed="systemctl --failed"
#alias journal="sudo journalctl -p 3 -xb"
#alias cached="rm -rf ~/.cache/*"
#alias du="ncdu --color dark -rr -x --exclude .git"

# net
#alias nmwifi="nmcli device wifi list"

#--------------------------------------------#

#Ubuntu
source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="/home/darius/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Arch Linux
#source $ZSH/oh-my-zsh.sh

#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#source /home/darius/.config/broot/launcher/bash/br
#source /usr/share/fzf/completion.zsh
#source /usr/share/fzf/key-bindings.zsh

#--------------------------------------------#
