#!/usr/bin/env bash

ohmyzsh_install_dest="~/.config/oh-my-zsh"
vundle_install_dest="~/.vim/bundle/Vundle.vim"

# Use GNU Stow to install dotfiles
echo "[*] Symlinking dotfiles ..."
mv README.md .README.md
stow *
mv .README.md README.md

# Install ohmyzsh
if [ ! -d $ohmyzsh_install_dest ]; then
  echo "[*] Installing oh-my-zsh to $ohmyzsh_install_dest ..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  mv ~/.oh-my-zsh ~/.config/oh-my-zsh
  rm ~/.zshrc
  mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc
else
  echo "[!] $ohmyzsh_install_dest already exists, skipping..."
fi

# Prepare vim/neovim with vundle
echo "[*] Preparing vim/neovim with vundle ..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir ~/.vim/backups
~/.vim/bundle/YouCompleteMe/install.py --clang-completer
echo "[*] Done. Open vim and run the command :PluginInstall"

# Install my personal tools
echo "[*] Installing displayctl and py-todo ..."
mkdir -p ~/Code
git clone https://github.com/aesophor/displayctl.git ~/Code/displayctl
git clone https://github.com/aesophor/py-todo.git ~/Code/py-todo
sudo cp -a ~/Code/displayctl/displayctl /usr/local/bin/displayctl
sudo cp -a ~/Code/py-todo/todo /usr/local/bin/todo
