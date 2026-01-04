# Fix (Amend Last Commit)

Amend the last commit with currently staged changes.

## Instructions

1. Check `git status` for staged changes
2. If no staged changes, check for unstaged changes and ask user what to include
3. Verify the last commit exists and hasn't been pushed (check `git status` for "ahead of origin")
4. Run `git commit --amend --no-edit` to add staged changes to last commit
5. If the commit was already pushed, warn the user they'll need to force push
6. Show the updated commit with `git log -1`
