# Dotfiles

Contains my dotfiles and some initializing instructions and commands for macOS and applications.

Before cloning this repo, you'll first want to install Xcode.

## Setup

This will symlink configuration files.

```bash
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup dotfiles
git clone git@github.com:jyunderwood/dotfiles.git $HOME/.dotfiles
$HOME/.dotfiles/init/install.sh
```

## Homebrew

```bash
echo 'Install Commandline Tools for macOS'
xcode-select --install

echo 'Install Homebrew'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew doctor
```

### Brew Bundle

To save time installing requirements for various projects, you could create a `Brewfile`. Find out more about [Brew Bundle](https://github.com/Homebrew/homebrew-bundle/blob/master/README.md).

Brewfile:

```ruby
# Ruby
brew 'rbenv'

# Python
brew 'pyenv'

# Node
brew 'node@16'

# Datastores
brew 'redis'

# Libraries
brew 'imagemagick'
brew 'vips'
brew 'poppler'

# Utilities
tap 'heroku/brew'
brew 'heroku'
cask 'ngrok'
```

## Ruby

```bash
# Activate rbenv
rbenv init
source $HOME/.zshrc

rbenv install 3.0.4
rbenv global 3.0.4

# Install Bundler
gem install bundler
rbenv rehash
```

## Python

```bash
# Activate pyenv
pyenv init
source $HOME/.zshrc

pyenv install 3.10.4
pyenv global 3.10.4

# Update pip
python -m pip install -U pip

# Python packages I use
python -m pip install jupyterlab numpy matplotlib pillow pandas requests altair scipy scikit-learn sympy nose statsmodels
```

## R

```bash
brew install r
```

Inside the R console, install tinytex to knit to pdf.

```r
install.packages("tinytex")
tinytex::install_tinytex()
```

Install [Tidyverse](https://www.tidyverse.org)

```r
install.packages("tidyverse")
```

## PostgreSQL

On a Mac, using [Postgres.app](https://postgresapp.com), add its CLI tools to the path with:

```sh
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
```

## Quarantine Attribute on macOS

Some apps that you install from the web come with a quarantine attribute. This can prevent command line tool helpers and built in updaters from working correctly.

You can remove the quarantine attribute with the `xattr` command.

```sh
xattr -d com.apple.quarantine /Applications/AppName.app
```
