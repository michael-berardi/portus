#!/bin/bash

# Simple installer for Portus on a new Obsidian Vault
# Usage: ./setup.sh /path/to/your/vault

VAULT_PATH=$1

if [ -z "$VAULT_PATH" ]; then
    echo "Usage: ./setup.sh /path/to/your/vault"
    exit 1
fi

echo "Installing Portus to $VAULT_PATH..."

# Create directories
mkdir -p "$VAULT_PATH/.obsidian/themes/Portus Theme"
mkdir -p "$VAULT_PATH/.obsidian/plugins/portus-kanban"

# Copy files
cp -rv theme/* "$VAULT_PATH/.obsidian/themes/Portus Theme/"
cp -rv plugin/* "$VAULT_PATH/.obsidian/plugins/portus-kanban/"

echo "Done! Restart Obsidian and enable Portus in settings."
