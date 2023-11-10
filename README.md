# Dotfiles

Contains my dotfiles.

## Setup

Install [Oh My Zsh](https://ohmyz.sh/#)

```sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Setup dotfiles

```
git clone git@github.com:jyunderwood/dotfiles.git $HOME/.dotfiles
$HOME/.dotfiles/init/install.sh
```

Install [Homebrew](https://brew.sh)

```sh
echo 'Install Commandline Tools for macOS'
xcode-select --install

ech 'Install Rosetta'
softwareupdate --install-rosetta --agree-to-license

echo 'Install Homebrew'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew doctor
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
rbenv install 3.1.4
rbenv global 3.1.4

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
pyenv install 3.11.6
pyenv global 3.11.6

# Update pip
python -m pip install -U pip

# Some Python packages
python -m pip install jupyterlab numpy matplotlib pillow pandas requests altair scipy scikit-learn sympy nose statsmodels seaborn
```

### Node.js

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
nvm install lts/hydrogen # Node v18.18
nvm alias default lts/hydrogen
```

### R

```sh
brew install R
# Or if on Linux
sudo apt install --no-install-recommends software-properties-common dirmngr
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
sudo apt install --no-install-recommends r-base
```

#### R Packages

Install [devtools](https://devtools.r-lib.org).

```r
install.packages("devtools")
```

Install [tinytex](https://yihui.org/tinytex/) to knit to pdf.

```r
install.packages("tinytex")
tinytex::install_tinytex()
```

Install [Tidyverse](https://www.tidyverse.org)

```r
install.packages("tidyverse")
```

Install [lolcat](https://github.com/burrm/lolcat)

```r
require(devtools)
install_github("burrm/lolcat")
```

### Other software installed with Homebrew

```sh
brew install openjdk@17 redis imagemagick vips poppler
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
eval "$(rbenv init - zsh)"

# Python
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Node.js
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# OpenJDK
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk@17/include"
```
