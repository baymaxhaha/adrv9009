#!/usr/bin/env bash
set -euo pipefail

output="$(./build/app)"
expected="adrv9009: hello, C onboarding!"

if [[ "$output" != "$expected" ]]; then
  echo "smoke test failed"
  echo "expected: $expected"
  echo "actual:   $output"
  exit 1
fi

echo "smoke test passed"
