" -------------------------------------------------------------------------------------------------
" File to config my autocommands, create in 09/09/2024
" Author: Valdigleis (Dk4LL)
" Mail: dk4ll@proton.me
" -------------------------------------------------------------------------------------------------

" Start NERDTree and and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Fix curso in local and call CocActionAsync
autocmd CursorHold * silent call CocActionAsync('highlight')