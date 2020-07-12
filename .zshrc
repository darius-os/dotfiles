#--------------------------------------------#

export ZSH=$HOME/.oh-my-zsh
export ZSH_CACHE_DIR=$HOME/.cache
export UPDATE_ZSH_DAYS=1

ZSH_THEME="lambda-mod"
HIST_STAMPS="mm/dd/yyyy"

plugins=(
    git
    github
    zsh-syntax-highlighting
    sudo
    copyfile
    colored-man-pages
    python
    fzf
    ripgrep
    taskwarrior
    postgres
    vi-mode
    command-not-found
    catimg
)

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

#--------------------------------------------#

export PATH=/usr/bin/:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/bin:~/bin/scripts:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.roswell/bin:$PATH
export PATH=$HOME/.config/npm-global/bin:$PATH
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
#export PATH=$HOME/.stack/programs/x86_64-linux/ghc-tinfo6-8.6.5/bin:$PATH
export PATH=$( printf "%s" "$PATH" | awk -v RS=':' '!a[$1]++ { if (NR > 1) printf RS; printf $1 }' )

export FBFONT=/usr/share/kbd/consolefonts/ter-216n.psf.gz
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export READER="zathura"
export FILE="nemo"
export PAGER="nvimpager -p"
export ARCHFLAGS="-arch x86_64"
export RANGER_LOAD_DEFAULT_RC=FALSE
export _JAVA_AWT_WM_NONREPARENTING=1
export RUBYOPT='-W:no-deprecated -W:no-experimental'
export LAMBDA_MOD_N_DIR_LEVELS=6

export HISTFILE=~/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
export FZF_DEFAULT_COMMAND='rg --files --hidden 2>/dev/null'
export FZF_COMPLETION_TRIGGER='**'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS='--preview "/usr/bin/cat {} | nvimpager -c "'
export FZF_ALT_C_COMMAND='rg --hidden --files --null --sort path 2>/dev/null | xargs -0 dirname | uniq'

export XDG_CURRENT_DESKTOP=i3
##export XDG_SESSION_DESKTOP=i3
export XDG_CONFIG_HOME="$HOME/.config"
export TEMP_HOME_DIR="$HOME/temp/"

#--------------------------------------------#

# Arch

alias pva="source ~/.local/share/main-venv/bin/activate"
alias pvm="source ~/.local/share/idea/microblog/bin/activate"
alias cm="cd ~/code/python/microblog"
alias el="exa -lh -F --icons"
alias exl="exa -lha -F --icons"
alias exla="exa -abghHliS -F --icons"
alias exat="exa -lTh -F --icons"
alias exatt="exa -abghHliST -F --icons"
alias exd="exa -ldhg */"
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
alias intop='sudo intel_gpu_top'

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
alias vifm='./.local/bin/vifmrun'


alias pvpnr="sudo protonvpn r"
alias pvpns="sudo protonvpn s"
alias pvpnc="sudo protonvpn c"
alias pvpnf="sudo protonvpn c -f"
alias pvpnt="sudo protonvpn c --tor"
alias pvpnsc="sudo protonvpn c --sc"
alias pvpnd="sudo protonvpn d"

alias failed="systemctl --failed"
alias journal="sudo journalctl -p 3 -xb"
alias cached="rm -rf ~/.cache/*"
alias du="ncdu --color dark -rr -x --exclude .git"

#alias zathura="devour zathura"
alias mpv="devour mpv"
alias sxiv="devour sxiv"
alias leafpad="devour leafpad"

mkcdir ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

# Ubuntu

#export PATH=$HOME/bin:$PATH
#export PATH=/usr/local/bin:$PATH
#export PATH=~/bin:~/bin/scripts:$PATH
#export PATH=:$HOME/.local/bin:$PATH
#export PATH=$HOME/.nimble/bin:$PATH
#export PATH=$HOME/.emacs.d/bin:$PATH
#export PATH=$HOME:/.roswell/bin:$PATH
#export PATH=$HOME/.stack/programs/x86_64-linux/ghc-tinfo6-8.6.5/bin:$PATH
#export PATH=$HOME/.cabal/bin:$PATH
#export PATH=~/.npm-global/bin:$PATH
#export PATH=$( printf "%s" "$PATH" | awk -v RS=':' '!a[$1]++ { if (NR > 1) printf RS; printf $1 }')


#export TERM="xterm-256color"
#export EDITOR="nvim"
#export TERMINAL="alacritty"
#export BROWSER="brave"
#export READER="zathura"
#export FILE="nemo"
#export QT_SELECT=5
#export PAGER="nvimpager -p"
#export ARCHFLAGS="-arch x86_64"
#export RANGER_LOAD_DEFAULT_RC=FALSE
#export _JAVA_AWT_WM_NONREPARENTING=1

#export HISTFILE=~/.zsh_history
#export HISTSIZE=100000
#export SAVEHIST=100000

#export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
#export FZF_DEFAULT_COMMAND='rg --files --hidden 2>/dev/null'
#export FZF_COMPLETION_TRIGGER='**'
#export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
#export FZF_CTRL_T_OPTS='--preview "/usr/bin/cat {} | nvimpager -c "'
#export FZF_ALT_C_COMMAND='rg --hidden --files --null --sort path 2>/dev/null | xargs -0 dirname | uniq'

#export LANG=en_US.UTF-8
#export LC_ALL=en_US.UTF-8
#export LC_CTYPE=en_US.UTF-8
#export __GL_MaxFramesAllowed=1
#export ARCHFLAGS="-arch x86_64"

#--------------------------------------------#

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /home/darius/.config/broot/launcher/bash/br
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

#--------------------------------------------#
