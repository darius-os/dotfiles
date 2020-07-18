export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export ZSH=$HOME/.oh-my-zsh
export ZSH_CACHE_DIR=$HOME/.cache
export UPDATE_ZSH_DAYS=1

export DOTFILES="$HOME/code/dotfiles"

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
export TEMP_HOME_DIR="$HOME/temp/"
