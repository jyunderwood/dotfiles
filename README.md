# Dotfiles

Contains my dotfiles and some initializing instructions and commands for OS X and applications.

## Setup

    git clone git@github.com:jyunderwood/dotfiles.git ~/.dotfiles
    ~/.dotfiles/init/install.sh
    ~/.dotfiles/init/osx.sh

## Homebrew

Install Xcode and [XQuartz](http://xquartz.macosforge.org/) first.

    echo 'Install Commandline Tools for OS X'
    xcode-select --install

    echo 'Install Homebrew'
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
    brew doctor

Some basic tools to install

    brew install tmux reattach-to-user-namespace
    brew install vim wget rbenv ruby-build

## Other Applications

### Xcode

    echo 'Link up preference files for Xcode'
    rm -rf $HOME/Library/Developer/Xcode/UserData
    ln -s $HOME/.dotfiles/apps/xcode $HOME/Library/Developer/Xcode/UserData

    echo 'Add iOS Simulator to Launchpad'
    ln -s /Applications/Xcode.app/Contents/Applications/iPhone\ Simulator.app /Applications/iOS\ Simulator.app

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

### Transmission

    echo 'Set Transmission preferences'
    $HOME/.dotfiles/init/transmission.sh
