#!/bin/sh
sysresources=/etc/X11/xinit/.Xresources
userresources=$HOME/.Xresources
userkeymaps=$HOME/.xbindkeysrc

# Merge in .Xresources and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$userkeymaps" ]; then
    xbindkeys
fi

# Start the programs in /etc/X11/xinit/xinitrc.d
if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

xrandr --newmode "1368x768" 85.25 1368 1440 1576 1784 768 771 781 798 -hsync +vsync
xrandr --addmode eDP1 1368x768
#xrandr --output eDP1 --mode 1440x900

# Startup i3-KDE
exec startkde
