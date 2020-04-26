#!/bin/bash

set -euo pipefail

log_dir=""
chat_log=""

source "$(dirname "${BASH_SOURCE[0]}")/config.sh"

mkdir -p "$log_dir"

touch "$chat_log"

tail -Fs1 "$chat_log"
