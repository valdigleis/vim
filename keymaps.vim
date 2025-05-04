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

" -------------------------------------------------------------------------------------------------
" Keymaps to use the CoC (Jump to prev and next diagnostic)
" -------------------------------------------------------------------------------------------------
nnoremap <silent><nowait> g[ <Plug>(coc-diagnostic-prev)
nnoremap <silent><nowait> g] <Plug>(coc-diagnostic-next)

" -------------------------------------------------------------------------------------------------
" Keymaps to use the CoC (Jump to definition, type-def, implementation and references)
" -------------------------------------------------------------------------------------------------
nnoremap <silent><nowait> gd <Plug>(coc-definition)
nnoremap <silent><nowait> gy <Plug>(coc-type-definition)
nnoremap <silent><nowait> gi <Plug>(coc-implementation)
nnoremap <silent><nowait> gr <Plug>(coc-references)

" -------------------------------------------------------------------------------------------------
" Keymaps to use the CoC (Showdocumentation function)
" -------------------------------------------------------------------------------------------------
nnoremap <silent> K :call ShowDocumentation()<CR>

" -------------------------------------------------------------------------------------------------
" Keymaps to use the CoC (Rename function)
" -------------------------------------------------------------------------------------------------
nnoremap <leader>rn <Plug>(coc-rename)
