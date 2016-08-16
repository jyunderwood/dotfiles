# Dotfiles

Contains my dotfiles and some initializing instructions and commands for OS X and applications.

Before cloning this repo, you'll want to install Xcode, perhaps from the Mac App Store, first.

## Setup

This will symlink configuration files and the `.vim` directory, clone [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh), and change the shell to Z shell.

```bash
echo 'Initial setup'
git clone git@github.com:jyunderwood/dotfiles.git $HOME/.dotfiles
cd $HOME/.dotfiles
git submodule init
git submodule update
./init/install.sh
```

### OS X

To apply some new system preference to OS X, such as set save panels to expanded by default.

```bash
echo 'Configure OS X'
$HOME/.dotfiles/init/osx.sh
```

### Homebrew

If you need X11 tools, install [XQuartz](http://www.xquartz.org) before Homebrew.

```bash
echo 'Install Commandline Tools for OS X'
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

### Xcode

```bash
echo 'Link up preference files for Xcode'
rm -rf $HOME/Library/Developer/Xcode/UserData
ln -s $HOME/.dotfiles/apps/xcode $HOME/Library/Developer/Xcode/UserData
```

### Sublime Text 2 (on OS X)

```bash
echo 'Create Sublime Text 2 shortcut'
ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

echo 'Set up Sublime Text 2 folders'
mkdir -p $HOME/Library/Application\ Support/Sublime\ Text\ 2/Installed\ Packages

echo 'Install Package Control'
cd $HOME/Library/Application\ Support/Sublime\ Text\ 2/Installed\ Packages
curl -O https://sublime.wbond.net/Package%20Control.sublime-package
mv Package%20Control.sublime-package Package\ Control.sublime-package

echo 'Link up preference files Sublime Text 2'
rm -rf $HOME/Library/Application\ Support/Sublime\ Text\ 2/Packages/User
ln -s $HOME/.dotfiles/apps/sublime $HOME/Library/Application\ Support/Sublime\ Text\ 2/Packages/User
```
