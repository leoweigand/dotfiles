# Dotfiles Workflow

When working on dotfiles tasks:

## General principles
- Install tools/apps in all profiles unless explicitly specified otherwise (e.g., "personal only", "work only")

## Simple tasks
1. Make the edits
2. Commit with descriptive message
3. Run `chezmoi apply`
4. DON'T push (user handles this)

## Non-trivial or ambiguous tasks
1. Suggest a plan first
2. Confirm configuration details with user
3. Then proceed as above
