# Cleanup Merged Branches

Delete local branches that have been merged into the default branch.

## Instructions

1. Fetch and prune remote references: `git fetch --prune`
2. Determine the default branch (main or master)
3. Switch to the default branch if not already on it
4. Find merged branches: `git branch --merged` (excluding current branch and default branch)
5. Delete each merged branch without confirmation: `git branch -d <branch>`
6. Also clean up remote tracking branches that no longer exist
7. Report which branches were deleted and how many
