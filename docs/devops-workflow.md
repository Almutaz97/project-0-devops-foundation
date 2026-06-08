# DevOps Workflow Discipline

## Goal

Practice a clean and repeatable workflow for infrastructure and application changes.

## Standard Workflow

1. Start from a clean main branch.
2. Create a dedicated branch for each change.
3. Make a small, focused change.
4. Verify the change locally.
5. Commit with a clear message.
6. Push the branch to GitHub.
7. Merge only after review or verification.

## Important Rules

- Do not make unrelated changes in one commit.
- Do not commit secrets, private keys, or local environment files.
- Always check `git status` before and after changes.
- Keep the repository understandable for another engineer.
- Documentation is part of the project, not an extra task.

## Current Project Rule

Project 0 is used to build the foundation for all future DevOps projects.
