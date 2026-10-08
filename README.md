# Terraform Infrastructure

This repository contains Terraform code for managing our cloud infrastructure and different architecture implementations.

## Before You Start

1. **Clone the repository**
   ```bash
   git clone <REPOSITORY_URL>
   cd <REPOSITORY_NAME>
   ```

2. **Create your own branch**
   ```bash
   git checkout -b feature/your-name
   ```

   **Do not work directly on `main`.**

3. **Understand the existing architecture**
   - Check the `README.md`
   - Review the existing Terraform files and modules
   - Understand what infrastructure is already deployed before making changes.

## Making Changes

After making your Terraform changes, run:

```bash
terraform fmt
terraform init
terraform validate
terraform plan
```

Make sure there are no errors and review the Terraform plan carefully.

## Push Your Changes

```bash
git add .
git commit -m "Add/update <your change>"
git push origin feature/your-name
```

Then create a **Pull Request (PR)** to `main`.

## Pull Request Process

Your PR will automatically run Terraform checks:

- Terraform Format
- Terraform Validate
- Terraform Plan

Do **not merge your PR if the checks fail.**

After the checks pass:

```text
Your Branch
    ↓
Push Code
    ↓
Create PR
    ↓
CI Checks
    ↓
Code Review
    ↓
Approval
    ↓
Merge → main
```

## Important Rules

- ❌ Do not push directly to `main`.
- ❌ Do not run `terraform apply` on production without approval.
- ❌ Do not commit `.tfstate` files.
- ❌ Do not commit cloud credentials, access keys, or secrets.
- ✅ Always work on your own branch.
- ✅ Always run `terraform plan` before creating a PR.
- ✅ Review existing infrastructure before modifying it.
- ✅ Keep changes small and clearly documented.

**If you are unsure about a change, ask the infrastructure team before applying it.**
