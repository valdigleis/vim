" -------------------------------------------------------------------------------------------------
" Catppuccin color theme (options: Mocha, Macchiato, Frappé e Latte)
" -------------------------------------------------------------------------------------------------
colorscheme catppuccin_frappe


" -------------------------------------------------------------------------------------------------
" Lightline
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
      \ },}

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
  "let current_time = strftime("%c")
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




