## aesophor's dotfiles
```
                                           .
     .vir.                                d$b
  .d$$$$$$b.    .cd$$b.     .d$$b.   d$$$$$$$$$$$b  .d$$b.      .d$$b.
  $$$$( )$$$b d$$$()$$$.   d$$$$$$$b Q$$$$$$$P$$$P.$$$$$$$b.  .$$$$$$$b.
  Q$$$$$$$$$$B$$$$$$$$P"  d$$$PQ$$$$b.   $$$$.   .$$$P' `$$$ .$$$P' `$$$
    "$$$$$$$P Q$$$$$$$b  d$$$P   Q$$$$b  $$$$b   $$$$b..d$$$ $$$$b..d$$$
   d$$$$$$P"   "$$$$$$$$ Q$$$     Q$$$$  $$$$$   `Q$$$$$$$P  `Q$$$$$$$P
  $$$$$$$P       `"""""   ""        ""   Q$$$P     "Q$$$P"     "Q$$$P"
  `Q$$P"                                  """

```
My Gentoo dotfiles from Macbook Pro 11,2 (Late 2014). 

## Synopsis
![Screenshot](https://github.com/aesophor/dotfiles/raw/master/screenshots/screenshot.png)

**Details**

| Item | Program |
| --- | --- |
| DE/WM | KDE Plasma / i3-gaps |
| Bar | Polybar |
| Compositor | Compton |
| Launcher | rofi |
| Font (en/zh_tw) | Tamzen / WenQuanYi Bitmap Song |
| Font (icons) | Font Awesome 5, Wuncon Siji |
| Terminal | [rxvt-unicode-wcwidthcallback](https://github.com/blueyed/rxvt-unicode) |
| File Manager | ranger, dolphin |
| Music Player | ncmpcpp, spotify-client |

**Colorschemes**

| Program | Colorscheme |
| --- | --- |
| zsh | [icebrick](https://github.com/aesophor/dotfiles/blob/master/.config/oh-my-zsh/themes/icebrick.zsh-theme) |
| URxvt | [base16-aesophor](https://github.com/aesophor/base16-aesophor) |
| vim | [base16-aesophor](https://github.com/aesophor/base16-aesophor) |
| vim-airline | distinguished |
| ranger | [Good Night America](http://dotshare.it/dots/958/) |

**Wallpapers**
* Vintage Lamp in the Window [(link)](https://www.walldevil.com/vintage-lamps-in-the-window-wallpaper-858287/)

## Installation
**Please read the script before running!**

git clone this repo into ~/Dotfiles and run `~/Dotfiles/bin/scripts/dotsetup`

## Bugs / Workarounds
* #bug001 - FontAwesome does not render properly in rxvt-unicode-wcwidthcallback

Compile URxvt-wcwidth-callback and install it on your machine. Then, 
add the following lines to your .zshrc (or your own favorite shell config file). 
Please read [wcwidth-hack](https://github.com/blueyed/rxvt-unicode/blob/wcwidth-hack/README.md) for details.

```
# URxvt-wcwidth glitch workaround. See #bug001 in README.md.
if [ `ps -o comm= $PPID` = "urxvt" ]; then urxvt -e exec; fi
```

## License
Available under the [MIT License](https://github.com/aesophor/dotfiles/blob/master/LICENSE).
