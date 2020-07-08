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
plugins=(archive extract git sudo vim-interaction zsh-autosuggestions zsh-syntax-highlighting)

# Fix hyper terminal's % charracter on startup
unsetopt PROMPT_SP

# Load oh-my-zsh.sh
ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# Custom command aliases and functions.
source ~/.config/zsh/aliases
source ~/.config/zsh/functions

# Make GNU commands available
export PATH="/usr/local/opt/coreutils/libexec/gnubin:${PATH}"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:${MANPATH}"

# Add ~/.local/bin to $PATH.
export PATH="$PATH:$HOME/.local/bin"

# User configuration.
USER_LANGUAGE="en_US.UTF-8"
export LC_ALL=${USER_LANGUAGE}
export LANG=${USER_LANGUAGE}
export LANGUAGE=${USER_LANGUAGE}
export BROWSER="firefox"
export EDITOR="nvim"

# Print welcome message and todo list.
echo ; ufetch; echo; todo
