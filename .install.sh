#!/usr/bin/env bash


# Use GNU Stow to install dotfiles
echo "[*] Symlinking dotfiles ..."
mv README.md .README.md
stow *
mv .README.md README.md
echo "[*] Done."



read -p "[*] Do you want to install ohmyzsh, vundle, displayctl and py-todo?" -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]; then
  ohmyzsh_install_dest="~/.config/oh-my-zsh"
  vundle_install_dest="~/.vim/bundle/Vundle.vim"

  displayctl_clone_dest="~/Code/displayctl"
  py_todo_clone_dest="~/Code/py-todo"

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
  mkdir -p ~/.vim/backups
  ~/.vim/bundle/YouCompleteMe/install.py --clang-completer
  echo "[*] Done. Open vim and run the command :PluginInstall"

  # Install my personal tools
  echo "[*] Installing displayctl and py-todo ..."
  mkdir -p ~/Code

  if [ ! -d $displayctl_clone_dest ]; then
    git clone https://github.com/aesophor/displayctl.git "$displayctl_clone_dest"
    sudo cp -a "$displayctl_clone_dest/displayctl" /usr/local/bin/displayctl
  fi

  if [ ! -d ~/Code/py-todo ]; then
    git clone https://github.com/aesophor/py-todo.git "$py_todo_clone_dest"
    sudo cp -a "$py_todo_clone_dest/todo" /usr/local/bin/todo
  fi
fi
