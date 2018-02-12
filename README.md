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

Feel free to take whatever you like.

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


## Installation Note
1. Prepare the dotfiles in ~/.config/dotfiles/.
```
mkdir -p ~/.config/dotfiles
cd ~/.config/dotfiles && git clone https://github.com/aesophor/dotfiles.git
```

2. Modify bin/dotsetup to suit your needs.
```
vim bin/dotsetup
```

3. Execute bin/dotsetup (or just copy what you need, if you know what you are doing.)
```
./bin/dotsetup
```
The script <a href="https://github.com/aesophor/dotfiles/blob/master/bin/dotsetup">dotsetup</a> 
will attempt to remove old directories or files (if exist), and create symlink to ~/.config/dotfiles/(some_stuff)
 
 
## Screenshots
![Screenshot-rofi](https://github.com/aesophor/dotfiles/raw/master/scrot/screenshot-rofi.png)
 
![Screenshot-clean](https://github.com/aesophor/dotfiles/raw/master/scrot/screenshot-clean.png)
