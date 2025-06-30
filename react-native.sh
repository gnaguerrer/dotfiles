#!/bin/bash

echo "Installing watchman..."
brew install watchman
echo "Watchman installed ✅"


echo "Installing Java Zulu 17..."
brew install --cask zulu@17
brew info --cask zulu@17

echo "Configuring JAVA_HOME in ~/.zshrc..."
if ! grep -q "export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home" ~/.zshrc; then
    echo "export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home" >> ~/.zshrc
    echo "JAVA_HOME added to ~/.zshrc"
else
    echo "JAVA_HOME already configured in ~/.zshrc"
fi
echo "Java Zulu 17 installed ✅"

echo "Sourcing ~/.zshrc..."
source ~/.zshrc

echo "Installing android-platform-tools..."
brew install android-platform-tools
echo "Android platform tools installed ✅"


echo "Installing Android Studio..."
brew install --cask android-studio
echo "Android Studio installed ✅"


echo "Installing chruby ruby-install..."
brew install chruby ruby-install
if ! grep -q "source /opt/homebrew/opt/chruby/share/chruby/chruby.sh" ~/.zshrc; then
    cat <<'EOF' >> ~/.zshrc
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.4.2
EOF
    echo "Ruby configuration added to ~/.zshrc"
else
    echo "Ruby configuration already exists in ~/.zshrc"
fi
echo "Chruby ruby-install installed ✅"


echo "Configuring ANDROID_HOME and PATH in ~/.zprofile..."
if ! grep -q "export ANDROID_HOME=\$HOME/Library/Android/sdk" ~/.zprofile; then
    cat <<'EOF' >> ~/.zprofile

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
EOF
    echo "ANDROID_HOME and PATH added to ~/.zprofile ✅"
else
    echo "ANDROID_HOME already configured in ~/.zprofile ✅"
fi

echo "Sourcing ~/.zprofile..."
source ~/.zprofile