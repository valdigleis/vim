# Hello, humans 👋
I'm Valdigleis (Dk4LL), a [Flamengo](https://www.flamengo.com.br) fan, former programmer, ex-user and ex-collaborator of the [Debian](https://www.debian.org/) project. Currently, I'm a computer science teacher at [CCICOMP](https://portais.univasf.edu.br/ccicomp) of the [Univasf](https://www.univasf.edu.br) - Brazil. This repository contains my personal config used in the [Vim](https://www.vim.org/).

## Contact me 💬

- dk4ll@proton.me (primary mail).
- valdigleis@gmail.com.


## Required items 🌱

- The [Vim](https://www.vim.org/) editor, obviously!
- A [Nerd font](https://www.nerdfonts.com/), particularly recommend the font: [FiraMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraMono.zip).
- The plugin manager [Vim-plug](https://github.com/junegunn/vim-plug).
- The package manager [npm](www.npmjs.com)... And the packages: [live-server](https://www.npmjs.com/package/live-server).
- The [clangd](https://clangd.llvm.org/).
- The sofware collection [GHCup](https://www.haskell.org/ghcup/), please install: [cabal](https://www.haskell.org/cabal/), [stack](https://docs.haskellstack.org/en/stable/),  and [HLS](https://github.com/haskell/haskell-language-server). 
- The ocaml package manager ([opam](https://opam.ocaml.org/)), please install the [ocaml-lsp](https://github.com/ocaml/ocaml-lsp).
- The [TexLab](https://github.com/latex-lsp/texlab).
- The [lua-language-server](https://github.com/LuaLS/lua-language-server).
- The [bash-language-server](https://github.com/bash-lsp/bash-language-server).
- The language server to the language Prolog, see details [here](https://github.com/jamesnvc/lsp_server).
- The [rust-analyzer](https://github.com/rust-lang/rust-analyzer).
- The package manager [npm](https://www.npmjs.com), please install the [prettier](https://www.npmjs.com/package/prettier), and the [eslint](https://www.npmjs.com/package/eslint).
- The [fzf](https://github.com/junegunn/fzf) for fuzzy finder.
- The [ripgrep](https://github.com/BurntSushi/ripgrep).
- The hackages: [ormulu](https://hackage.haskell.org/package/ormolu), [stan](https://hackage.haskell.org/package/stan), and [hoogle](https://hackage.haskell.org/package/hoogle).


>[!TIP]
> For the best experience, use the [Kitty](https://sw.kovidgoyal.net/kitty/) terminal emulator.
>

## Plugins useds 📦

1. The color theme used: [catppuccin](https://github.com/catppuccin/vim).
2. The color theme in lightline use: [iceberg-dark](https://github.com/gkeep/iceberg-dark).
3. Used to file explore: [NERDTree](https://github.com/preservim/nerdtree).
4. The git wrapper is: [vim-fugitive](https://github.com/tpope/vim-fugitive).
5. Used to adds file type icons: [vim-devicons](https://github.com/ryanoasis/vim-devicons).
6. The status line is: [lightline.vim](https://github.com/itchyny/lightline.vim).
7. The buffer tabs is: [vim-buftabline](https://github.com/ap/vim-buftabline).
8. Used to adds highlight in NERDTree: [vim-nerdtree-syntax-highlight](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight).
9. Warp used to connection with language servers: [coc.nvim](https://github.com/neoclide/coc.nvim).
10. Warp used to connection with fzf: [fzf.vim](https://github.com/junegunn/fzf.vim).
11. The plugin emmet used: [emmet-vim](https://github.com/mattn/emmet-vim).
12. The plugin to add support the query hoogle:[vim-hoogle](https://github.com/Twinside/vim-hoogle).
13. Warp used to connection with live-server: [vim-live-server](https://github.com/wolandark/vim-live-server).
14. Used to highlight delimeters: [rainbow_parentheses](https://github.com/kien/rainbow_parentheses.vim).
15. Used to best highlight codes: [vim-polyglot](https://github.com/sheerun/vim-polyglot).
16. Used to show color in propety on CSS files: [vim-coloresque](https://github.com/gko/vim-coloresque). 

## Coc Extesions ⚡

I suggest the following list of Coc-extensions.

- [coc-html](https://github.com/neoclide/coc-html) the HTML language server extesion.
- [coc-css](https://github.com/neoclide/coc-css) the CSS language server extension.
- [coc-pyright](https://github.com/fannheyward/coc-pyright) the Python language server extension.
- [coc-java](https://github.com/neoclide/coc-java) the Java language server extension.
- [coc-tsserver](https://github.com/neoclide/coc-tsserver) the Type(java)script language server extesion.
- [coc-json](https://github.com/neoclide/coc-json) the json language server extesion.
- [coc-fzf-preview ](https://github.com/yuki-yano/fzf-preview.vim) the that powerfully integrates fzf on Vim.


## Personal keys ⌨️

Here is the list with my personal keymaps. Remember that my leader is the **space** key.


### Buffers keymaps (normal mode)
```vimscript
"Save all buffers
<leader>ww

" Save & Quit
<leader>wq

"Quit Vim (no save buffers)
<leader>qq

"Close (Delete) current buffer
<leader><CR>

"Charge to next buffer
<Tab>

"Charge to previuos buffer
<S-Tab>

```

### NERDTree Plugin Keymaps (normal mode)
```vimscript
"Open NERDTree
<leader>to

"Close NERDTree
<leader>tc
```

### Coc.nvim Plugin Keymaps (insert mode)
```vimscript
" Invoke autocompletion or move to next option in autocompletion (insert mode)
<TAB>

" Move to previous option in autocompletion (insert mode)
<S-TAB>
```

### Coc.nvim Plugin Keymaps (Normal mode)
```vimscript
" Show documentation
K

" Quick fix
<leader>qf

" Rename symbols in code
<leader>rn

" Go to previous coc diagnostic
<leader>d[

" Go to next coc diagnostic
<leader>d]

" Go to definition
<leader>gd

" Go to type definition 
<leader>gt

" Go to implimentaion
<leader>gi

" Go to references
<leader>gr

" Execute code refactor
<leader>Cr

" Execute (all) code refactor
<leader>Ccr

" Execute (selected) code refactor 
<leader>Crs

" Execute Format (selected) code
<leader>Cfs

" Execute (selected) code action
<leader>Cas

" Execute codelens action
<leader>Cca

" Execute code action source
<leader>Ccs

" Execute code action selected
<leader>CcS

" Execute code action in cursor position
<leader>Ccc

" Show commands list
<leader>Clc

" Show list diagnostics
<leader>Cld

" Show coc list extensions
<leader>Cle

" Show coc list outline
<leader>Clo

" Show coc list symbols
<leader>Cls

" Coc next item
<leader>Cni

" Coc previous item
<leader>Cpi

" Coc list resume
<leader>Clr
```
### Coc-fzf  Keymaps (Normal mode)
```vimscript
" Open finder menu to select file in current directory (no show hidde files)
;F

" Open finder menu to files mapping by git
;h

" Open finder menu to select file (show hidde files)
;f

" Open selection buffer menu (no include current buffer)
;B

" Open selection all buffers menu (include current buffer)
;b

" Open selection menu to file recently useds
;r

" Open selection menu to recently saves
;s

" Open selection menu to quick fix
;q

" Open selection menu to jumps points in current buffer
;j

" Open selection menu to changes in current buffer
;c

" Open git actions menu
;g

" Open git status 
;G

" Open Coc references list
;R

" Open Coc diagnostics list
;d

" Open Coc definitions list
;D

" Open Coc type definitions list
;t

" Open Coc implementation list
;i

" Open Coc outline list
;o

```
### Vim-live-server  Keymaps (Normal mode)
```vimscript
" Start live server
<leader>ls

" Kill live server
<leader>lk
```
### Vim-hoogle
```vimscript
" Open Hoogle for symbol in cursor
<leader>ho

" Close hoogle
<leader>hc
```


MIT License

Copyright (c) 2024 Dk4LL

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
