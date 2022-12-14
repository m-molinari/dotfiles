" =========================================================================
" .vimrc
" =========================================================================

" Python stuff
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

syntax on		" enable syntax
set mouse-=a		" disable mouse
set background=dark	" set backround dark
set history=100		" increase history from 20 to 100

set title		" set window title
set ruler		" show cursor position
set laststatus=2	" status bar
set noerrorbells	" disable beep on errors

set showmatch 		" show matching brackets 
set showmode		" display the current mode

set ignorecase		" search insensitive
set incsearch		" incremental search
set hlsearch		" enable search highlighting :noh		

"set tabstop=4		" indent using four spaces
"set cursorline		" highlight the line currently under cursor
"set visualbell		" flash the screen instead of beeping on errors.
"set list		" show invisible char
