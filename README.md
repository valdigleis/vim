# Hello, humans 👋
I'm Valdigleis (Dk4LL), a [Flamengo](https://www.flamengo.com.br) fan, former programmer, ex-user and ex-collaborator of the [Debian](https://www.debian.org/) project. Currently, I'm a computer science teacher at [CCICOMP](https://portais.univasf.edu.br/ccicomp) of the [Univasf](https://www.univasf.edu.br) - Brazil. This repository contains my personal config used in the [Vim](https://www.vim.org/).

## Contact me 💬

- dk4ll@proton.me (primary mail).
- valdigleis@gmail.com.

## Required items 🌱

- The [Vim](https://www.vim.org/) editor, obviously!
- A [Nerd font](https://www.nerdfonts.com/), particularly recommend the font: [FiraMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraMono.zip).
- The plugin manager [Vim-plug](https://github.com/junegunn/vim-plug).

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

## Personal keys ⌨️

Here is the list with my personal keymaps (in normal mode). Remember that my leader is the **space** key.


### Buffers keymaps
```vimscript
"Save current buffer
<leader>w

"Save all buffers
<leader>wa

"Quit Vim (need save buffers)
<leader>q

"Quit Vim (no save buffers)
<leader>qa

"Close (Delete) current buffer
<leader><CR>

"Charge to next buffer
<Tab>

"Charge to previuos buffer
<S-Tab>

```

### NERDTree Plugin Keymaps
```vimscript
"Open NERDTree
<leader>to

"Close NERDTree
<leader>tc
```


## License

MIT License

Copyright (c) 2024 Dk4LL

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.