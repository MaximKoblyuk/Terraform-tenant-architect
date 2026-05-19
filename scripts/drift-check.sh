#!/usr/bin/env bash
set -euo pipefail
terraform plan -detailed-exitcode || rc=$?
if [[ ${rc:-0} -eq 2 ]]; then
  echo "Drift detected"
  exit 2
fi
exit ${rc:-0}
