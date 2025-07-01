# Gina's Dotfiles

These are configurations and scripts I use to customize my development environment. Feel free to explore, adapt, and use them to enhance your own setup.

Copy the aliases and functions to your home directory and add them to your shell configuration:

```bash
# Copy configuration files
cp .aliases ~/.aliases
cp .functions ~/.functions

# Add source commands to your shell configuration
echo -e "\n# Get aliases & functions\nsource \$HOME/.aliases\nsource \$HOME/.functions" >> ~/.zshrc

# Reload your shell configuration
source ~/.zshrc
```

Run the main installation script to set up your development environment:

```bash
source packages.sh
```
