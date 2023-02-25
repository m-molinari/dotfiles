"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Python stuff
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

syntax on›      ›       " enable syntax
set mouse-=a›   ›       " disable mouse
set background=dark›    " set backround dark
set history=100››       " increase history from 20 to 100

set title›      ›       " set window title
set ruler›      ›       " show cursor position
set laststatus=2›       " status bar
set noerrorbells›       " disable beep on errors

set showmatch›  ›       " show matching brackets•
set showmode›   ›       " display the current mode

set ignorecase› ›       " search insensitive
set incsearch›  ›       " incremental search
set hlsearch›   ›       " enable search highlighting :noh›      ›       

"set tabstop=4› ›       " indent using four spaces
"set cursorline››       " highlight the line currently under cursor
"set visualbell››       " flash the screen instead of beeping on errors.
"set list›      ›       " show invisible char

set scrolloff=4››       " Display 5 lines above the cursor
set encoding=utf-8›     " Encoding
set showmode
set showcmd

set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

set wildmenu "Enable auto completion menu after pressing TAB
set wildmode=list:longest "Make wildmenu behave like similar to Bash completion

set statusline=
set statusline+=%=
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=\ [TYPE=%y]\ row:\ %l\ col:\ %c\ percent:\ %p%%
"set statusline=[FORMAT=%{&ff}]\ [TYPE=%y]\ [cursor=%l,%v][percentage=%p%%]\ [BUFFER=%n]
set laststatus=2

" Expand lines :
" VIMSCRIPT -------------------------------------------------------------- {{{

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}

" SOME STUFF ------------------------------------------------------------ {{{

" configuration go here

" }}}
