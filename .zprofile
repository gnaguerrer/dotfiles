eval $(/opt/homebrew/bin/brew shellenv)

# React native
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# MongoDB
# export PATH=$PATH:/usr/local/opt/mongodb-community@4.4/bin

# Node version manager
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh