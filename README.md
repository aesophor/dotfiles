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

Ctrl+w should you feel uncomfortable with my rice.

## Synopsis
![Screenshot-clean](https://github.com/aesophor/dotfiles/raw/master/screenshots/screenshot-clean.png)

**Details**
* DE/WM      - KDE Plasma + i3-gaps
* Status Bar - Polybar
* Compositor - Compton
* Launcher   - rofi
* Terminal   - rxvt-unicode
* Font       - Tamzen, FontAwesome, Siji

**Colorschemes**
* oh-my-zsh  - coldwood
* urxvt      - base16-tomorrow-night
* vim        - [base16-minimalist](https://github.com/aesophor/base16-minimalist)


## Installation
git clone this repo into ~/Dotfiles and run ~/Dotfiles/bin/scripts/dotsetup

Please read the script before running!
 

## Bugs / Workarounds
* bug001 - FontAwesome does not render properly in rxvt-unicode-wcwidthcallback

Compile URxvt-wcwidth-callback and install it on your machine. Then, 
add the following lines to your .zshrc (or your own favorite shell config file). 
Please read [wcwidth-hack](https://github.com/blueyed/rxvt-unicode/blob/wcwidth-hack/README.md) for details.

```
# URxvt-wcwidth glitch workaround. See #bug001 in README.md.
if [ `ps -o comm= $PPID` = "urxvt" ]; then urxvt -e exec; fi
```
