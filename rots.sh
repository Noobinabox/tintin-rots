#!/bin/bash

set -euo pipefail

# Initialize variables
cur=""
session=""
tmux_conf=""

# Load config
source "$(dirname "${BASH_SOURCE[0]}")/lib/config.sh"

# Ensure tintin and tmux are installed
if ! which tt++ > /dev/null 2>&1; then
	echo "TinTin++ must be installed." 1>&2
	exit 1
fi

if ! which tmux > /dev/null 2>&1; then
	echo "tmux must be installed." 1>&2
	exit 1
fi

function tm {
	tmux -f "$tmux_conf" "$@"
}

st -e "${cur}/lib/map.sh" &

# Start the tmux session
tm kill-session -t "$session" > /dev/null 2>&1 || true
tm new-session -d -s "$session" "${cur}/lib/tintin.sh"
tm split-window -v -l 10 -b -t "$session" "${cur}/lib/chat.sh"
tm select-pane -t 0
tm -2 attach-session -t "$session"


# tt++ main.tin
