"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" :PluginInstall
"
call plug#begin()

"Plug 'scrooloose/syntastic'
Plug 'pearofducks/ansible-vim'
Plug 'rodjek/vim-puppet'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'

call plug#end()

" Python rules
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
    
" Highlight current line trasparent grey
" set cursorline
hi cursorline cterm=none term=none
highlight CursorLine guibg=#303000 ctermbg=240
nnoremap <F2> :set cursorline! cursorline?<CR>

set autoindent		" indent automatically
set smarttab		" smarter tab
"set shiftwidth=4	" tab is two spaces
"set tabstop=4		" indentation two spaces
"set expandtab		" use spaces not tabs

syntax on		" enable syntax
set mouse-=a		" disable mouse
set background=dark	" set backround dark
set history=100		" increase history from 20 to 100
set encoding=utf-8	" Encoding

set title		" set window title
set ruler		" show cursor position
set laststatus=2	" status bar
set noerrorbells	" disable beep on errors

set showmatch		" show matching brackets 
set showmode		" display the current mode
set showcmd		" display incomplete command

set wildmenu		" show list
set wildmode=list:longest,full	" command Tab completion, list matches

set ignorecase		" search insensitive
set incsearch		" incremental search
set hlsearch		" enable search highlighting :noh

"set cursorline		" highlight the line currently under cursor
"set visualbell		" flash the screen instead of beeping on errors.

set scrolloff=4		" Display 4 lines above the cursor

"" list section
set nolist		" Hidden characters
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:$,precedes:«,extends:»
highlight SpecialKey term=standout ctermfg=red guifg=red
highlight NonText term=standout ctermfg=red guifg=red
nnoremap <F3> :set list! list?<CR>

" autocomplete
set wildmenu "Enable auto completion menu after pressing TAB
set wildmode=list:longest "Make wildmenu behave like similar to Bash completion

"" STATUS LINE
""
"set laststatus=2
"set statusline=
"set statusline+=%=
"set statusline+=\ %F\ %M\ %Y\ %R
"set statusline+=\ [TYPE=%y]\ row:\ %l\ col:\ %c\ percent:\ %p%%
""set statusline=[FORMAT=%{&ff}]\ [TYPE=%y]\ [cursor=%l,%v][percentage=%p%%]\ [BUFFER=%n]


"" AIRLINE DOC
"  variable names                default contents
"  ---------------------------------------------------------------------------
"  let g:airline_section_a       (mode, crypt, paste, spell, iminsert)
"  let g:airline_section_b       (hunks, branch)[*]
"  let g:airline_section_c       (bufferline or filename, readonly)
"  let g:airline_section_gutter  (csv)
"  let g:airline_section_x       (tagbar, filetype, virtualenv)
"  let g:airline_section_y       (fileencoding, fileformat, 'bom', 'eol')
"  let g:airline_section_z       (percentage, line number, column number)
"  let g:airline_section_error   (ycm_error_count, syntastic-err, eclim,
"                                 languageclient_error_count)
"  let g:airline_section_warning (ycm_warning_count, syntastic-warn,
"                                 languageclient_warning_count, whitespace)

"" Airline Plugin
""
let g:airline_theme='deus'
let g:airline_section_z = 'TYPE=%y ENCODING=%{&fileencoding?&fileencoding:&encoding} cursor:%l/%c tot=%L percent:%p%%'
let g:airline_section_y = '%F %M %R'

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"" Syntastic Plugin
""
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

