#!/bin/bash

EXT_LIST="$HOME/dotfiles/vscode/vscode-extensions.list"

echo "Setup: VS Code Extension Installer"
echo "----------------------------------"

if ! command -v code &> /dev/null; then
    echo "Error: VS Code 'code' command not found."
    exit 1
fi

if [ ! -f "$EXT_LIST" ]; then
    echo "Error: Extension list not found at $EXT_LIST"
    exit 1
fi

echo "Reading extensions from: $EXT_LIST"
echo "Installing..."

while IFS= read -r ext || [ -n "$ext" ]; do
    # Skip empty lines or comments
    [[ -z "$ext" || "$ext" =~ ^# ]] && continue
    
    code --install-extension "$ext" --force
    
done < "$EXT_LIST"

echo "----------------------------------"
echo "Success! All VS Code extensions installed."
