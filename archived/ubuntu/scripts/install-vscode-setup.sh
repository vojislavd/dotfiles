#!/bin/bash

VSCODE_USER_DIR="$HOME/.config/Code/User"

# Settings
rm -rf "$VSCODE_USER_DIR/settings.json"
ln -sf "$DOTFILES/vscode/settings.json" "$VSCODE_USER_DIR/settings.json"

# Snippets
rm -rf "$VSCODE_USER_DIR/snippets/php.json"
ln -sf "$DOTFILES/vscode/snippets/php.json" "$VSCODE_USER_DIR/snippets/php.json"
