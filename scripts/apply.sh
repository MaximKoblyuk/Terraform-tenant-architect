#!/usr/bin/env bash
set -euo pipefail

if [[ ! -f tfplan ]]; then
  echo "tfplan file not found. Run scripts/plan.sh first."
  exit 1
fi

terraform apply tfplan
