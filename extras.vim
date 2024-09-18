" -------------------------------------------------------------------------------------------------
" File to install and config plugin using vim-plug, create in 07/09/2024
" Author: Valdigleis (Dk4LL) - dk4ll@proton.me
" -------------------------------------------------------------------------------------------------

" -------------------------------------------------------------------------------------------------
" Plugins install
" -------------------------------------------------------------------------------------------------
call plug#begin()

" Catppucin color theme plugin
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

" Iceberg-dark color theme to status bar
"Plug 'gkeep/iceberg-dark'

" Vim-transparent plug to enable terminal transparence in Vim
Plug 'tribela/vim-transparent'

" Vim-fugitive to get infos git 
Plug 'tpope/vim-fugitive'

" Vim-devicons enable gliph icons for VIm
Plug 'ryanoasis/vim-devicons'

" Lightline plugin to status bar
Plug 'itchyny/lightline.vim'

" buftabline to buffers bar
Plug 'ap/vim-buftabline'

" Nerdtree plugin to explore file
Plug 'preservim/nerdtree'

" Extesion of Nerdtree plugin to adds syntax highlighting to NERDTree based on filetype
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Coc plugin to manager language servers 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Ale plugin to manager linters
Plug 'dense-analysis/ale'

" Vim-clpa plugin to tree-sitter supports
" Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }

call plug#end()


" -------------------------------------------------------------------------------------------------
" Enable catppucin color theme using the options frappe (others: Mocha, Macchiato, and e Latte)
" -------------------------------------------------------------------------------------------------
colorscheme catppuccin_mocha


" -------------------------------------------------------------------------------------------------
" Define functions useds in lightline plugin
" -------------------------------------------------------------------------------------------------
function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' ' : ''
  return filename . modified
endfunction

function! LightlineBranchname()
  if isdirectory(getcwd() . '/.git')
    let branch = FugitiveHead()
    return " " . branch
  else
    return '[No git]'
  endif
endfunction

function! MyTime()
  let current_time = strftime("%H:%M")
  return "  " . current_time
endfunction

function! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info)
    return '  0    0    0'
  else
    return '  ' .  string(info['error'])  . '    ' . string(info['warning']) . '    ' . string(info['hint'])
  endif
endfunction

" -------------------------------------------------------------------------------------------------
" Lightline plugin config 
" -------------------------------------------------------------------------------------------------
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'catppuccin_mocha',
      \ 'separator': {'left': "", 'right': ''},
      \ 'active': {
      \     'left' : [ ['mode', 'paste'], ['readonly', 'filename'], ['gitbranch'] ],
      \     'right': [ ['clock'], [ 'lineinfo', 'percent' ], ['fileformat', 'fileencoding', 'filetype'], ['status'] ]
      \ },
      \ 'inactive': {
      \     'left': [ ['filename'] ],
      \     'right': [ ['clock'] ]
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \   'gitbranch': 'LightlineBranchname',
      \   'status': 'StatusDiagnostic',
      \   'clock': 'MyTime'
      \ },
      \ }

" -------------------------------------------------------------------------------------------------
" Vim-devicons plugin config 
" -------------------------------------------------------------------------------------------------
let g:webdevicons_enable = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '

" -------------------------------------------------------------------------------------------------
" Nerdtree plugin config 
" -------------------------------------------------------------------------------------------------
let g:webdevicons_enable_nerdtree = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeFileLines = 1

" -------------------------------------------------------------------------------------------------
" Nerdtree-syntax-highlight plugin config
" -------------------------------------------------------------------------------------------------
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

let g:NERDTreeDisableFileExtensionHighlight = 1
let g:NERDTreeDisableExactMatchHighlight = 1
let g:NERDTreeDisablePatternMatchHighlight = 1

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1

" -------------------------------------------------------------------------------------------------
" Ale plugin config
" -------------------------------------------------------------------------------------------------
let g:ale_fixers = {
  \ 'javascript': ['prettier', 'eslint']
  \ }

let g:ale_fix_on_save = 1
