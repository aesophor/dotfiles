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

# Add all directories under $HOME/.local/bin/ to $PATH.
addpath $HOME/.local/bin
unset -f addpath

# User configuration
export LANG="en_US.UTF-8"
export BROWSER="chromium"
export EDITOR="vim"

# fcitx for wps fix.
export XIM=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

# Make JAVA OPTIONS shut up.
_SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS"
unset _JAVA_OPTIONS
alias java='java "$_SILENT_JAVA_OPTIONS"'

# syntax-hightlighting for cat and less
#alias cat='highlight -O ansi --force'
#alias less='cat $1 | /usr/bin/less -N --underline-special'

# Prevent Wine from adding menu entries and desktop links.
export WINEDLLOVERRIDES="winemenubuilder.exe=d"


# URxvt-wcwidth glitch workaround.
if [ `ps -o comm= $PPID` = "urxvt" ]; then urxvt -e exec; fi

# Print welcome message.
clear; motd

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
