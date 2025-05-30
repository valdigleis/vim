" =================================================================================================
" Install/Configs Plugins
" Author: Valdigleis (valdigleis@gmail.com)
" Date:26/04/2025
" =================================================================================================

call plug#begin()

" Color theme for sintax highlight
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

" Color theme for status bar
Plug 'gkeep/iceberg-dark'

" Plugin for git infos
Plug 'tpope/vim-fugitive'

" Plugin for status bar
Plug 'itchyny/lightline.vim'

" Plugin for tab bar
Plug 'ap/vim-buftabline'

" Plugin for fuzzy finder (fzf)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Plugin for LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plugin for LSP + CoC
Plug 'antoinemadec/coc-fzf'

call plug#end()
