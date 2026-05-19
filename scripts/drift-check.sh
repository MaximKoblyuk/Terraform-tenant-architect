#!/usr/bin/env bash
set -euo pipefail

STACK_PATH="${1:-environments/dev/platform}"
terraform -chdir="$STACK_PATH" plan -detailed-exitcode || EXIT_CODE=$?

if [[ "${EXIT_CODE:-0}" -eq 2 ]]; then
  echo "Drift detected"
  exit 2
fi

echo "No drift detected"
