# Path to your oh-my-zsh installation.
export ZSH=/home/aesophor/.oh-my-zsh

# ZSH Themes.
ZSH_THEME="eastwood_custom"

# Case-sensitive completion.
CASE_SENSITIVE="true"

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Disable marking untracked files under VCS as dirty.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# History
SAVEHIST=2000
HIST_STAMPS="mm/dd/yyyy"

# Plugins
plugins=(archive extract git vim-interaction zsh-autosuggestions)

# User configuration
export ZSH="$HOME/.oh-my-zsh"
export LANG="en_US.UTF-8"
export EDITOR="vim"

source $ZSH/oh-my-zsh.sh
source ~/.aliases
source ~/.functions

# fcitx for wps fix.
export XIM=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

# volnoti.
export $(dbus-launch)

# thefuck configuration.
eval $(thefuck --alias)
eval $(thefuck --alias FUCK)

# Print welcome message.
clear; uname -a; printf "Welcome to your Arch Linux, %s!\n" "$USERNAME"
