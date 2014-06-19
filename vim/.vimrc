"""""""""""""""""""""""""""""""""""""""""""""
" ceerious vimrc
"""""""""""""""""""""""""""""""""""""""""""""

"call pathogen#infect()
filetype plugin indent on

set ofu=syntaxcomplete#Complete
syntax on
set t_Co=256
colorscheme hipster

set nocompatible

" set relative numbers except for current row a/k/a hybrid number mode
set relativenumber
set number

" show cross disable with \c (mapleader+c)
set cursorline
set cursorcolumn
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

set history=700
set wildmenu
set wildmode=list:longest,full
set ruler
set noerrorbells
"set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set showcmd
set showmode
set mouse=a
set list listchars=tab:\|-,trail:-,extends:$,nbsp:=
"set list listchars=tab:\|-,extends:$,precedes:<,nbsp:=
"set lcs=tab:┅,trail:>·,extends:>,precedes:<,nbsp:&

"set cmdheight=2
if has('statusline')
    set laststatus=2

    " Broken down into easily includeable segments
    set statusline=%<%f\ " Filename
    set statusline+=%w%h%m%r " Options
    "set statusline+=%{fugitive#statusline()} " Git Hotness
    set statusline+=\ [%{&ff}/%Y] " filetype
    set statusline+=\ [%{getcwd()}] " current dir
    set statusline+=\ [@\%03.3b/0x\%02.2B] " ASCII / Hex value of char
    set statusline+=%=%-14.(%l,%c%V%)\ %p%% " Right aligned file nav info
endif

" use default mapleader
"let mapleader = "\"

set undofile
set undodir=$HOME/.vim/undo

" programming stuff
au BufNewFile,BufRead *.c map <F5> :make<cr>
au BufNewFile,BufRead *.c map <F10> :cp<cr>
au BufNewFile,BufRead *.c map <F11> :cc<cr>
au BufNewFile,BufRead *.c map <F12> :cn<cr>

" use normal regex in search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

" save with sudo permission
cmap w!! %!sudo tee > /dev/null %

nmap <F8> :TagbarToggle<CR>

" F12 to toggle paste mode
map <F12> :set invpaste<CR>
set pastetoggle=<F12>

" clear search selection with ESC
"nnoremap <esc> :noh<return><esc>
nnoremap <leader><space> :noh<cr>




" show current function within source code
" does *NOT* yet work!!!
nmap _F :call CurrentFunc()<CR>
" side effect: register k and mark k will be changed

func! CurrentFunc()
  exec "normal mk"
  " c-type code have remarkable definitions from other OO code.
  let l:extension = expand("%:e")
  if l:extension == "c"
  exec "normal ][%b%b"
  else
  exec "?private\\|public\\|protected\\|procedure\\|function\\s\\+\.*("
  endif
  "TODO: maybe you need to open your closed fold at
  first
  exec "normal v$\"ky`k"
  exec "echo @k"
endfunc " CurrentFunc
