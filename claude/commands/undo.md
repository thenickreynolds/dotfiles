# Undo Last Commit

Undo the last commit but keep all changes staged.

## Instructions

1. Verify there's a commit to undo: `git log -1`
2. Check if the commit has been pushed to remote
3. If pushed, warn the user this will require force push later
4. Run `git reset --soft HEAD~1` to undo commit but keep changes staged
5. Show `git status` to confirm changes are now staged
6. Report what was undone
