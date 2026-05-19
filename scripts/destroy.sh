#!/usr/bin/env bash
set -euo pipefail

STACK_PATH="${1:-environments/dev/platform}"
terraform -chdir="$STACK_PATH" destroy -input=false -auto-approve
