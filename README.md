# Hello, humans 👋
I'm Valdigleis (Dk4LL), a [Flamengo](https://www.flamengo.com.br) fan, former programmer, ex-user and ex-collaborator of the [Debian](https://www.debian.org/) project. Currently, I'm a computer science teacher at [CCICOMP](https://portais.univasf.edu.br/ccicomp) of the [Univasf](https://www.univasf.edu.br) - Brazil. This repository contains my personal config used in the [Vim](https://www.vim.org/).


## Contact me 💬

- dk4ll@proton.me (primary mail).
- valdigleis@gmail.com.


## Required items 🌱

- The [Vim](https://www.vim.org/) editor, obviously!
- A [Nerd font](https://www.nerdfonts.com/), particularly recommend the font: [FiraMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraMono.zip).
- The plugin manager [Vim-plug](https://github.com/junegunn/vim-plug).
- The [clangd](https://clangd.llvm.org/).
- The sofware collection [GHCup](https://www.haskell.org/ghcup/), please install the [HLS](https://github.com/haskell/haskell-language-server).
- The ocaml package manager ([opam](https://opam.ocaml.org/)), please install the [ocaml-lsp](https://github.com/ocaml/ocaml-lsp).
- The [TexLab](https://github.com/latex-lsp/texlab).
- The [lua-language-server](https://github.com/LuaLS/lua-language-server).

>[!TIP]
> For the best experience, use the [Kitty](https://sw.kovidgoyal.net/kitty/) terminal emulator.
>

## Plugins useds 📦

1. The color theme use: [catppuccin](https://github.com/catppuccin/vim).
2. The color theme in lightline use: [iceberg-dark](https://github.com/gkeep/iceberg-dark).
3. Used to file explore: [NERDTree](https://github.com/preservim/nerdtree).
4. The git wrapper is: [vim-fugitive](https://github.com/tpope/vim-fugitive).
5. Used to adds file type icons: [vim-devicons](https://github.com/ryanoasis/vim-devicons).
6. The status line is: [lightline.vim](https://github.com/itchyny/lightline.vim).
7. The buffer tabs is: [vim-buftabline](https://github.com/ap/vim-buftabline).
8. Used to adds highlight in NERDTree: [vim-nerdtree-syntax-highlight](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight).
9. Warp used to connection with language servers: [coc.nvim](https://github.com/neoclide/coc.nvim).

## Coc Extesions ⚡

I suggest the following list of Coc-extensions.

- [coc-html](https://github.com/neoclide/coc-html) the HTML language server extesion.
- [coc-css](https://github.com/neoclide/coc-css) the CSS language server extension.
- [coc-pyright](https://github.com/fannheyward/coc-pyright) the Python language server extension.
- [coc-java](https://github.com/neoclide/coc-java) the Java language server extension.
- [coc-tsserver](https://github.com/neoclide/coc-tsserver) the Type(java)script language server extesion.


## Personal keys ⌨️

Here is the list with my personal keymaps. Remember that my leader is the **space** key.


### Buffers keymaps (normal mode)
```vimscript
"Save current buffer
<leader>w

"Save all buffers
<leader>ww

" Save & Quit
<leader>wq

"Quit Vim (need save buffers)
<leader>q

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
<leader>c[

" Go to next coc diagnostic
<leader>c]

" Go to definition
<leader>cgd

" Go to type definition 
<leader>cgt

" Go to implimentaion
<leader>cgi

" Go to references
<leader>cgr

" Execute (all) code refactor
<leader>ccr

" Execute (selected) code refactor 
<leader>crs

" Format (selected) code
<leader>cfs

" Execute (selected) code action
<leader>cas

" Execute codelens action
<leader>cca

" Execute code action source
nnoremap <leader>ccs  <Plug>(coc-codeaction-source)

" Execute code action in cursor position
nnoremap <leader>ccc  <Plug>(coc-codeaction-cursor)

" Show commands list
<leader>ccC

" Show list diagnostics
<leader>ccd

" Show coc list extensions
<leader>cce

" Show coc list outline
<leader>clo

" Show coc list symbols
<leader>cls

" Coc next item
<leader>cni

" Coc previous item
<leader>cpi

" Coc list resume
<leader>clr
```

## License

MIT License

Copyright (c) 2024 Dk4LL

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
