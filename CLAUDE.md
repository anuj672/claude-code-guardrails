# DevOps Standards for Claude Code

Claude reads these rules as guidance.
Anything that must never happen is also enforced in .claude/settings.json.

## Style
1. Use 3-space indentation in all files (HCL, YAML, Python, JSON).

## Git
2. Never push to main. Create a feature branch and open a pull request.
3. Never commit without developer approval. Show the diff and a proposed message first.

## Secrets
4. Never hardcode secrets, keys, or connection strings. Use Azure Key Vault references or OIDC.

## Terraform
5. Always run terraform plan and summarize the changes. Never run apply or destroy.
6. Run terraform fmt, terraform validate, and Checkov before proposing Terraform changes.
7. Pin provider and module versions. Never use latest image tags.
8. Never edit state files or run terraform state commands.
9. Tag every resource with env, owner, and cost-center.

## Access
10. Least privilege only: no Owner or Contributor at subscription scope, no wildcard roles.

## Pipelines
11. Pipeline file changes need approval. Pin actions to a commit SHA and use OIDC, never stored credentials.

## Production
12. Production is read-only for the AI. Prod changes go through the pipeline only.