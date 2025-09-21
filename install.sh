#!/bin/bash
# Symlink or source custom rc files

# Bashrc
CUSTOM_BASH="$HOME/dotfiles/bashrc_custom"
if ! grep -q "$CUSTOM_BASH" "$HOME/.bashrc"; then
    echo "source $CUSTOM_BASH" >> "$HOME/.bashrc"
fi

# Vimrc
CUSTOM_VIM="$HOME/dotfiles/vimrc_custom"
if ! grep -q "$CUSTOM_VIM" "$HOME/.vimrc"; then
    echo "source $CUSTOM_VIM" >> "$HOME/.vimrc"
fi

echo "Dotfiles installed!"

