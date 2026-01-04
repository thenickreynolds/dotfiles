# Sync Branch

Pull latest changes, rebase current branch, and push.

## Instructions

1. Fetch all remotes: `git fetch --all`
2. Get the default branch name (main or master)
3. Stash any uncommitted changes if present: `git stash`
4. If on a feature branch:
   - Rebase onto the latest default branch: `git rebase origin/<default-branch>`
5. If on the default branch:
   - Just rebase: `git rebase origin/<default-branch>`
6. Push the current branch (use `--force-with-lease` if rebased)
7. Pop stash if we stashed earlier: `git stash pop`
8. Report status and any conflicts
