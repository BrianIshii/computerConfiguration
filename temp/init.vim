" nvim user settings
"

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
call plug#end()

syntax on

set tabstop=4 softtabstop=4
set shiftwidth=4
set mouse=a
set nohlsearch
set colorcolumn=80
set number relativenumber
set nowrap
set incsearch

" color
colorscheme gruvbox
set background=dark

" Some basics:
	nnoremap c "_c
	set nocompatible
	filetype plugin on
	set encoding=utf-8

" Nerd tree
	map <leader>n :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

