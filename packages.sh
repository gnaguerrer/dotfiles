#!/bin/bash

echo "Setting up Homebrew first..."
source ./brew.sh

echo "Installing Node..."
brew install node
echo "Node installed ✅"

echo "Installing React Native tools..."
source ./react-native.sh

echo "Installing Yarn..."
yarn install --global yarn
echo "Yarn installed ✅"

echo "Installing Node Version Manager (nvm)..."
brew install nvm
echo "nvm installed ✅"

echo "Adding nvm to ~/.zprofile if not already present..."
if ! grep -q 'export NVM_DIR="\$HOME/.nvm"' ~/.zprofile; then
  cat <<'EOF' >> ~/.zprofile

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
EOF
  echo "nvm added to ~/.zprofile ✅"
else
  echo "nvm already present in ~/.zprofile ✅"
fi

echo "Sourcing ~/.zprofile..."
source ~/.zprofile


echo "Installing Screen Copy (scrcpy)..."
brew install scrcpy
echo "Screen Copy (scrcpy) installed ✅"

# echo "Installing ngrok..."
# brew install ngrok/ngrok/ngrok

# echo "Installing visual-studio-code..."
# brew install --cask visual-studio-code