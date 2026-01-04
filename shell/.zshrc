# Nick's zshrc - sourced from dotfiles
# https://github.com/thenickreynolds/dotfiles

DOTFILES_DIR="$(dirname "$(dirname "$(readlink -f "${(%):-%x}")")")"

# Source general aliases
[[ -f "$DOTFILES_DIR/shell/aliases.sh" ]] && source "$DOTFILES_DIR/shell/aliases.sh"

# Source Discord config if it exists (optional)
[[ -f "$DOTFILES_DIR/shell/discord.sh" ]] && source "$DOTFILES_DIR/shell/discord.sh"
