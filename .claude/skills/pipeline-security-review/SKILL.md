---
name: pipeline-security-review
description: Review CI/CD pipeline files for security issues. Use when asked to review, check, or audit GitHub Actions workflows or Jenkinsfiles.
---

# Pipeline security review

1. Find pipeline files in .github/workflows/ and any Jenkinsfile.
2. Check each one for:
   - third-party actions not pinned to a full commit SHA
   - missing or overly broad permissions: block
   - stored cloud credentials instead of OIDC (azure/login with client-secret)
   - secrets echoed or printed into logs
   - pull_request_target used with checkout of untrusted code
3. Report each finding as Blocker, Warning, or OK, with file and line.
4. Suggest the fix for each Blocker. Do not edit pipeline files without approval.