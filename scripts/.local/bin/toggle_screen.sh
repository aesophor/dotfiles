#!/usr/bin/env sh
# toggle laptop screen brightness

if [ `light` == '0.00' ]; then
  displayctl -d
else
  light -S 0
fi
