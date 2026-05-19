#!/usr/bin/env bash
set -euo pipefail

STACK_PATH="${1:-environments/dev/platform}"
PLAN_FILE="${2:-tfplan}"
terraform -chdir="$STACK_PATH" plan -input=false -out="$PLAN_FILE"
