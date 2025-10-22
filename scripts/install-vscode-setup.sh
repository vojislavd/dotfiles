#!/bin/bash

VSCODE_USER_DIR="$HOME/.config/Code/User"

# Settings
rm -rf "$VSCODE_USER_DIR/settings.json"
ln -s "$DOTFILES/vscode/settings.json" "$VSCODE_USER_DIR/settings.json"

