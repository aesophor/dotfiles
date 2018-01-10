#!/usr/bin/env bash
# show_art.sh
#
# Display album art upon music change. For ncmpcpp.

music_dir="$HOME/Music"
cover_path="/tmp/cover.jpg"

function reset_background
{
    printf "\e]20;;100x100+1000+1000\a"
}

{
    album="$(mpc --format %album% current)"
    file="$(mpc --format %file% current)"
    album_dir="${file%/*}"
    [[ -z "$album_dir" ]] && exit 1
    album_dir="$music_dir/$album_dir"

    covers="$(find "$album_dir" -type d -exec find {} -maxdepth 1 -type f -iregex ".*/.*\(${album}\|cover\|folder\|artwork\|front\).*[.]\(jpe?g\|png\|gif\|bmp\)" \; )"
    src="$(echo -n "$covers" | head -n1)"
    rm -f "$cover_path" 
    if [[ -n "$src" ]] ; then
        #resize the image's height to 300px & extent it to cover the urxvt length
        ffmpeg -i "$src" -vf scale=300:300 "$cover_path" -loglevel 8
        #convert "$src" -resize 300x -background "#2f343f" -extent 1100x400 "$COVER"
        if [[ -f "$cover_path" ]]; then
            printf "\e]20;${cover_path};80x80+3+37:op=keep-aspect\a"
        else
            reset_background
        fi
    else
        reset_background
    fi
} &
