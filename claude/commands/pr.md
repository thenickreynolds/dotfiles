# Create Pull Request

Commit current changes, push to remote, create a PR, and open it in the browser.

## Instructions

1. Check `git status` for changes
2. If there are uncommitted changes:
   - Stage all changes with `git add --all`
   - Create a commit with a descriptive message based on the changes
3. Push the branch to origin (use `git push -u origin HEAD` if no upstream)
4. Create a PR using `gh pr create`:
   - Generate a title from the branch name or recent commits
   - Write a summary of changes for the body
   - Use `--fill` if appropriate, or construct title/body manually
5. Open the PR URL in the browser with `open <url>` (macOS)
6. Report the PR URL to the user

## Notes

- If already on main/master, warn the user and don't create a PR
- If a PR already exists for this branch, just open the existing one with `gh pr view --web`
