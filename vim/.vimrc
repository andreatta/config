""""""""""""""""""""""""""
" ceerious vim config
""""""""""""""""""""""""""

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'gorodinskiy/vim-coloresque'
"Plugin 'ap/vim-css-color'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
"--------------------------------------------------------------------------------------------------
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"--------------------------------------------------------------------------------------------------

set t_co=256
set background=dark
colorscheme gruvbox

" convenience functions
syntax on
set wildmenu
set wildmode=list:longest,full
set ruler
set noerrorbells
set smarttab
set shiftwidth=4
set tabstop=4
" interpret numbers starting with 0 as decimal
set nrformats=								
set spell
" allow buffer switching without saving
set hidden
" allow mouse for 'these®' moments
set mouse=a

" search helpers
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

" airline config
set laststatus=2
let g:airline_theme='base16'
let g:airline_powerline_fonts=1
" arrow had an ugly 1 pixel gap
let g:airline_right_sep=''					
""

" display linenumbers (relative mode can be toggled)
set number									
set relativenumber
" highlight line horizontally
set cursorline
" highlight line vertically					
set cursorcolumn						

" global undo file
set undofile								
set undodir=$HOME/.vim/undo
set history=500

""""""""""""""""""""""""""
" special mappings
""""""""""""""""""""""""""

" clear search highlights
nmap <Leader><Space> :nohl<CR>

" toggle highlighting line 
:nnoremap <Leader>c :set cursorline! <CR> 
" toggle cursor cross 
:nnoremap <Leader>C :set cursorline! cursorcolumn!<CR>

" toggle relative line numbers
nmap <Leader>n :exec &rnu? "se rnu!" : "se rnu"<CR>

" toggle wrapping of lines
nmap <Leader>w :set wrap!<CR>

" toggle paste mode
map <F12> :set invpaste<CR>
set pastetoggle=<F12>

" save with sudo permission
cmap w!! %!sudo tee > /dev/null %
