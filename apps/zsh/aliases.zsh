alias ls='ls -lhGF'
alias rezsh='source ~/.zshrc'

# Ruby
alias rake='noglob rake'
alias bx='bundle exec'
alias guard='bx guard -c'

# Swift
alias xc.s='sudo xcode-select -s /Applications/Xcode.app/Contents/Developer'
alias xc.b='sudo xcode-select -s /Applications/Xcode-beta.app/Contents/Developer'
alias xc.bo='xcrun launch-with-toolchain /Library/Developer/Toolchains/swift-latest.xctoolchain'
alias xc.es='export PATH="/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:$PATH"'

# Clean up
alias rm.gems='gem list --no-version | xargs gem uninstall -aIx'
alias rm.pyc='find . -type f -name "*.pyc" -exec rm {} \;'
alias rm.esub='find . -type d -exec rmdir 2>/dev/null {} \;'
alias rm.dss='find . -type f -name ".DS_Store" -exec rm {} \;'
