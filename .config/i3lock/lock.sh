#!/usr/bin/env bash
# lock.sh
#
# Screenlock script.

RES=`xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/'`
tmpbg=/tmp/lock_bg.png
logo=/home/decimate/.config/dotfiles/res/logo.png


function print_help()
{
    echo "Usage: $0 <option>"
    echo "-b --blur: blur current wallpaper"
    echo "-i --image: specify an image as wallpaper"
}

function lock()
{
    # $1 image path
    letterEnteredColor=d23c3dff
    letterRemovedColor=d23c3dff
    passwordCorrect=00000000
    passwordIncorrect=d23c3dff
    background=00000000
    foreground=ffffffff
    i3lock \
	-n -i "$1" \
	--timepos="x-90:h-ch+30" \
	--datepos="tx+24:ty+25" \
	--clock --datestr "Type password to unlock..." \
	--insidecolor=$background --ringcolor=$foreground --line-uses-inside \
	--keyhlcolor=$letterEnteredColor --bshlcolor=$letterRemovedColor --separatorcolor=$background \
	--insidevercolor=$passwordCorrect --insidewrongcolor=$passwordIncorrect \
	--ringvercolor=$foreground --ringwrongcolor=$foreground --indpos="x+280:h-70" \
	--radius=20 --ring-width=4 --veriftext="" --wrongtext="" \
	--textcolor="$foreground" --timecolor="$foreground" --datecolor="$foreground"
}


function cp_custom_bg()
{
    # Copy dest image to /tmp/lock_bg.png
    cp $1 $tmpbg
}

function blur_wall()
{
    # Take screenshot of the current screen and blur it.
    ffmpeg -f x11grab -video_size $RES -y -i $DISPLAY -i $logo -filter_complex "boxblur=5:5,overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2" -vframes 1 $tmpbg
}

function cleanup()
{
    rm $tmpbg
}


if [ $# -eq 0 ]; then
    # No arguments given. Blur current wallpaper.
    blur_wall
    lock $tmpbg
    cleanup

elif [ $# -eq 1 ]; then
    # Use custom image as lockscreen wallpaper.
    if [ "$1" == "-i" ] || [ "$1" == "--image" ]; then
        cp_custom_bg $2
    fi
    
    # Blur current wallpaper. 
    if [ "$1" == "-b" ] || [ "$1" == "--blur" ]; then
        blur_wall
    fi
    lock $tmpbg
    cleanup
    
else
    print_help
fi
