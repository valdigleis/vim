" =================================================================================================
" Basic configs
" Author: Valdigleis (valdigleis@gmail.com)
" Date: 25/04/2025
" =================================================================================================

" No compatible with original Vi
set nocompatible

" Encoding
set encoding=utf-8
scriptencoding utf-8

" No backup files
set nobackup

" Lines (relatives) and Colunes
set number
set relativenumber
set ruler

" Define history size
set history=15

" Define Backspace key
set backspace=indent,eol,start

" Active plugin and indentation by filetype
filetype plugin on
filetype indent on

" basic highlight
syntax on

" Display cursor line
set cursorline

" Enables externally modified files to be reloaded in Vim
set autoread
au FocusGained,BufEnter * silent! checktime

" Enables the display of suggestions in the command menu
set wildmenu

" Sets number  lines (when possible) to be displayed above and below the cursor
set so=10

" Sets the height of the command menu
set cmdheight=2

" Enables full mouse support
set mouse=a

" Sets the time that Vim will wait before highlighting the matching pair of delimiters
set matchtime=3

" Add < and > to delimiters set
set matchpairs+=<:>

" Enables highlighting of matching pairs of delimiters
set showmatch

" Enable smart line break
set linebreak

" Enable auto indentation
set autoindent

" Use spaces in use of TAB key and define size of TAB
set et
set tabstop=2

" Sets the width of shift + >> (<<) for indentation in normal mode
set shiftwidth=2

" Enable 24 bits color support
"set termguicolors

" Desactive show mode
set noshowmode

" Enables switching between buffers without the need to save
set hidden

" Enable the folds to be marked by indentation
set foldmethod=indent

" Enable incremental search
set incsearch

" Enable highlight search
set hlsearch

" Deactive case sensitive in search
set smartcase

" Cursor in insertion mode
let &t_SI = "\e[5 q"

" Cursor in normal/visual mode
let &t_EI = "\e[2 q"

" Default options to FZF
let $FZF_DEFAULT_OPTS="--style full --preview 'fzf-preview.sh {}' --bind 'focus:transform-header:file --brief {}' --layout=reverse --info=inline --height=100%"
