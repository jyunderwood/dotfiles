if [[ -s ~/.dotfiles/local/ ]]; then
  echo "Dotfiles already installed!"

else
  mkdir -p ~/.dotfiles/local/
  touch ~/.dotfiles/local/zshrc

  cd ~/.dotfiles/config/

  for f in *; do
    if [[ -f $f ]]; then
      if [[ -f ~/.$f ]]; then mv ~/.$f ~/.$f.bak; fi
      ln -s ~/.dotfiles/config/$f ~/.$f
    fi
  done

  cd ~

  ln -s ~/.dotfiles/apps/vim ~/.vim

  git clone git://github.com/robbyrussell/oh-my-zsh.git  ~/.oh-my-zsh
  chsh -s /bin/zsh
  source ~/.zshrc
fi
