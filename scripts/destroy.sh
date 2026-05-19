#!/usr/bin/env bash
set -euo pipefail

# Local-use script: keeps interactive confirmation enabled for safer teardown.
# CI/CD pipelines should use an explicit plan/approval flow before destroy.
terraform destroy
