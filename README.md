# Terraform-tenant-architect

Production-grade Azure-focused Terraform scaffold for landing zones, shared services, and workload environments.

## Structure

```text
terraform-azure-platform/
├── environments/
│   ├── dev/
│   │   ├── platform/
│   │   ├── shared-services/
│   │   └── workloads/
│   ├── test/
│   ├── staging/
│   └── prod/
├── modules/
│   ├── resource-group/
│   └── virtual-network/
├── policies/
├── scripts/
├── pipelines/
├── global/
├── docs/
└── README.md
```

## Azure Provider Baseline

Defined in `global/versions.tf` with:
- Terraform `~> 1.8`
- `azurerm ~> 4.0`
- `azuread ~> 3.0`
- `azapi ~> 2.0`

## Remote State

Each stack uses an `azurerm` backend in its own `backend.tf`.
Use isolated state keys per domain, for example:
- `networking-prod.tfstate`
- `security-prod.tfstate`
- `platform-prod.tfstate`
- `aks-prod.tfstate`
- `shared-services-prod.tfstate`

## Quick Start

```bash
./scripts/init.sh environments/dev/platform
./scripts/validate.sh environments/dev/platform
./scripts/plan.sh environments/dev/platform
```

## Security Baseline

- Use Managed Identity for CI/CD authentication.
- Store secrets in Key Vault.
- Use RBAC and least privilege.
- Enforce Azure Policy.
- Prefer private endpoints and deny public access where possible.

## Suggested Landing Zone Deployment Order

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
