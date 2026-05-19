#!/usr/bin/env bash
set -euo pipefail

STACK_PATH="${1:-environments/dev/platform}"

if [[ "${CONFIRM_DESTROY:-}" != "yes" ]]; then
  echo "Refusing destroy without explicit confirmation. Set CONFIRM_DESTROY=yes to continue."
  exit 1
fi

terraform -chdir="$STACK_PATH" destroy -input=false -auto-approve
