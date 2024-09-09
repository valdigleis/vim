" -------------------------------------------------------------------------------------------------
" File to config my personal keymaps, create in 09/09/2024
" Author: Valdigleis (Dk4LL)
" Mail: dk4ll@proton.me
" -------------------------------------------------------------------------------------------------

" -------------------------------------------------------------------------------------------------
" Basic actions keys
" -------------------------------------------------------------------------------------------------
nnoremap <silent> <leader>w :w<CR>
nnoremap <silent> <leader>wa :wa<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>qa :qall!<CR>
nnoremap <silent> <leader><CR> :bd<CR>


" -------------------------------------------------------------------------------------------------
" Navegation buffers keys
" -------------------------------------------------------------------------------------------------
nnoremap <silent> <Tab> :bnext<CR>
nnoremap <silent> <S-Tab> :bprevious<CR>


" -------------------------------------------------------------------------------------------------
" NerdTree Plugin keys
" -------------------------------------------------------------------------------------------------
nnoremap <silent> <leader>to :NERDTree<CR>
nnoremap <silent> <leader>tc :NERDTreeClose<CR>