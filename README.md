# Dotfiles

Personal dotfiles for Git, shell, and Claude Code configuration.

## Quick Start

```bash
git clone https://github.com/thenickreynolds/dotfiles.git ~/git/dotfiles
cd ~/git/dotfiles
./setup.sh
source ~/.zshrc
```

## Structure

```
dotfiles/
├── git/
│   └── .gitconfig      # Git aliases and config
├── shell/
│   ├── .zshrc          # Main shell config
│   ├── aliases.sh      # General aliases
│   └── discord.sh      # Discord-specific (optional)
├── claude/
│   ├── settings.json   # Claude Code settings
│   └── commands/       # Slash commands
└── setup.sh            # Installer
```

## Git Aliases

| Alias | Command | Description |
|-------|---------|-------------|
| `s` | `status -sb` | Short status |
| `l` | `log --oneline --graph` | Pretty log |
| `la` | `log --oneline --graph --all` | Log all branches |
| `br` | `branch -a -v` | List branches |
| `co` | `checkout` | Checkout |
| `cb` | `checkout -b` | Create branch |
| `c` | `commit` | Commit |
| `cm` | `commit -m` | Commit with message |
| `d` | `diff` | Diff |
| `ds` | `diff --staged` | Diff staged |
| `p` | `push` | Push |
| `pl` | `pull` | Pull |
| `aa` | `add --all` | Add all |
| `amend` | `commit --amend --no-edit` | Amend last commit |
| `undo` | `reset HEAD~1 --mixed` | Undo last commit |

## Shell Aliases

| Alias | Command | Description |
|-------|---------|-------------|
| `gn` | `git number --column` | Git number |
| `ga` | `git number add` | Add via git-number |
| `gc` | `git number -c` | Commit via git-number |

## Claude Commands

Add custom slash commands by creating `.md` files in `claude/commands/`.

Example: Create `claude/commands/review.md` to use `/review` in Claude Code.
