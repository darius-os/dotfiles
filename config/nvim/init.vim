let mapleader=","
let maplocalleader="m"

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

source ~/.config/nvim/nvim-config/plugins.vim

call plug#end()

source ~/.config/nvim/nvim-config/common_keymaps.vim
source ~/.config/nvim/nvim-config/plugin.conf.vim
source ~/.config/nvim/nvim-config/nvim.conf.vim
