---
name: pre-commit-review
description: Review staged changes against team standards before a commit. Use when asked to review, check, or prepare changes for commit.
---

# Pre-commit review

1. Run git diff --staged. If nothing is staged, run git diff and say so.
2. Check the diff against CLAUDE.md:
   - 3-space indentation
   - no hardcoded secrets, keys, or connection strings
   - pinned versions, no latest tags
   - resource tags present (env, owner, cost-center)
3. Report findings as Blocker, Warning, or OK, with file and line.
4. Propose a commit message.
5. Stop. Do not commit until the developer approves.