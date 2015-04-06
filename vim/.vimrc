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
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
"Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
Plugin 'nathanaelkane/vim-indent-guides'

" All of your Plugins must be added before the following line
"-------------------------------------------------------------------------------
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
"-------------------------------------------------------------------------------

set t_co=256
set background=dark
colorscheme gruvbox

" highlight past column 80
let &colorcolumn=join(range(81,999),",")

" convenience functions
syntax on
set wildmenu
set wildmode=list:longest,full
set ruler
set noerrorbells
set smarttab
set shiftwidth=4
set tabstop=4
" wrap lines
set wrap
" .. but honor word boundings
set linebreak
" mark wrapped lines
set showbreak=…
" interpret numbers starting with 0 as decimal
set nrformats=
set spell
" allow buffer switching without saving
set hidden
" allow mouse for 'these®' moments
set mouse=a

" indenting settings
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

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
" arrow has an ugly 1 pixel gap
let g:airline_right_sep = ''

" ASCII HEX current register
let g:airline_section_z = '@%3b ℍ%2B ℝ%{v:register} %3p%% %4l% %3v'
""

" YouCompleteMe ycm
"g:ycm_global_ycm_extra_conf
""

" display linenumbers (relative mode can be toggled)
set number
set relativenumber
" highlight line horizontally
set cursorline
" highlight line vertically
"set cursorcolumn

" global undo file
set undofile
set undodir=$HOME/.vim/undo
set history=1000

" do some magic depending on file extension
if has("autocmd")
	" reload .vimrc on save => this introduced some lags.. not tested
	"au BufWritePost .vimrc source $MYVIMRC

	" automatically strip trailing whitespace on save
	au FileType c,cpp,java,go,php,javascript,python,rust,xml,yml,perl,sql,vim,config au BufWritePre <buffer> call StripTrailingWhitespace()

	" handle md file as markdown
	au BufNewFile,BufReadPost *.md set filetype=markdown

	" syntax highlighting for gdb files
	au BufNewFile,BufReadPost *.gdb set filetype=gdb

	" jump to last position on opening a file
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

	" git commit messages should always start on first line of file
	au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

	" call make on C files
	au BufNewFile,BufRead *.c map <F5> :make<cr>
endif

""""""""""""""""""""""""""
" special mappings
""""""""""""""""""""""""""

" clear search highlights
nmap <Leader><Space> :nohl<CR>

" quickly edit .vimrc
nmap <Leader>v :tabedit $MYVIMRC<CR>
" .. and reload .vimrc
nmap <Leader>r :source $MYVIMRC<CR>

" toggle highlighting line
":nnoremap <Leader>c :set cursorline! <CR>
" toggle cursor cross
nnoremap <Leader>C :exec &cursorcolumn? "set cursorline nocursorcolumn" : "set cursorline cursorcolumn"<CR>

" toggle relative line numbers
nmap <Leader>n :exec &rnu? "se rnu!" : "se rnu"<CR>

" toggle wrapping of lines
nmap <Leader>w :set wrap!<CR>

" toggle paste mode
map <F12> :set invpaste<CR>
set pastetoggle=<F12>

" save with sudo permission
cmap w!! !sudo tee % >/dev/null

" % is current file, make %% current directory
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" ^S to save current buffer in insert and normal mode
inoremap <C-s> <esc>:w<cr>a
nnoremap <C-s> :w<cr>

" navigate around quickbuffers
map <F10> :cprevious<CR>
map <F11> :cclose<CR>
map <F12> :cnext<CR>

""""""""""""""""""""""""""
" functions
""""""""""""""""""""""""""

" strip whitespace {
function! StripTrailingWhitespace()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" do the business:
	%s/\s\+$//e
	" clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfunction
" }
