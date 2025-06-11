" =================================================================================================
" Load personal configs
" Author: Valdigleis (valdigleis@gmail.com)
" Date: 25/04/2025
" =================================================================================================

" Get configs directory 
let myDir = fnamemodify($MYVIMRC, ":p:h")

" Load basic configs
execute 'source' myDir . '/basic.vim'

" Load extras config
execute 'source' myDir . '/extras.vim'
execute 'source' myDir . '/configs.vim'

" Load languages configs
execute 'source' myDir . '/languages.vim'

" Load keymaps config
execute 'source' myDir . '/keymaps.vim'

