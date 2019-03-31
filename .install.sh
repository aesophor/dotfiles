#!/usr/bin/env bash
# .install.sh - Install dotfiles with GNU Stow.

mv README.md .README.md
stow *
mv .README.md README.md
