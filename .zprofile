eval $(/opt/homebrew/bin/brew shellenv)

alias packages-native='yarn && cd ios && arch -x86_64 pod install && cd ..'
alias develop='git checkout develop'
alias pdevelop='develop && git pull'
alias bname='git branch --show-current'
alias bncopy='bname | pbcopy'
alias gpushn='git push --set-upstream origin'
alias gcom='git commit -m'
alias rninfo='npx react-native info'
alias rnclean='npx react-native clean'
alias javahv='/usr/libexec/java_home -V'
alias clearxcode='rm -rf ~/Library/Developer/Xcode/DerivedData/* && rm -rf ~/Library/Caches/org.swift.swiftpm'
alias adb='/Users/$USER/Library/Android/sdk/platform-tools/adb'

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/usr/local/opt/mongodb-community@4.4/bin

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh