" -------------------------------------------------------------------------------------------------
" Basic config file, create in 07/09/2024
" Author: Valdigleis (Dk4LL)
" Mail: dk4ll@proton.me
" -------------------------------------------------------------------------------------------------

" Disable compatible mode with the original Vi
set nocompatible

" Define input enconding
set encoding=utf-8

" Define read config to Vimscript files 
scriptencoding utf-8

" Disable backup files
set nobackup

" Enable number lines
set number

" Show relative number for the lines
set relativenumber

" Show number columns number
set ruler

" Define the size to the commands historic
set history=15

" Enable backspace key
set backspace=indent,eol,start

" Enable autodetect for file and plugins
filetype plugin on
filetype indent on

" Enable basic highlight (include in Vim)
syntax on

" Enable autoread 
set autoread
au FocusGained,BufEnter * silent! checktime

" Enable recommedation in commands menu
set wildmenu

" Define height for the commands menu
set cmdheight=2

" Enable mouse use
"set mouse=a

" Enable highlight for demiliters
set showmatch

" Add '<' and '>' for the demiliters set 
set matchpairs+=<:>

" Define time in segundos with highlight in delimiters
set matchtime=3

" Enable intelligent break lines
set linebreak

" Enable autoindent
set autoindent

" Enable space use in tabulation
set et

" Define number space in tabulation
set tabstop=2

" Define size for the tabulation with commands: shift + >> and shift + <<
set shiftwidth=2

" Enable charge buffers without save
set hidden

" Define method for the folds
set foldmethod=indent

" Define level fold to fold ever open in buffer start
set foldlevelstart=99

" Disable show mode
set noshowmode

" Enable 24bits color support
"set termguicolors






