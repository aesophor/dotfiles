<div align="center">
<h3>.dotfiles</h3>
<img src="/.meta/cover.png">

`macOS Monterey (12.4)`
</div>

## Requirements

```sh
brew install stow
```

## Installation

To install a specific package of dotfiles (take `nvim` for example)
```
stow nvim
```

To install all the available packages
```
# This script temporarily hides README.md, and execute `stow *`
./.install.sh
```

## Details
* CLI
  * [zsh](https://github.com/zsh-users/zsh) - extended Bourne shell with a large number of improvements
    * [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) - framework for managing your zsh configuration
    * [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) - suggest commands as you type, based on command history
    * [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) - fish shell-like syntax highlighting for zsh
  * [URxvt](https://github.com/exg/rxvt-unicode) - a customizable terminal emulator forked from rxvt
    * [urxvt-resize-font](https://github.com/simmel/urxvt-resize-font) - resize the font with keybinds
    * [urxvt-config-reload](https://github.com/regnarg/urxvt-config-reload) - reload urxvt configuration at runtime
    * [Iosevka](https://github.com/be5invis/Iosevka) 14px - terminal font
    * [wqy-bitmapfont](https://packages.gentoo.org/packages/media-fonts/wqy-bitmapfont) - chinese font
  * [Neovim](https://github.com/vim/vim) - I write C/C++, Python, shellscripts in Neovim, and Java in IntelliJ IDE.
    * [vim-plug](https://github.com/junegunn/vim-plug) - plugin manager
    * [vim-polyglot](https://github.com/sheerun/vim-polyglot) - syntax highlighting
    * [vim-autoclose](https://github.com/Townk/vim-autoclose) - type an `(` and automatically insert `)` for you
    * [vim-airline](https://github.com/vim-airline/vim-airline) - lean & mean status/tabline
    * [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) - icon pack for bufferline.nvim
    * [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua) - file explorer
    * [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) - tabline
    * [indentLine](https://github.com/Yggdroot/indentLine) - display indention levels with vertical lines
    * [a.vim](https://github.com/vim-scripts/a.vim) - fast switching between *.h/*.hpp and *.c/*.cpp
    * [base16-faded](https://github.com/aesophor/base16-faded/tree/master/colors) - my personal vim colorscheme
  * [git](https://github.com/git/git) - distributed version-control system
    * [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy) - git diff made human-readable!
  * [displayctl](https://github.com/aesophor/displayctl) - resolution, brightness, wallpaper, lockscreen manager
  * [py-todo](https://github.com/aesophor/py-todo) - lightweight cli todo-list
  * [pfetch](https://github.com/dylanaraps/pfetch) - display system info
  * [ncmpcpp](https://github.com/arybczak/ncmpcpp) - ncurses based music player
