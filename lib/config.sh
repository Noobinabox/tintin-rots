#!/bin/bash

set -euo pipefail

cur="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

session="${MUD_SESSION-tintin}"
log_dir="${cur}/logs"
chat_log="${log_dir}/social.log"
main_tin="${cur}/commands/main.tin"
tmux_conf="${cur}/tmux.conf"
map_dir="${cur}/maps"
map_file="${cur}/maps/arda.map"
map_size="${cur}/commands/map/map_size.tin"
map_refresh_rate=.25

# Echo the config
[[ $0 != "$BASH_SOURCE" ]] || cat << EOF
cur="${cur}"
session="${session}"
log_dir="${log_dir}"
chat_log="${chat_log}"
main_tin="${main_tin}"
tmux_conf="${tmux_conf}"
map_dir="${map_dir}"
map_file="${map_file}"
map_size="${map_size}"
map_refresh_rate="${.25}"
EOF
