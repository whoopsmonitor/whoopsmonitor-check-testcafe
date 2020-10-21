#!/bin/sh

set -euo pipefail

TEST_DIR="/${WM_WORKER_DIR}/$WM_CHECK_ID"

sh "$WM_ORIGINAL_ENTRYPOINT" "$WM_BROWSER" "$TEST_DIR" --skip-js-errors
