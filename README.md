# Dotfiles

Contains my dotfiles and some initializing instructions and commands for macOS and applications.

Before cloning this repo, you'll first want to install Xcode.

## Setup

This will symlink configuration files.

```bash
echo 'Install oh-my-zsh'
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo 'Setup dotfiles'
git clone git@github.com:jyunderwood/dotfiles.git $HOME/.dotfiles
$HOME/.dotfiles/init/install.sh
```

### macOS

If you want to customize macOS preferences via the commandline, checkout [macos.sh](https://github.com/mathiasbynens/dotfiles/blob/main/.macos).

### Homebrew

```bash
echo 'Install Commandline Tools for macOS'
xcode-select --install

echo 'Install Homebrew'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew doctor
```

### Ruby

```bash
echo 'Install rbenv and activate'
brew install rbenv
rbenv init
source $HOME/.zshrc

echo 'install Ruby v2.6.6'
rbenv install 2.6.6
rbenv global 2.6.6

echo 'Install Bundler'
gem install bundler
rbenv rehash
```

### Node

```bash
echo 'Install Node.js and Yarn'
brew install node yarn
```
