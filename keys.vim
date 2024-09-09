" -------------------------------------------------------------------------------------------------
" File to config my personal keymaps, create in 09/09/2024
" Author: Valdigleis (Dk4LL)
" Mail: dk4ll@proton.me
" -------------------------------------------------------------------------------------------------

" -------------------------------------------------------------------------------------------------
" Basic actions keys
" -------------------------------------------------------------------------------------------------
nnoremap <silent> <leader>w :w<CR>
nnoremap <silent> <leader>ww :wa<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>qq :qall!<CR>
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


" -------------------------------------------------------------------------------------------------
" Coc Plugin keys
" -------------------------------------------------------------------------------------------------
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
      \ : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

inoremap <silent><expr> <c-@> coc#refresh()

nnoremap <silent> <leader>cd[ <Plug>(coc-diagnostic-prev)
nnoremap <silent> <leader>cd] <Plug>(coc-diagnostic-next)
nnoremap <silent> <leader>cgd <Plug>(coc-definition)
nnoremap <silent> <leader>cgt <Plug>(coc-type-definition)
nnoremap <silent> <leader>cgi <Plug>(coc-implementation)
nnoremap <silent> <leader>cgr <Plug>(coc-references)
nnoremap <silent> <leader>ccr <Plug>(coc-codeaction-refactor)
nnoremap <silent> K :call ShowDocumentation()<CR>

xnoremap <silent> <leader>crs  <Plug>(coc-codeaction-refactor-selected)
nnoremap <silent> <leader>crs  <Plug>(coc-codeaction-refactor-selected)

nnoremap <leader>qf  <Plug>(coc-fix-current)
nnoremap <leader>rn <Plug>(coc-rename)

xnoremap <leader>cfs  <Plug>(coc-format-selected)
xnoremap <leader>cas  <Plug>(coc-codeaction-selected)

nnoremap <leader>cfs  <Plug>(coc-format-selected)
nnoremap <leader>cca  <Plug>(coc-codelens-action)
nnoremap <leader>ccs  <Plug>(coc-codeaction-source)
nnoremap <leader>ccS  <Plug>(coc-codeaction-selected)
nnoremap <leader>ccc  <Plug>(coc-codeaction-cursor)

nnoremap <silent><nowait> <leader>ccC  :<C-u>CocList commands<cr>
nnoremap <silent><nowait> <leader>ccd  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <leader>cce  :<C-u>CocList extensions<cr>
nnoremap <silent><nowait> <leader>cco  :<C-u>CocList outline<cr>
nnoremap <silent><nowait> <leader>csl  :<C-u>CocList -I symbols<cr>
nnoremap <silent><nowait> <leader>cni  :<C-u>CocNext<CR>
nnoremap <silent><nowait> <leader>cpi  :<C-u>CocPrev<CR>
nnoremap <silent><nowait> <leader>clr  :<C-u>CocListResume<CR>

