alias ls='ls -lhGF'
alias rezsh='source ~/.zshrc'
alias prettyjson='python -m json.tool'

# Ruby
alias bx='bundle exec'
alias guard='bx guard -c'

# Xcode
alias xcs.stable='sudo xcode-select -s /Applications/Xcode.app/Contents/Developer'
alias xcs.beta='sudo xcode-select -s /Applications/Xcode-beta.app/Contents/Developer'

# Clean up
alias rm.gems='gem list --no-version | xargs gem uninstall -aIx'
alias rm.pyc='find . -type f -name "*.pyc" -exec rm {} \;'
alias rm.esub='find . -type d -exec rmdir 2>/dev/null {} \;'
alias rm.dss='find . -type f -name ".DS_Store" -exec rm {} \;'
