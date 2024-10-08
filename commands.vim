" -------------------------------------------------------------------------------------------------
" File to config my autocommands, create in 09/09/2024
" Author: Valdigleis (Dk4LL) - dk4ll@proton.me
" -------------------------------------------------------------------------------------------------

" Start NERDTree and and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

" Fix curso in local and call CocActionAsync
autocmd CursorHold * silent call CocActionAsync('highlight')

" Enable (Emmet-vim) just for html/css
autocmd FileType html,css EmmetInstall

" Enable Rainbow_parentheses 
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

