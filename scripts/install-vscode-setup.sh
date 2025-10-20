#!/bin/bash

VSCODE_USER_DIR="$HOME/.config/Code/User"

rm -rf "$VSCODE_USER_DIR/settings.json"

ln -sf "$DOTFILES/vscode/settings.json" "$VSCODE_USER_DIR/settings.json"
