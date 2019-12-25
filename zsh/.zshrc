# Path to your oh-my-zsh installation.
export ZSH="$HOME/.config/oh-my-zsh"

# ZSH configuration.
# (1) ZSH Themes
# (2) Case-sensitive completion
# (3) Disable auto-setting terminal title,
# (4) Disable marking untracked files under VCS as dirty.
# (5) Plugins
ZSH_THEME="frisk"
CASE_SENSITIVE="true"
DISABLE_AUTO_TITLE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(archive extract git sudo vim-interaction zsh-autosuggestions zsh-syntax-highlighting gentoo-zsh-completions)

# Load oh-my-zsh.sh
source $ZSH/oh-my-zsh.sh

# Custom command aliases and functions.
source ~/.config/zsh/aliases
source ~/.config/zsh/functions

# Add ~/.local/bin to $PATH.
export PATH="$PATH:$HOME/.local/bin:$HOME/.local/bin/wine"

# User configuration.
USER_LANGUAGE="en_US.UTF-8"
export LC_ALL=${USER_LANGUAGE}
export LANG=${USER_LANGUAGE}
export LANGUAGE=${USER_LANGUAGE}
export BROWSER="firefox"
export EDITOR="nvim"

# Fix incorrect backspace behavior on urxvt+zsh+ssh.
# However, this will cause zsh-autosuggestion to work buggy.
#export TERM=xterm-256color

# fcitx for wps fix.
export XIM=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

# KDE Plasma integration with Firefox
export GTK_USE_PORTAL=1

# Prevent Wine from adding menu entries and desktop links.
export WINEDLLOVERRIDES="winemenubuilder.exe=d"

# Print welcome message and todo list.
clear; lastlogin; ufetch-gentoo; todo

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT="/home/aesophor/Code/cocos2d-x-3.17.1/tools/cocos2d-console/bin"
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT="/home/aesophor/Code"
export PATH=$COCOS_X_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT="/home/aesophor/Code/cocos2d-x-3.17.1/templates"
export PATH=$COCOS_TEMPLATES_ROOT:$PATH
