" Brian Ishii
" vim settings

"   -------------------------------
"   UI 
"   -------------------------------
" UI {{{ 

" Colors {{{

" enable colorscheme solarized
colorscheme solarized
" enable syntax colors
syntax on
" enable dark mode
set background=dark
" If not all colors are enabled, enable all colors
if &t_Co < 256
   set t_Co=256
endif

" }}}

" UI Config {{{

" Highlight current line
set cursorline
" Turn on line numbers
set number
" displays incomplete commands
set showcmd
 
" }}}

" Show the status bar
" ruler displays the cursor position at all times
" showcmd displays incomplete commands
set ruler

" }}}

"   -------------------------------
"   Text 
"   -------------------------------
" Text {{{

" Tabs & Spaces {{{

" Autoindent copies the indentation from the previous line
set autoindent

" softtabstop (sts) sets how many spaces a tab should appear to be
" shiftwidth (sw) sets how many spaces text is indented
set softtabstop=4 shiftwidth=4
" expandtab (et) makes vim use spaces instead of tabs
set expandtab
set smarttab
set shiftround

" Turns on indentation settings based on the filetype
filetype plugin indent on

" }}}

" Backspace {{{
" Allow normal backspace behavior in insert mode
set backspace=indent,eol,start
set whichwrap+=<,>
" }}}

" }}}

"   -------------------------------
"   Navigation
"   -------------------------------
" Navigation {{{

" Searching {{{
set incsearch " search as characters are entered
set hlsearch  " highlight matches
" }}}

" Navigation {{{
" Makes it easier to more around long lines
noremap <Up> g<Up>
inoremap <Up> <esc>g<Up>a
noremap <Down> g<Down>
inoremap <Down> <esc>g<Down>a
noremap j gj
noremap k gk
nnoremap j gj
nnoremap k gk
" }}}

" Folding {{{

set foldenable         " enable folding
set foldnestmax=10     " 10 nested fold max
set foldmethod=marker  " fold based on {{{}}} markers
set foldlevelstart=1   " open most folds by default

nnoremap <space> za    " toggle folding

" }}}

" Split {{{
" open new split panes to right and bottom
set splitbelow
set splitright
" }}}

" Enable mouse {{{
if has('mouse')
   set mouse=a
endif
" }}}

" }}}

"   -------------------------------
"   Miscellaneous 
"   -------------------------------
" Miscellaneous {{{
set nocompatible
set nomodeline

" Function Keys {{{
" <F4> and <F5> find whitespace and remove whitespace
nnoremap <F4> :/\s\+$/
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
" }}}

" Timeout {{{
" Change timeout options
set ttimeoutlen=100
set timeoutlen=3000
" }}}

" }}}
