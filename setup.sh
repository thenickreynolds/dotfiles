#!/bin/bash
# Dotfiles setup script
# Run this to set up dotfiles on a new machine

set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
BACKUP_DIR="$HOME/.dotfiles-backup-$(date +%Y%m%d-%H%M%S)"

echo "Setting up dotfiles from $DOTFILES_DIR"

# Function to backup and link
backup_and_link() {
    local source="$1"
    local target="$2"

    if [[ -e "$target" && ! -L "$target" ]]; then
        mkdir -p "$BACKUP_DIR"
        echo "  Backing up existing $target"
        mv "$target" "$BACKUP_DIR/"
    fi

    if [[ -L "$target" ]]; then
        rm "$target"
    fi

    ln -s "$source" "$target"
    echo "  Linked $target -> $source"
}

# Git config
echo ""
echo "==> Setting up Git config..."
backup_and_link "$DOTFILES_DIR/git/.gitconfig" "$HOME/.gitconfig"

# Shell config - add source line to .zshrc
echo ""
echo "==> Setting up shell config..."
ZSHRC_SOURCE="source \"$DOTFILES_DIR/shell/.zshrc\""
if [[ -f "$HOME/.zshrc" ]] && grep -qF "$ZSHRC_SOURCE" "$HOME/.zshrc"; then
    echo "  Shell config already sourced in ~/.zshrc"
else
    echo "$ZSHRC_SOURCE" >> "$HOME/.zshrc"
    echo "  Added source line to ~/.zshrc"
fi

# Claude config
echo ""
echo "==> Setting up Claude config..."
mkdir -p "$HOME/.claude"

backup_and_link "$DOTFILES_DIR/claude/settings.json" "$HOME/.claude/settings.json"

# Link commands directory
if [[ -d "$HOME/.claude/commands" && ! -L "$HOME/.claude/commands" ]]; then
    mkdir -p "$BACKUP_DIR"
    echo "  Backing up existing commands directory"
    mv "$HOME/.claude/commands" "$BACKUP_DIR/"
fi
if [[ -L "$HOME/.claude/commands" ]]; then
    rm "$HOME/.claude/commands"
fi
ln -s "$DOTFILES_DIR/claude/commands" "$HOME/.claude/commands"
echo "  Linked ~/.claude/commands -> $DOTFILES_DIR/claude/commands"

# Done
echo ""
echo "==> Setup complete!"
if [[ -d "$BACKUP_DIR" ]]; then
    echo "    Backups saved to: $BACKUP_DIR"
fi
echo ""
echo "Reload your shell or run: source ~/.zshrc"
