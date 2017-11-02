# Dotfiles

Contains my dotfiles and some initializing instructions and commands for macOS and applications.

Before cloning this repo, you'll first want to install Xcode.

## Setup

This will symlink configuration files and the `.vim` directory.

```bash
echo 'Initial setup'
git clone git@github.com:jyunderwood/dotfiles.git $HOME/.dotfiles
$HOME/.dotfiles/init/install.sh
```

### macOS

To apply some new system preference to macOS, such as set save panels to expanded by default.

```bash
echo 'Configure macOS'
$HOME/.dotfiles/init/macos.sh
```

### Homebrew

```bash
echo 'Install Commandline Tools for macOS'
xcode-select --install

echo 'Install Homebrew'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
```

### Ruby

```bash
echo 'Install RVM and Ruby'
curl -sSL https://get.rvm.io | bash -s stable
rvm install 2.4.2
rvm --default use 2.4.2

echo 'Install Bundler'
gem install bundler
```

### Node

```bash
echo 'Install NVM and Node'
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
nvm install 8.9.0
nvm alias default 8.9.0

echo 'Install Yarn'
brew install yarn --without-node
```
