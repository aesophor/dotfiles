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

# Start redshift
redshift &> /dev/null || redshift &> /dev/null &

# Start KDE Plasma 5
if [ -x "$(command -v startplasma-x11)" ]; then
  exec startplasma-x11
elif [ -x "$(command -v startkde)" ]; then
  exec startkde
else
  echo 'KDE plasma is not installed.'
fi
