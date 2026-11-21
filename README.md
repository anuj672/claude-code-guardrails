# claude-code-guardrails

A governed Claude Code setup for DevOps work: standards the AI follows, rules it cannot break, and skills for repeatable reviews.

## Two layers

| Layer | File | Role |
|---|---|---|
| Guidance | CLAUDE.md | 12 standards: style, git, secrets, Terraform, access, pipelines, prod |
| Enforcement | .claude/settings.json | 9 permission rules enforced by Claude Code itself |

## Permission rules
- Ask (3): git commit, git push, terraform apply
- Deny (6): push to main, force push, terraform destroy, terraform state, read .env*, read *.tfvars

## Skills
| Skill | Does | Never does |
|---|---|---|
| terraform-plan-review | fmt, validate, plan; destroys and risk first | apply |
| pipeline-security-review | flags unpinned actions, broad permissions, stored creds | edit pipelines unasked |
| pre-commit-review | checks diff against standards, proposes message | commit |

## Demo
1. Ask Claude to push to main: refused by guidance, blocked by deny rule.
2. Ask it to read .env: blocked.
3. Ask "review my terraform": skill runs, no apply.

## Limitations
- Deny rules match patterns; variants can slip past. Branch protection on main is the real backstop.
- CLAUDE.md is guidance only.
- Project settings can be overridden locally; org-wide enforcement needs managed settings.

## Roadmap
- Secret-scanning hook (e.g. gitleaks) before commits
- Managed settings for org-wide rules