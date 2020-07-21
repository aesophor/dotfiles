#!/usr/bin/env bash

# Use GNU Stow to install dotfiles
echo "[*] Symlinking dotfiles ..."
mv README.md .README.md
stow *
mv .README.md README.md
echo "[*] Done."


cat <<EOF
[*] Do you want to install additional packages?

    * Dependencies (make sure they have been installed):
      + curl (for fetching oh-my-zsh installer script)

    * The following packages will be installed:
      + oh-my-zsh (via the installer script from https://github.com/ohmyzsh/ohmyzsh)
      + vundle (git clone from https://github.com/VundleVim/Vundle.vim)
      + displayctl (git clone from https://github.com/aesophor/displayctl)
      + py-todo (git clone from https://github.com/aesophor/py-todo)
    
    * These files/directories will be created on your filesystem:
      + ~/.config/oh-my-zsh
      + ~/.vim/backups
      + ~/.vim/bundle/Vundle.vim
      + /usr/local/bin/displayctl (requires sudo permission)
      + /usr/local/bin/py-todo (requires sudo permission)
    
    
EOF

read -p "Confirm? (Y/n)" -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]; then
  ohmyzsh_install_dest="~/.config/oh-my-zsh"
  vundle_install_dest="~/.vim/bundle/Vundle.vim"

  displayctl_clone_dest="~/Code/displayctl"
  py_todo_clone_dest="~/Code/py-todo"

  # My gitconfig uses ssh, so I'll hide it temporarily to make git clone works.
  mv ~/.config/git/config ~/.config/git/config.old


  # Install oh-my-zsh
  if [ ! -d $ohmyzsh_install_dest ]; then
    echo "[*] Installing oh-my-zsh to $ohmyzsh_install_dest ..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    mv ~/.oh-my-zsh ~/.config/oh-my-zsh

    if [ -f ~/.zshrc.pre-oh-my-zsh ]; then
      rm ~/.zshrc
      mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc
    fi

  else
    echo "[!] $ohmyzsh_install_dest already exists, skipping..."
  fi


  # Prepare vim/neovim with vundle
  echo "[*] Preparing vim/neovim with vundle ..."
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  mkdir -p ~/.vim/backups
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


  # Restore my gitconfig.
  mv ~/.config/git/config.old ~/.config/git/config
fi
