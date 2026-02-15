<div align="center">
<h3>.dotfiles</h3>
<img src="/.meta/cover.png">

`macOS Tahoe (26.3)`
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
  * [iTerm2](https://iterm2.com) - macOS terminal replacement
    * [Iosevka](https://github.com/be5invis/Iosevka) 14px - terminal font
  * [Neovim](https://github.com/vim/vim) - I do 99% of my work in neovim
    * [vim-plug](https://github.com/junegunn/vim-plug) - plugin manager
    * [vim-polyglot](https://github.com/sheerun/vim-polyglot) - syntax highlighting
    * [vim-autoclose](https://github.com/Townk/vim-autoclose) - type an `(` and automatically insert `)` for you
    * [indentLine](https://github.com/Yggdroot/indentLine) - display indention levels with vertical lines
    * [vim-anzu](https://github.com/osyo-manga/vim-anzu) - search status
    * [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) - icon pack for bufferline.nvim
    * [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua) - file explorer
    * [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) - tabline
    * [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - statusline
    * [barbecue.nvim](https://github.com/utilyre/barbecue.nvim) - vscode inspired breadcrumbs
    * [a.vim](https://github.com/vim-scripts/a.vim) - fast switching between *.h/*.hpp and *.c/*.cpp
    * [git.nvim](https://github.com/dinhhuy258/git.nvim) - git blame the god damn bastard who wrote this line
  * [git](https://github.com/git/git) - distributed version-control system
    * [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy) - git diff made human-readable!
  * [rmpc](https://github.com/mierak/rmpc) - modern, configurable, terminal based MPD Client
  * [py-todo](https://github.com/aesophor/py-todo) - lightweight cli todo-list

* GUI
  * [Alcove](https://tryalcove.com) - Dynamic island for you mac ($13.99)
  * [AltTab](https://alt-tab-macos.netlify.app) - Windows alt-tab on macOS (free)
  * [BetterDisplay](https://betterdisplay.pro) - Unlock HiDPI for any screen (free)
  * [BetterMouse](https://better-mouse.com) - Comprehensive mouse utility ($7.99)
  * [BetterZip](https://macitbetter.com) - The most advanced zip and rar archiver ($24.95)
  * [Ice](https://github.com/jordanbaird/Ice) - Powerful menu bar manager for macOS (free)
  * [LittleSnitch](https://www.obdev.at/products/littlesnitch) - (€59.00)
