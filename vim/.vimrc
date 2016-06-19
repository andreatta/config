"""""""""""""""""""""""
" ceerious vim config "
"""""""""""""""""""""""

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle plugins {
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Valloric/YouCompleteMe' " from AUR
Plugin 'andreatta/i3-vim-syntax'
Plugin 'dahu/Insertlessly'
Plugin 'davidhalter/jedi-vim'
Plugin 'gelisam/git-slides'
Plugin 'gmarik/Vundle.vim'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'itchyny/vim-cursorword'
Plugin 'itchyny/calendar.vim'
Plugin 'KabbAmine/vCoolor.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tommcdo/vim-exchange'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-scripts/AdvancedSorters'
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
" }

let base16colorspace=256
set t_Co=256
set background=dark
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
" update open file if changed externally
set autoread
" faster redrawing
set ttyfast

" indenting settings
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:˽,eol:↩
" set colors for special characters
highlight NonText guifg=darkgrey ctermfg=4 term=standout
highlight SpecialKey guifg=darkgrey ctermfg=4 term=standout

" search helpers
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

" display linenumbers (relative mode can be toggled)
set number
set relativenumber
" highlight horizontal line
set cursorline

" global undo file
set undofile
set undodir=~/.vim/undo
set history=2000

" use global dir for backup and swap files
set backupdir=~/.vim/.tmp,.
set directory=~/.vim/.tmp,.

" use real encryption
set cm=blowfish2

" statusline tweaks {
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin tuning
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" cursor word {
" highlight background of same words as selected.
" vim-cursorword has to be install for this to work.
highlight CursorWord0 ctermbg=15
" }

" airline config {
set laststatus=2
let g:airline_theme='tomorrow'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#displayed_head_limit = 10
" ASCII HEX current register
let g:airline_section_z = '𝕕 %2b 𝕙 0x%02B 𝕣%{v:register} %4l/%L %3v'
" }

" indent guides {
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
" }

" YouCompleteMe ycm {
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_filetype_blacklist = {}
" disable YCM for specific filetypes
let g:ycm_filetype_blacklist = { 'xxd': 1 }
" }

" custom surroundings for vim-surround {
" get keycode with char2nr("<key>")
let g:surround_36 = "$\r$"			" $
let g:surround_92 = "$\\\r$"		" \ for latex variables
let g:surround_126 = "~~\r~~"		" ~ strike through for markdown
" }

" Pandoc / Markdown {
"let g:pandoc#modules#disabled = ["folding"]
" }

" DrawIt {
let g:drawit_mode = 'D'
" }

" syntastic {
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
" }

" vCoolor {
let g:vcoolor_disable_mappings = 1
let g:vcoolor_lowercase = 1
"let g:vcoolor_custom_picker = 'zenity --title "custom" --color-selection --show-palette --color '
let g:vcoolor_map = '<leader>g'
let g:vcool_ins_rgb_map = '<leader>gr'
let g:vcool_ins_hsl_map = '<leader>gh'
let g:vcool_ins_rgba_map = '<leader>ga'
" }

" Calendar {
let g:calendar_first_day = "monday"
let g:calendar_week_number = 1
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
let g:Calendar_yank_deleting = 1
" }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Stuff to do when opening specific file types
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" do some magic depending on file extension
if has("autocmd")
	" rule to highlight non printable characters
	"highlight nonprintable guifg=darkcyan ctermfg=4 term=standout
	"au bufread * syntax match nonprintable "[^[:punct:][:alnum:]]"

	" automatically strip trailing whitespace on save
	au FileType c,cpp,java,go,php,javascript,python,rust,xml,yml,perl,sql,vim,config,ino,r au BufWritePre <buffer> call StripTrailingWhitespace()

	au BufRead,BufNewFile *.txt,*.tex,*.md set wrap linebreak nolist textwidth=0 wrapmargin=0 shiftwidth=2 tabstop=2 spell spelllang=en_us

	"au BufEnter *.txt,*.md colorscheme github

	" syntax highlighting for gdb files
	au BufNewFile,BufReadPost *.gdb set filetype=gdb

	" jump to last position on opening a file
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

	" git commit messages should always start on first line of file
	au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

	" call make on compilable files
	au BufNewFile,BufReadPost *.c,*cpp,*.md map <F5> :make<cr>

	" automatically save todo list
	au CursorHold,CursorHoldI todo.md update

	" ignore some words from spell check
	au BufRead,BufNewFile * :call IgnoreSpellCheck()
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Special key mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" yank 'til end of line
nnoremap Y y$

" surround current word with preceding character
nmap S ysiw

" center screen on search jumps
nnoremap n nzz
nnoremap N Nzz
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz

" Enter appends new line without going to insert mode
"nnoremap <CR> o<Esc>
"nnoremap <C-CR> O<Esc>
"nnoremap <C-J> i<CR><Esc>
" fix for <CR> mappings in normal mode
"autocmd CmdwinEnter * nnoremap <CR> <CR>
"autocmd BufReadPost quickfix nnoremap <CR> <CR>

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

" Reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" toggle paste mode
map <F12> :set invpaste<CR>
set pastetoggle=<F12>

" save with sudo permission
cmap w!! silent w !sudo tee % > /dev/null
command! W :execute ':silent w !sudo tee % > /dev/null' | :edit!

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
command! -bar Hexeditor call ToggleHex()

" switch language for spell checking
nmap <silent> <F4> :call ToggleSpell()<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader keyboard shortcuts {
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" clear search highlights
nmap <Leader><Space> :nohlsearch<CR>

"nmap <Leader>a

"nmap <Leader>b

" count characters from last selection
noremap <Leader>c	:call CountSelection()<CR>

" toggle highlighting line
"nnoremap <Leader>c :set cursorline! <CR>
" toggle cursor cross
nnoremap <Leader>C :exec &cursorcolumn? "set cursorline nocursorcolumn" : "set cursorline cursorcolumn"<CR>

"nmap <Leader>d

"nmap <Leader>e

"nmap <Leader>f

"nmap <Leader>g
" -> color wheel vColor plugin

nmap <Leader>G :Calendar<CR>

"nmap <Leader>h

"nmap <Leader>i

"nmap <Leader>j

"nmap <Leader>k

nmap <Leader>l :set list!<CR>

" toggle mouse use between vim and terminal
noremap <Leader>m	:call ToggleMouse()<CR>

" toggle relative line numbers
nmap <Leader>n :exec &rnu? "se rnu!" : "se rnu"<CR>

nmap <Leader>o :tabnew

"nmap <Leader>p

"nmap <Leader>q
" execute command on current line and paste output into file
noremap <Leader>q :.!sh<CR>

" reload .vimrc
nmap <Leader>r :source $MYVIMRC<CR>

" syntastic mappings
nmap <Leader>s :SyntasticCheck<CR>
nmap <Leader>t :SyntasticToggleMode<CR>

"nmap <Leader>u

" quickly edit .vimrc
nmap <Leader>v :tabnew $MYVIMRC<CR>

" toggle wrapping of lines
nmap <Leader>w :set wrap!<CR>

" toggle syntax highlighting {
noremap <Leader>x :if exists("g:syntax_on") <Bar>
			\   syntax off <Bar>
			\ else <Bar>
			\   syntax enable <Bar>
			\ endif <CR>
" }

"nmap <Leader>y

"nmap <Leader>z

" }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" functions {
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
	let l = line(".")
	let c = col(".")
	let b:myLang=b:myLang+1
	if b:myLang>=len(g:myLangList)
		let b:myLang=0
	endif
	if b:myLang==0
		setlocal nospell
	else
		execute "setlocal spell spelllang=".get(g:myLangList, b:myLang)
	endif
	echo "spell checking language:" g:myLangList[b:myLang]
	call cursor(l, c)
endfunction
" }

" hexeditor {
function! ToggleHex()
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

" toggle mouse use between vim and terminal
" range => only execute once even if multiple lines are selected
fun! ToggleMouse() range
    if !exists("old_mouse")
        let old_mouse = "a"
    endif

    if &mouse == ""
        let &mouse = old_mouse
		set number
		set relativenumber
        echo "Mouse is for Vim (" . &mouse . ")"
    else
        let old_mouse = &mouse
        let &mouse=""
		set nonumber
		set norelativenumber
        echo "Mouse is for terminal"
    endif
endfunction

" count selected characters
function! CountSelection() range
	let v_backup = @v
	silent normal! gv"vy
	" correctly count wide chars
	echo strchars(@v)
	let @v = v_backup
endfunction

" Ignore some words from spell checking
function! IgnoreSpellCheck()
	"syn match CamelCase /\<[A-Z][a-z]\+[A-Z].\{-}\>/ contains=@NoSpell
	syn match SingleChars /\<.\>/ contains=@NoSpell transparent
	syn cluster Spell add=SingleChars
endfun
" }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" abbreviations and corrections {
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

ab fasle false
ab FASLE FALSE
ab esle else
ab OHM $\Omega$
ab KOHM $\kOmega$

" }
