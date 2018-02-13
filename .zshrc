# Path to your oh-my-zsh installation.
export ZSH="$HOME/.config/oh-my-zsh"

# ZSH configuration.
# (1) ZSH Themes
# (2) Case-sensitive completion
# (3) Disable auto-setting terminal title,
# (4) Disable marking untracked files under VCS as dirty.
# (5) Plugins
ZSH_THEME="coldwood"
CASE_SENSITIVE="true"
DISABLE_AUTO_TITLE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(archive extract git sudo vim-interaction zsh-autosuggestions zsh-syntax-highlighting gentoo-zsh-completions)

# Load oh-my-zsh.sh
source $ZSH/oh-my-zsh.sh

# Custom command aliases and functions.
source ~/.config/zsh/aliases
source ~/.config/zsh/functions

# Add all directories under $HOME/.local/bin/ to $PATH.
addpath $HOME/.local/bin
unset -f addpath

# User configuration
export LANG="en_US.UTF-8"
export BROWSER="chromium"
export EDITOR="vim"

# gentoo-zsh-completions
#autoload -U compinit promptinit
#compinit
#promptinit: prompt gentoo

# fcitx for wps fix.
export XIM=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

# thefuck configuration.
#eval `thefuck --alias`
#eval `thefuck --alias FUCK`

# Prevent Wine from adding menu entries and desktop links.
export WINEDLLOVERRIDES="winemenubuilder.exe=d"

# Print welcome message.
clear; uname -snmrv; printf "Welcome to your %s %s, %s!\n" \
    "`cat /etc/os-release | grep 'NAME=' | head -n 1 | cut -d = -f 2`" \
    "`uname -s`" \
    "$USER"
