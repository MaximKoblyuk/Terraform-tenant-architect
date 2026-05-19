# Terraform Azure Platform Template

Production-grade Azure-focused Terraform scaffold for landing zones, shared services, and workload environments.

## Structure

- `environments/`: environment-specific root modules (`dev`, `test`, `staging`, `prod`)
- `modules/`: reusable Azure infrastructure modules
- `policies/`: Azure Policy and initiative definitions
- `scripts/`: helper scripts for Terraform lifecycle operations
- `pipelines/`: Azure DevOps and GitHub Actions templates
- `global/`: global provider/version/naming/tag conventions
- `docs/`: architecture and operations documentation

## Quick start

```bash
cd environments/dev/platform
cp terraform.tfvars.example terraform.tfvars
terraform init
terraform plan
```

## Security baseline

- Use managed identity / OIDC for CI auth.
- Store secrets in Key Vault.
- Prefer private endpoints and deny public access where possible.
- Do not commit `terraform.tfvars` files.
- Enforce Azure Policy, RBAC, NSG/Firewall segmentation.

## Recommended deployment order

1. Management groups
2. Policies
3. Subscriptions
4. RBAC
5. Hub networking
6. DNS
7. Firewall
8. Shared services
9. Monitoring
10. Identity integrations
11. Workload environments
12. Application deployments
