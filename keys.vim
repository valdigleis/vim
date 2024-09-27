" -------------------------------------------------------------------------------------------------
" File to config my personal keymaps, create in 09/09/2024
" Author: Valdigleis (Dk4LL) - dk4ll@proton.me
" -------------------------------------------------------------------------------------------------

" -------------------------------------------------------------------------------------------------
" Basic actions keys
" -------------------------------------------------------------------------------------------------
nnoremap <silent> <leader>ww :wa<CR>
nnoremap <silent> <leader>wq :wqall<CR>
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

nnoremap <silent> <leader>d[ <Plug>(coc-diagnostic-prev)
nnoremap <silent> <leader>d] <Plug>(coc-diagnostic-next)
nnoremap <silent> <leader>gd <Plug>(coc-definition)
nnoremap <silent> <leader>gt <Plug>(coc-type-definition)
nnoremap <silent> <leader>gi <Plug>(coc-implementation)
nnoremap <silent> <leader>gr <Plug>(coc-references)
nnoremap <silent> K :call ShowDocumentation()<CR>

nnoremap <silent> <leader>cr <Plug>(coc-codeaction-refactor)
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

nnoremap <silent><nowait> <leader>clc  :<C-u>CocList commands<CR>
nnoremap <silent><nowait> <leader>cld  :<C-u>CocList diagnostics<CR>
nnoremap <silent><nowait> <leader>cle  :<C-u>CocList extensions<CR>
nnoremap <silent><nowait> <leader>clo  :<C-u>CocList outline<CR>
nnoremap <silent><nowait> <leader>cls  :<C-u>CocList -I symbols<CR>
nnoremap <silent><nowait> <leader>clr  :<C-u>CocListResume<CR>
nnoremap <silent><nowait> <leader>cni  :<C-u>CocNext<CR>
nnoremap <silent><nowait> <leader>cpi  :<C-u>CocPrev<CR>


" -------------------------------------------------------------------------------------------------
" Coc-fzf plugins
" -------------------------------------------------------------------------------------------------

" Open finder menu to select file (no show hidde files)
nnoremap <silent> ;f :CocCommand fzf-preview.ProjectFiles<CR>

" Open finder menu to select mapping in git (no shwo hidde file)
nnoremap <silent> ;g :CocCommand fzf-preview.GitFiles<CR>

" Open finder menu to select file (show hidde files)
nnoremap <silent> ;F :CocCommand fzf-preview.DirectoryFiles<CR>

" Open selection buffer menu (no include current buffer)
nnoremap <silent> ;B :CocCommand fzf-preview.Buffers<CR>

" Open selection all buffers menu (include current buffer)
nnoremap <silent> ;b :CocCommand fzf-preview.AllBuffers<CR>

" Open selection menu to file recently useds
nnoremap <silent> ;r :CocCommand fzf-preview.ProjectMruFiles<CR>

" Open selection menu to recently saves
nnoremap <silent> ;s :CocCommand fzf-preview.ProjectMrwFiles<CR>

" Open selection menu to quick fix
nnoremap <silent> ;q :CocCommand fzf-preview.QuickFix<CR>

" Open selection menu to jumps points in current buffer
nnoremap <silent> ;j :CocCommand fzf-preview.Jumps<CR>

" Open selection menu to changes in current buffer
nnoremap <silent> ;c :CocCommand fzf-preview.Changes<CR>

" Open git actions menu
nnoremap <silent> ;g :CocCommand fzf-preview.GitActions<CR>

" Open git status 
nnoremap <silent> ;G :CocCommand fzf-preview.GitStatus<CR>

" Open Coc references list
nnoremap <silent> ;R :CocCommand fzf-preview.CocReferences<CR>

" Open Coc diagnostics list
nnoremap <silent> ;d :CocCommand fzf-preview.CocDiagnostics<CR>

" Open Coc definitions list
nnoremap <silent> ;D :CocCommand fzf-preview.CocDefinition<CR>

" Open Coc type definitions list
nnoremap <silent> ;t :CocCommand fzf-preview.CocTypeDefinition<CR>

" Open Coc implementation list
nnoremap <silent> ;i :CocCommand fzf-preview.CocImplementations<CR>

" Open Coc outline list
nnoremap <silent> ;o :CocCommand fzf-preview.CocOutline<CR> 




