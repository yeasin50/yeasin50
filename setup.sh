#!/bin/bash

# Run this file with
# `chmod +x setup.sh`
# `./setup.sh`

# exit on fail
set -e

echo "🔧 Setting up symlinks for dotfiles..."

# Link dotfiles from repo into system paths
# ! For My case I use `github` folder and then  clone it there
DOTFILES_DIR="$HOME/github/yeasin50"
CONFIG_DIR="$HOME/.config"


link() {
    src=$1
    dest=$2

    echo "🔗 Linking $src → $dest"
    rm -rf "$dest"
    ln -s "$src" "$dest"
}

# Neovim
link "$DOTFILES_DIR/nvim" "$CONFIG_DIR/nvim"

# Tmux
link "$DOTFILES_DIR/tmux/.tmux.conf" "$HOME/.tmux.conf"


echo "✅ Done! Your dotfiles are now live."




