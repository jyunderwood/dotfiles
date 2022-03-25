alias ls='ls -lhGF'
alias rezsh='source ~/.zshrc'
alias prettyjson='python -m json.tool'
alias httpserver='python -m http.server'

# Clean up
alias rm.gems='gem list --no-version | xargs gem uninstall -aIx'
alias rm.pyc='find . -type f -name "*.pyc" -exec rm {} \;'
alias rm.dss='find . -type f -name ".DS_Store" -exec rm {} \;'

# Ruby
alias bx='bundle exec'
alias guard='bundle exec guard -c'

# Force the use of the Intel binary on Apple Silicon
alias irun='arch -x86_64'

# Xcode
alias xcs.stable='sudo xcode-select -s /Applications/Xcode.app/Contents/Developer'
alias xcs.beta='sudo xcode-select -s /Applications/Xcode-beta.app/Contents/Developer'
