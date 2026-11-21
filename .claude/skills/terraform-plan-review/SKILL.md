---
name: terraform-plan-review
description: Run terraform plan in infra/ and summarize changes and risk for human review. Use when asked to review, check, or plan Terraform changes.
---

# Terraform plan review

1. In infra/, run terraform fmt -check and terraform validate. Stop and report if either fails.
2. Run terraform plan -out=tfplan, then terraform show -no-color tfplan.
3. Summarize:
   - counts to add / change / destroy
   - any destroy or replace, listed first
   - changes to Key Vault, RBAC, network or firewall rules
   - missing tags (env, owner, cost-center)
4. Give a risk rating: Low, Medium, or High, with a one-line reason.
5. Never run terraform apply.