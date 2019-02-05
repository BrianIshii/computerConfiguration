" Brian Ishii
" iterm
" Colors {{{
set nohls   
" colorschemes badwolf, molokai
"colorscheme solarized " colorscheme theme
syntax on           " enable colors
set background=dark
" If not all colors are enabled, enable all colors
if &t_Co < 256
   set t_Co=256
endif
" }}}
" Tabs & Spaces {{{

" Autoindent copies the indentation from the previous line
set autoindent

" Tabbing stuff
" softtabstop (sts) sets how many spaces a tab should appear to be
" shiftwidth (sw) sets how many spaces text is indented
" expandtab (et) makes vim use spaces instead of tabs
" Basically this allows for spaces instead of tabs
set softtabstop=3 shiftwidth=3
set expandtab
set smarttab
set shiftround

" }}}

" UI Config {{{
set cursorline " Highlight current line
set number     " Turn on line numbers
set showcmd    " displays incomplete commands
 
" }}}

" Searching {{{
set incsearch " search as characters are entered
set hlsearch  " highlight matches
" }}}
" Misc vim stuff
set nocompatible
set nomodeline

" Turns on indentation settings based on the filetype
filetype plugin indent on

nnoremap j gj
nnoremap k gk

" Allow normal backspace behavior in insert mode
set backspace=indent,eol,start
set whichwrap+=<,>


" Show the status bar
" ruler displays the cursor position at all times
" showcmd displays incomplete commands
set ruler

" Change timeout options
set ttimeoutlen=100
set timeoutlen=3000

" Makes it easier to more around long lines
noremap <Up> g<Up>
inoremap <Up> <esc>g<Up>a
noremap <Down> g<Down>
inoremap <Down> <esc>g<Down>a
noremap j gj
noremap k gk

" Enable mouse {{{
if has('mouse')
   set mouse=a
endif
" }}}

" Folding {{{
set foldenable        " enable folding
set foldnestmax=10    " 10 nested fold max
set foldmethod=marker " fold based on indent level
"set foldmethod=indent " fold based on indent level
"set foldlevelstart=10 " open most folds by default
set foldlevel=0
nnoremap <space> za
" }}}
" Official python style is 4 spaces rather that 3
autocmd FileType python setlocal sts=4 sw=4
" <F4> and <F5> find whitespace and remove whitespace
nnoremap <F4> :/\s\+$/
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" vim:foldmethod=marker:foldlevel=0
