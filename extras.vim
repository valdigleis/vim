" =================================================================================================
" Install/Configs Plugins
" Author: Valdigleis (valdigleis@gmail.com)
" Date:26/04/2025
" =================================================================================================

call plug#begin()

" Color theme for sintax highlight
" Plug 'catppuccin/vim', { 'as': 'catppuccin' }

" Color theme for sintax highlight
Plug 'dracula/vim', { 'as': 'dracula' }

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

" Plugin for color preview CSS
Plug 'ap/vim-css-color'

" Plugin for browser sync server
Plug 'wolandark/vim-live-server'

" Plugin for use Emmet
Plug 'mattn/emmet-vim'

" Plugin for Github copilot
" Plug 'github/copilot.vim'

call plug#end()

" Installation of coc extensions
let g:coc_global_extensions = ['coc-css', 'coc-html', 'coc-java', 'coc-tsserver', 'coc-texlab', 'coc-phpls']


