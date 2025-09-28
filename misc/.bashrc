#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\H \W]\$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# Add environment variable AX_ROOT for axmol
export AX_ROOT="/Users/aesophor/Code/axmol"
# Add axmol console tool to PATH
export PATH=$AX_ROOT/tools/console:$PATH
# Add axmol cmdline tool to PATH
export PATH=$AX_ROOT/tools/cmdline:$PATH
