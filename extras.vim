" -------------------------------------------------------------------------------------------------
" File to install and config plugin using vim-plug, create in 07/09/2024
" Author: Valdigleis (Dk4LL)
" Mail: dk4ll@proton.me
" -------------------------------------------------------------------------------------------------

" -------------------------------------------------------------------------------------------------
" Plugins install
" -------------------------------------------------------------------------------------------------
call plug#begin()

" Catppucin color theme plugin
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

" Iceberg-dark color theme to status bar
Plug 'gkeep/iceberg-dark'

" Vim-fugitive to get infos git 
Plug 'tpope/vim-fugitive'

" Vim-devicons enable gliph icons for VIm
Plug 'ryanoasis/vim-devicons'

" Lightline plugin to status bar
Plug 'itchyny/lightline.vim'

" Nerdtree plugin to explore file
Plug 'preservim/nerdtree'

call plug#end()


" -------------------------------------------------------------------------------------------------
" Enable catppucin color theme using the options frappe (others: Mocha, Macchiato, and e Latte)
" -------------------------------------------------------------------------------------------------
colorscheme catppuccin_frappe


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





