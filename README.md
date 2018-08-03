<div align="center">
<h3>DOTFILES</h3>
<img src="https://github.com/aesophor/dotfiles/raw/master/assets/main.png">

`i3+KDE` `polybar` `Xresources color: base16-faded` 
</div>

## Disclaimer
* I'll help out with any problem you have with my dotfiles, but I'm not responsible for anything  you break anything.
* The installer script `bin/dotsetup` is for my personal use. If you want to use it, please clone this repo into `~/Dotfiles` before running the script.
* Feel free to take anything you like :)

## Overview
I'm currently running [i3](https://github.com/i3/i3) and [KDE](https://en.wikipedia.org/wiki/KDE) together. Here is a list of other applications I use:
* Bar: [polybar](https://github.com/jaagr/polybar)
* Application Launcher: [rofi](https://github.com/DaveDavenport/rofi)
* Lockscreen: [i3lock-color](https://github.com/PandorasFox/i3lock-color) + [displayctl](https://github.com/aesophor/displayctl)
* Terminal: [urxvt (patched)](https://github.com/blueyed/rxvt-unicode)
* Shell: zsh + [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* Web Browser: [chromium](https://chromium.googlesource.com/chromium/src)
* Music Player: mpd + [ncmpcpp](https://github.com/arybczak/ncmpcpp)
* File Manager: dolphin


## Related Repositories
* I manage my resolution/brightness/wallpaper/lockscreen with [displayctl](https://github.com/aesophor/displayctl)

```
$ displayctl                  # Restore resolution/brightness/wallpaper to last session 
$ displayctl -l               # Invoke lockscreen (i3lock-color required)
$ displayctl -l -d -b         # Invoke lockscreen with dim and blur effect
$ displayctl -w -d -b         # Set wallpaper with dim and blur effect
$ displayctl -e 1280x800      # Mirrors display to an external monitor
```
It's quite useful! I recommend that you give it a shot :)
## Gallery
Please visit [here](https://imgur.com/a/uiT7zni) on imgur.

## License
Available under the [MIT License](https://github.com/aesophor/dotfiles/blob/master/LICENSE).
