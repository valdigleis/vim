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

nnoremap <silent> <leader>qf  <Plug>(coc-fix-current)
nnoremap <silent> <leader>rn <Plug>(coc-rename)

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
" Coc-fzf plugin
" -------------------------------------------------------------------------------------------------
nnoremap <silent> ;F :CocCommand fzf-preview.ProjectFiles<CR>
nnoremap <silent> ;h :CocCommand fzf-preview.GitFiles<CR>
nnoremap <silent> ;f :CocCommand fzf-preview.DirectoryFiles<CR>
nnoremap <silent> ;B :CocCommand fzf-preview.Buffers<CR>
nnoremap <silent> ;b :CocCommand fzf-preview.AllBuffers<CR>
nnoremap <silent> ;r :CocCommand fzf-preview.ProjectMruFiles<CR>
nnoremap <silent> ;s :CocCommand fzf-preview.ProjectMrwFiles<CR>
nnoremap <silent> ;q :CocCommand fzf-preview.QuickFix<CR>
nnoremap <silent> ;j :CocCommand fzf-preview.Jumps<CR>
nnoremap <silent> ;c :CocCommand fzf-preview.Changes<CR>
nnoremap <silent> ;g :CocCommand fzf-preview.GitActions<CR>
nnoremap <silent> ;G :CocCommand fzf-preview.GitStatus<CR>
nnoremap <silent> ;R :CocCommand fzf-preview.CocReferences<CR>
nnoremap <silent> ;d :CocCommand fzf-preview.CocDiagnostics<CR>
nnoremap <silent> ;D :CocCommand fzf-preview.CocDefinition<CR>
nnoremap <silent> ;t :CocCommand fzf-preview.CocTypeDefinition<CR>
nnoremap <silent> ;i :CocCommand fzf-preview.CocImplementations<CR>
nnoremap <silent> ;o :CocCommand fzf-preview.CocOutline<CR> 


" -------------------------------------------------------------------------------------------------
" Vim-live-server
" -------------------------------------------------------------------------------------------------
nnoremap <silent> <leader>ls :StartLiveServer<CR>
nnoremap <silent> <leader>lk :KillLiveServer<CR>


" -------------------------------------------------------------------------------------------------
" Vim-hoogle
" -------------------------------------------------------------------------------------------------
nnoremap <silent> <leader>ho :HoogleInfo<CR>
nnoremap <silent> <leader>hc :HoogleClose<CR>









