#!/usr/bin/env bash
set -euo pipefail

# Intentionally requires interactive confirmation for safer teardown.
terraform destroy
