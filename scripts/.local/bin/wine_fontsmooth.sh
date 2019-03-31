#!/usr/bin/env sh

TMPFILE=`mktemp` || exit 1

echo "REGEDIT4

[HKEY_CURRENT_USER\Control Panel\Desktop]
\"FontSmoothing\"=\"2\"
\"FontSmoothingOrientation\"=dword:00000001
\"FontSmoothingType\"=dword:00000002
\"FontSmoothingGamma\"=dword:00000578" > $TMPFILE

echo -n "Updating configuration... "

$WINE regedit $TMPFILE 2> /dev/null

rm -f $TMPFILE

echo ok
