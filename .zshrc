# Path to your oh-my-zsh installation.
export ZSH="$HOME/.config/oh-my-zsh"

# ZSH configuration.
# (1) ZSH Themes
# (2) Case-sensitive completion
# (3) Disable auto-setting terminal title,
# (4) Disable marking untracked files under VCS as dirty.
# (5) Plugins
ZSH_THEME="eastwood_custom"
CASE_SENSITIVE="true"
DISABLE_AUTO_TITLE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(archive extract git vim-interaction zsh-autosuggestions)

# Load oh-my-zsh.sh
source $ZSH/oh-my-zsh.sh

# User configuration
export LANG="en_US.UTF-8"
export BROWSER="chromium"
export EDITOR="vim"

# Custom command aliases and functions.
source ~/.config/zsh/aliases
source ~/.config/zsh/functions

# fcitx for wps fix.
export XIM=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

# thefuck configuration.
eval `thefuck --alias`
eval `thefuck --alias FUCK`

# Print welcome message.
clear; uname -a; printf "Welcome to your Arch Linux, %s!\n" "$USER"
