# General shell aliases

# Git number shortcuts (requires git-number: https://github.com/hober/git-number)
alias gn='git number --column'
alias ga='git number add'
alias gc='git number -c'

# Git worktree: create with optional name, or --delete to remove current
gwt() {
    if [ "$1" = "--delete" ]; then
      local toplevel=$(git rev-parse --show-toplevel)
      local main_repo=$(git worktree list | head -1 | awk '{print $1}')
      if [ "$toplevel" = "$main_repo" ]; then
        echo "Already in the main worktree, nothing to remove."
        return 1
      fi
      cd "$main_repo" && git worktree remove "$toplevel"
      return
    fi
    local repo=$(basename "$(git rev-parse --show-toplevel)")
    if [ -n "$1" ]; then
      local name="${repo}-$1"
    else
      local name="${repo}-$(awk 'BEGIN{srand()}{lines[NR]=$0}END{for(i=0;i<2;i++){print lines[int(rand()*NR)+1]}}' /usr/share/dict/words | tr '[:upper:]' '[:lower:]' | tr '\n' '-' | sed 's/-$//')"
    fi
    git fetch origin && git worktree add -b "$name" "../$name" origin/main && cd "../$name"
  }
