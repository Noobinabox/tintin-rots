#!/bin/bash

set -euo pipefail

cur=""
main_tin=""
session=""

source "$(dirname "${BASH_SOURCE[0]}")/config.sh"

cd "$cur"

tt++ "${main_tin}"

tmux kill-session -t "$session"
