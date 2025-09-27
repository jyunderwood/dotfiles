# Dotfiles

Contains my dotfiles.

## Setup

Install [Oh My Zsh](https://ohmyz.sh/)

```sh
sudo apt install zsh # if on Linux
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
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

### Dev libraries

Ubuntu:

```sh
sudo apt install git autoconf patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev liblzma-dev libsqlite3-dev tk-dev tcl-dev
```

Fedora:

```sh
sudo dnf install @development-tools git rust cargo openssl-devel libyaml-devel readline-devel zlib-devel gmp-devel ncurses-devel libffi-devel gdbm-devel libdb-devel libuuid-devel xz-devel gcc-c++ sqlite-devel tk-devel tcl-devel
```

macOS:

```sh
brew install openssl libyaml readline xz
```

## Software

Using [mise-en-place](https://mise.jdx.dev/) for managing the versions of [Ruby](https://ruby-lang.org), [Python](https://python.org), and [Node.js](https://nodejs.org).

```sh
curl https://mise.run | sh
# or for macOS: brew install mise

# Then add to the shell
echo 'eval "$(~/.local/bin/mise activate zsh)"' >> ~/.zshrc
# or for macOS: echo 'eval "$(/opt/homebrew/bin/mise activate zsh)"' >> ~/.zshrc
```

```sh
mise use --global ruby@3.4
mise use --global python@3.13
mise use --global node@24
```

### PostgreSQL

On a Mac, using [Postgres.app](https://postgresapp.com), add its CLI tools to the path with:

```sh
export PATH="/Applications/Postgres.app/Contents/Versions/16/bin:$PATH"
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
export PATH="/Applications/Postgres.app/Contents/Versions/16/bin:$PATH"

# Mise
eval "$(/opt/homebrew/bin/mise activate zsh)"
```
