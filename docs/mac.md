# Mac

## Homebrew on Mac

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

## Local Shell Example

```sh
# Homebrew
export PATH="/opt/homebrew/bin:$PATH"
export HOMEBREW_NO_ENV_HINTS="1"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Mise
eval "$(/opt/homebrew/bin/mise activate zsh)"
```

## Quarantine Attribute on macOS

Some apps that you install from the web come with a quarantine attribute. This can prevent command line tool helpers and built in updaters from working correctly.

You can remove the quarantine attribute with the `xattr` command.

```sh
xattr -d com.apple.quarantine /Applications/AppName.app
```
