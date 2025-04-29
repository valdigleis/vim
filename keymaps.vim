" =================================================================================================
" Personal keymaps config file
" Author: Valdigleis (valdigleis@gmail.com)
" Date:29/04/2025
" =================================================================================================

" Define key leader
let mapleader = "\<Space>"

" -------------------------------------------------------------------------------------------------
" Keymaps to move, delete and create buffers
" -------------------------------------------------------------------------------------------------
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-Tab> :bprevious<CR>
nnoremap <silent> <leader><leader> :bd<CR>

" -------------------------------------------------------------------------------------------------
" Keymaps to use the fzf
" -------------------------------------------------------------------------------------------------
nnoremap <silent> <leader>fb :Buffers<CR>
nnoremap <silent> <leader>ff :GFiles<CR>
nnoremap <silent> <leader>fF :Files ./<CR>
nnoremap <silent> <leader>fg :GFiles?<CR>
nnoremap <silent> <leader>fk <plug>(fzf-maps-n)<CR>

