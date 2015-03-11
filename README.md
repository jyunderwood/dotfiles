# Dotfiles

Contains my dotfiles and some initializing instructions and commands for OS X and applications.

Before cloning this repo, you'll want to install Xcode, in the Mac App Store, first.

## Setup

This will symlink configuration files and the `.vim` directory, clone [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh), and change the shell to Z shell.

    echo 'Initial setup'
    git clone git@github.com:jyunderwood/dotfiles.git ~/.dotfiles
    $HOME/.dotfiles/init/install.sh

### OS X

To apply some new system preference to OS X, such as set save panels to expanded by default.

    echo 'Configure OS X properly'
    $HOME/.dotfiles/init/osx.sh

### Homebrew

If you need X11 tools, install [XQuartz](http://xquartz.macosforge.org/) before Homebrew.

    echo 'Install Commandline Tools for OS X'
    xcode-select --install

    echo 'Install Homebrew'
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew doctor

### RVM

    echo 'Install RVM and Ruby 2.2.0'
    curl -sSL https://get.rvm.io | bash -s stable
    rvm install 2.2.0

### NVM

    echo 'Install NVM and IO.js'
    curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
    nvm install iojs

### Xcode

    echo 'Link up preference files for Xcode'
    rm -rf $HOME/Library/Developer/Xcode/UserData
    ln -s $HOME/.dotfiles/apps/xcode $HOME/Library/Developer/Xcode/UserData

    echo 'Add iOS Simulator to Launchpad'
    ln -s /Applications/Xcode.app/Contents/Developer/Applications/iOS\ Simulator.app /Applications/iOS\ Simulator.app

### Sublime Text 2 (on OS X)

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
