<div align="center">
<h3>.dotfiles</h3>
<img src="https://github.com/aesophor/dotfiles/raw/master/.meta/main.png">

`Gentoo` `KDE / Wmderland` `Polybar` `base16-faded`
</div>

## Installation
**Requires [GNU stow](https://www.gnu.org/software/stow/).**

To install a specific package of dotfiles (take dunst for example)
```
$ stow dunst
```

To install everything
```
$ # This script temporarily hides README.md, and execute `stow *`
$ ./.install.sh
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
  * [vim](https://github.com/vim/vim) - I code in C/C++ & Python in Vim. Java in IntelliJ IDE.
    * [Vundle](https://github.com/VundleVim/Vundle.vim) - plugin manager
    * [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) - code-completion engine (C/C++, Java, Python...)
    * [syntastic](https://github.com/vim-syntastic/syntastic) - syntax checking
    * [vim-polyglot](https://github.com/sheerun/vim-polyglot) - syntax highlighting
    * [vim-autoclose](https://github.com/Townk/vim-autoclose) - type an `(` and automatically insert `)` for you
    * [vim-airline](https://github.com/vim-airline/vim-airline) - lean & mean status/tabline
    * [nerdtree](https://github.com/scrooloose/nerdtree) - tree filesystem explorer
    * [indentLine](https://github.com/Yggdroot/indentLine) - display indention levels with vertical lines
    * [base16-faded](https://github.com/aesophor/base16-faded/tree/master/colors) - my personal vim colorscheme
  * [git](https://github.com/git/git) - distributed version-control system
    * [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy) - git diff made human-readable!
  * [displayctl](https://github.com/aesophor/displayctl) - resolution, brightness, wallpaper, lockscreen manager
  * [py-todo](https://github.com/aesophor/py-todo) - lightweight cli todo-list
  * [painter](https://github.com/aesophor/Painter) - X colorscheme manager
  * [motd](https://github.com/aesophor/dotfiles/blob/master/scripts/.local/bin/motd) - display system info
  * [scrotutl](https://github.com/aesophor/dotfiles/blob/master/scripts/.local/bin/scrotutl) - bring macOS screenshot keybinds to Linux
  * [ncmpcpp](https://github.com/arybczak/ncmpcpp) - ncurses based music player
    
* GUI
  * [Wmderland](https://github.com/aesophor/Wmderland) - my tree-based dynamic WM written in C++11
  * [Polybar](https://github.com/jaagr/polybar) - fast and easy-to-use status bar
    * [siji](https://github.com/stark/siji) - iconic bitmap font based on Stlarch with additional glyphs
  * [rofi](https://github.com/davatorium/rofi) - window switcher, application launcher and dmenu replacement
  * [dunst](https://github.com/dunst-project/dunst) - lightweight and customizable notification daemon
  * [compton](https://github.com/chjj/compton) - compositor for X11
  * [Papirus-icon](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) - free and open source SVG icon theme for Linux, based on the Paper icon theme
  * [Iosevka](https://github.com/be5invis/Iosevka) 14px - GUI font
  * [dolphin](https://github.com/KDE/dolphin) - KDE file manager
  * [ark](https://github.com/KDE/ark) - KDE file archiver
