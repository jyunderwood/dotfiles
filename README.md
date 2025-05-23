# Dotfiles

Contains my dotfiles.

## Setup

Install [Oh My Zsh](https://ohmyz.sh/#)

```sh
sudo apt install zsh # if on Linux
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Setup dotfiles

```sh
git clone git@github.com:jyunderwood/dotfiles.git $HOME/.dotfiles
$HOME/.dotfiles/init/install.sh
```

Install [Homebrew](https://brew.sh)

```sh
echo 'Install Commandline Tools for macOS'
xcode-select --install

echo 'Install Rosetta'
softwareupdate --install-rosetta --agree-to-license

echo 'Install Homebrew'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew doctor
```

### Linux dev libraries

```sh
sudo apt install git autoconf patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev liblzma-dev
```

## Software

### Ruby

```sh
brew install rbenv
# Or if on Linux
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
```

```sh
rbenv init
rbenv install 3.3.8
rbenv global 3.3.8

gem update --system
gem install bundler
rbenv rehash
```

### Python

```sh
brew install pyenv
# Or if on Linux
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
```

```sh
# Install dependency that is missing on macOS
brew install xz

pyenv init
pyenv install 3.12
pyenv global 3.12

# Update pip
python -m pip install -U pip

# Install JupyterLab
python -m pip install jupyterlab
```

### Node.js

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
nvm install 22
nvm alias default 22
```

### PostgreSQL

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

## Local Shell

I keep my `.zshrc` file lightweight. Most things are per machine in a non-tracked `~/.dotfiles/local/shell` file.

On a Mac, the contents tend to look like this:

```sh
# Homebrew
export PATH="/opt/homebrew/bin:$PATH"
export HOMEBREW_NO_ENV_HINTS="1"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Postgres
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# Ruby
eval "$(rbenv init - --no-rehash zsh)"

# Python
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Node.js
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
```
