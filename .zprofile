export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/scripts:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=”$HOME/.emacs.d/bin:$PATH”
# export PATH=~/.config/npm-global/bin:
export PATH="$HOME:~/.roswell/impls/x86-64/linux/sbcl-bin/2.0.1/bin:$PATH"

export FBFONT=/usr/share/kbd/consolefonts/ter-216n.psf.gz
export SBCL_HOME=/home/darius/.roswell/impls/x86-64/linux/sbcl-bin/2.0.1/lib/sbcl
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="brave"
export READER="zathura"
export FILE="nemo"
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
