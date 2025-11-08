# Dotfiles

Contains my dotfiles.

## Setup

Install and change to zsh

```sh
sudo apt install zsh
sudo chsh -s /usr/bin/zsh
```

Install [Oh My Zsh](https://ohmyz.sh/)

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Setup dotfiles

```sh
git clone git@github.com:jyunderwood/dotfiles.git $HOME/.dotfiles
$HOME/.dotfiles/init/install.sh
```

## Dev libraries

Ubuntu:

```sh
sudo apt install git autoconf patch build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev liblzma-dev libsqlite3-dev tk-dev tcl-dev
```

macOS:

```sh
brew install openssl libyaml readline xz
```

## Languages

Using [mise-en-place](https://mise.jdx.dev/) for managing the versions of [Python](https://python.org), [Node.js](https://nodejs.org), and [Ruby](https://ruby-lang.org). I'm not leaning too heavily on it, and have actually been using [uv](https://docs.astral.sh/uv/) for package management of python projects.

```sh
curl https://mise.run | sh
# macOS: brew install mise

echo 'eval "$(~/.local/bin/mise activate zsh)"' >> ~/.dotfiles/local/shell
# macOS: echo 'eval "$(/opt/homebrew/bin/mise activate zsh)"' >> ~/.dotfiles/local/shell
```

On Linux, in case you need to use `bash`, also make sure mise is activated there

```sh
echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc
```

### Python, Node, and Ruby

```sh
mise use --global python@3.14
mise use --global node@24
mise use --global ruby@3.4
```

Update language package managers

```sh
python -m pip install pip --upgrade
npm update --global npm
npm install --global pnpm
gem update --system
```

### uv for Python

```sh
curl -LsSf https://astral.sh/uv/install.sh | sh
```

### Rust

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

## Local Shell

I keep my `.zshrc` file lightweight. Most things are per machine in a non-tracked `~/.dotfiles/local/shell` file.

## Docker

```sh
sh -c "$(curl -fsSL https://get.docker.com)"
sudo usermod -aG docker $USER
```

Or use [Docker Desktop](https://www.docker.com/products/docker-desktop/) on macOS.

### Data Stores

Instead of installing loads of data storage engines for local development, just use Docker to boot them up.

- PostgresSQL 16
- Redis 8

```sh
cd ~/.dotfiles/datastores
docker compose up -d
```

Since PostgreSQL isn't installed on the machine, you'll probably still need a dev library and client.

```sh
sudo apt install libpq-dev postgresql-client postgresql-client-common
# macOS: brew install libpq
```
