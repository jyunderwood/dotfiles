# Dotfiles

Contains my dotfiles and some initializing instructions and commands for OS X and applications.

Before cloning this repo, you'll want to install Xcode, perhaps from the Mac App Store, first.

## Setup

This will symlink configuration files and the `.vim` directory.

```bash
echo 'Initial setup'
git clone git@github.com:jyunderwood/dotfiles.git $HOME/.dotfiles
cd $HOME/.dotfiles
git submodule init
git submodule update
./init/install.sh
```

### macOS

To apply some new system preference to macOS, such as set save panels to expanded by default.

```bash
echo 'Configure macOS'
$HOME/.dotfiles/init/osx.sh
```

### Homebrew

```bash
echo 'Install Commandline Tools for macOS'
xcode-select --install

echo 'Install Homebrew'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
```

### RVM

```bash
echo 'Install RVM and Ruby'
curl -sSL https://get.rvm.io | bash -s stable
rvm install 2.3.0
rvm use default 2.3.0
```

### NVM

```bash
echo 'Install NVM and Node'
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
nvm install 4.2.4
nvm alias default 4.2.4
```
