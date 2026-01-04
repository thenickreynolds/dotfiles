# Rebase

Fetch from remote and rebase the current branch onto the latest main/master.

## Instructions

1. Run `git fetch origin` to get latest remote changes
2. Determine the default branch (main or master)
3. If currently on the default branch:
   - Run `git rebase origin/<default-branch>`
4. If on a feature branch:
   - First rebase the default branch: `git checkout <default-branch> && git rebase origin/<default-branch>`
   - Then return to the feature branch and rebase: `git checkout <feature-branch> && git rebase <default-branch>`
5. If there are conflicts, stop and inform the user - don't attempt to resolve automatically
6. Report the result (commits pulled, current status)
