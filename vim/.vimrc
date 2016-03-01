"""""""""""""""""""""""
" ceerious vim config "
"""""""""""""""""""""""

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
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-scripts/AdvancedSorters'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'gelisam/git-slides'
Plugin 'vim-scripts/drawit'

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

set t_Co=256
set background=dark
"let base16colorspace=&t_Co
colorscheme gruvbox

" highlight past column 80
"let &colorcolumn=join(range(81,999),",")

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
" .. but honor word boundaries
set linebreak
" mark wrapped lines
set showbreak=…
" interpret numbers starting with 0 as decimal
set nrformats=
" disable spell checking per default
set spelllang="en_us"
set nospell
" allow buffer switching without saving
set hidden
" allow mouse for 'these®' moments
set mouse=a
" make backspace brain compatible
set backspace=indent,eol,start

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

" ASCII HEX current register
let g:airline_section_z = '𝕒%3b 𝕙%2B 𝕣%{v:register} %4l/%L %3v'
""

" YouCompleteMe ycm
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_filetype_blacklist = {}
""

" Pandoc / Markdown
let g:pandoc#modules#disabled = ["folding"]

" DrawIt
let g:drawit_mode = 'S'

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

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
set history=2000

" do some magic depending on file extension
if has("autocmd")
	" automatically strip trailing whitespace on save
	au FileType c,cpp,java,go,php,javascript,python,rust,xml,yml,perl,sql,vim,config,ino,r au BufWritePre <buffer> call StripTrailingWhitespace()

	au BufRead,BufNewFile *.txt,*.tex,*.md set wrap linebreak nolist textwidth=0 wrapmargin=0

	" syntax highlighting for gdb files
	au BufNewFile,BufReadPost *.gdb set filetype=gdb

	" jump to last position on opening a file
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

	" git commit messages should always start on first line of file
	au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

	" call make on compilable files
	au BufNewFile,BufReadPost *.c,*.md map <F5> :make<cr>
endif

""""""""""""""""""""""""""
" special key mappings
""""""""""""""""""""""""""
" yank 'til end of line
noremap Y y$

" surround current word with preceding character
noremap S ysiw

" Enter appends new line without going to insert mode
nnoremap <CR> o<Esc>
nnoremap <C-CR> O<Esc>
nnoremap <C-J> i<CR><Esc>
" fix for <CR> mappings in normal mode
:autocmd CmdwinEnter * nnoremap <CR> <CR>
:autocmd BufReadPost quickfix nnoremap <CR> <CR>

" arrow keys special treatment
"noremap <Right> gt
"noremap <Left>  gT
"noremap <Up>   <Nop>
"noremap <Down> <Nop>

noremap <C-Left>    <Nop>
noremap <C-Right>   <Nop>
noremap <C-Up>      <Nop>
noremap <C-Down>    <Nop>

" navigate between split windows
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" clear search highlights
nmap <Leader><Space> :nohl<CR>

" syntastic mappings
nmap <Leader>s :SyntasticCheck<CR>
nmap <Leader>t :SyntasticToggleMode<CR>

" quickly edit .vimrc
nmap <Leader>v :tabedit $MYVIMRC<CR>
" .. and reload .vimrc
nmap <Leader>r :source $MYVIMRC<CR>

" toggle highlighting line
"nnoremap <Leader>c :set cursorline! <CR>
" toggle cursor cross
nnoremap <Leader>C :exec &cursorcolumn? "set cursorline nocursorcolumn" : "set cursorline cursorcolumn"<CR>

" toggle relative line numbers
nmap <Leader>n :exec &rnu? "se rnu!" : "se rnu"<CR>

" toggle wrapping of lines
nmap <Leader>w :set wrap!<CR>

" toggle syntax highlighting
:map <Leader>x :if exists("g:syntax_on") <Bar>
			\   syntax off <Bar>
			\ else <Bar>
			\   syntax enable <Bar>
			\ endif <CR>

" toggle paste mode
map <F12> :set invpaste<CR>
set pastetoggle=<F12>

" save with sudo permission
cmap w!! silent w !sudo tee > /dev/null %
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

" % is current file, make %% current directory
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" ^S to save current buffer in insert and normal mode
inoremap <C-s> <esc>:w<cr>a
nnoremap <C-s> :w<cr>

" navigate around quickbuffers
map <F9> :cprevious<CR>
map <F10> :cclose<CR>
map <F11> :cnext<CR>

" ex command for toggling hex mode - define mapping if desired
map <F3> :Hexeditor<CR>
command -bar Hexeditor call ToggleHex()

" switch language for spell checking
nmap <silent> <F4> :call ToggleSpell()<CR>

" execute command on current line and paste output into file
noremap Q :.!sh<CR>

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

" spell checking {
let b:myLang=0
let g:myLangList=["nospell","de_ch","en_us"]
function! ToggleSpell()
	let b:myLang=b:myLang+1
	if b:myLang>=len(g:myLangList) | let b:myLang=0 | endif
	if b:myLang==0
		setlocal nospell
	else
		execute "setlocal spell spelllang=".get(g:myLangList, b:myLang)
	endif
	echo "spell checking language:" g:myLangList[b:myLang]
endfunction
" }

" hexeditor {
function ToggleHex()
	" hex mode should be considered a read-only operation
	" save values for modified and read-only for restoration later,
	" and clear the read-only flag for now
	let l:modified=&mod
	let l:oldreadonly=&readonly
	let &readonly=0
	let l:oldmodifiable=&modifiable
	let &modifiable=1
	if !exists("b:editHex") || !b:editHex
		" save old options
		let b:oldft=&ft
		let b:oldbin=&bin
		" set new options
		setlocal binary " make sure it overrides any textwidth, etc.
		silent :e " this will reload the file without trickeries
		"(DOS line endings will be shown entirely )
		let &ft="xxd"
		" set status
		let b:editHex=1
		" switch to hex editor
		%!xxd
	else
		" restore old options
		let &ft=b:oldft
		if !b:oldbin
			setlocal nobinary
		endif
		" set status
		let b:editHex=0
		" return to normal editing
		%!xxd -r
	endif
	" restore values for modified and read only state
	let &mod=l:modified
	let &readonly=l:oldreadonly
	let &modifiable=l:oldmodifiable
endfunction
" }

" Return indent (all whitespace at start of a line), converted from
" tabs to spaces if what = 1, or from spaces to tabs otherwise.
" When converting to tabs, result has no redundant spaces.
function! Indenting(indent, what, cols)
	let spccol = repeat(' ', a:cols)
	let result = substitute(a:indent, spccol, '\t', 'g')
	let result = substitute(result, ' \+\ze\t', '', 'g')
	if a:what == 1
		let result = substitute(result, '\t', spccol, 'g')
	endif
	return result
endfunction

" Convert whitespace used for indenting (before first non-whitespace).
" what = 0 (convert spaces to tabs), or 1 (convert tabs to spaces).
" cols = string with number of columns per tab, or empty to use 'tabstop'.
" The cursor position is restored, but the cursor will be in a different
" column when the number of characters in the indent of the line is changed.
function! IndentConvert(line1, line2, what, cols)
	let savepos = getpos('.')
	let cols = empty(a:cols) ? &tabstop : a:cols
	execute a:line1 . ',' . a:line2 . 's/^\s\+/\=Indenting(submatch(0), a:what, cols)/e'
	call histdel('search', -1)
	call setpos('.', savepos)
endfunction
command! -nargs=? -range=% Space2Tab call IndentConvert(<line1>,<line2>,0,<q-args>)
command! -nargs=? -range=% Tab2Space call IndentConvert(<line1>,<line2>,1,<q-args>)
command! -nargs=? -range=% RetabIndent call IndentConvert(<line1>,<line2>,&et,<q-args>)

" some nice abbreviations and corrections
ab fasle false
ab FASLE FALSE
ab esle else

