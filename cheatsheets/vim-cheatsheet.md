VIM Tipps'n'Tricks
==================

# Misc tips

## Convert markdown file to pdf

	:!pandoc % -o %:r.pdf

## install / update YCM
cd ~/.vim/bundle/YouCompleteMe
python2 install.py --clang-completer --system-libclang

.ycm_extra_conf.py fallback is in ~/.vim
It can be copied to specific project folder if it needs to be adapted.

## auto complete

	^x^p

## Find patterns

`\v`		very magic switch so special characters like '{' don't have to be escaped.

### Find 4 hex numbers (e.g. 0xf4d5)

	/\v\x{4}

### Replace last search pattern with a printf statement

Convert number to corresponding character.
	`:%s//\=printf("%c", submatch(0))/`
	`:%s//\=printf("%c", str2nr(submatch(0), 16))/`


Delete lines containing a pattern
~~~
:g/PATTERN/d
~~~

Delete lines *not* containing a pattern
~~~
:g!/PATTERN/d
:v/PATTERN/d
~~~

Find number duplications of three

Use very-no-magic flag and create a group of a single digit.
/\v(\d)\1\1

### Delete empty lines

~~~
:g/^$/d
~~~

# Spellcheck

```
<F4> 		keybinding :toggleSpellcheck
[s			previous spellcheck error
]s			next spellcheck error
z=			suggestions for current word
zg			add current word to dictionary
:spellr	 repeat word correction
```

# Fugitive

```
:Gdiff	 open 3-way diff on conflicting git branch
[c			previous conflicting hunk
]c			next conflicting hunk
dp			shorthand for :diffput
:only		close all other windows
:Gwrite[!]	wriet current file to index
```

# Folding

```
zc			close current fold
zo			open current fold
za			toggle current fold
zC			close all levels of current fold
zO			open all  levels of currentfolds
zA			toggle all levels of current folds
zR			open all folds
zM			close all folds
````
