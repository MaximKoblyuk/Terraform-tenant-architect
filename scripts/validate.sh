#!/usr/bin/env bash
set -euo pipefail

STACK_PATH="${1:-environments/dev/platform}"
terraform -chdir="$STACK_PATH" fmt -recursive
terraform -chdir="$STACK_PATH" validate
