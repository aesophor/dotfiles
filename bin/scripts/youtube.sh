#!/usr/bin/env bash
# youtube.sh - Download entire playlist or individual song.

case "$1" in
    "" | -h | --help)
        # Display help messages.
        echo "$0 -option url"
        echo ""
        echo "[ options ]"
        echo "    -p --playlist"
        echo "    -i --individual"
        echo ""
        echo "[ url ]"
        echo "    Either a url of a playlist or individual song."
        echo "    e.g. https://www.youtube.com/playlist?list=..."
        echo "    e.g. https://www.youtube.com/watch?v=..."
        ;;
        
    -p | --playlist)
        # Download playlist to batch of MP3s.
        youtube-dl --extract-audio --audio-format mp3 --playlist-random "$2"
        ;;
        
    -i | --individual)
        # Download individual song.
        youtube-dl --extract-audio --audio-format mp3 --no-playlist "$2"
        ;;
esac
