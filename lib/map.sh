#!/usr/bin/env bash

map_dir=""
map_file=""
map_size=""
map_refresh_rate=""

source "$(dirname "${BASH_SOURCE[0]}")/config.sh"

#MAP_FILE='arda.map'
#MAP_SIZE='map_size.tin'
#REFRESH_RATE=.25

mkdir -p "$map_dir"

while [ "true" ]; do
	echo \#var MAP_ROWS $(tput cols / 2)\; > $map_size
	echo \#var MAP_LINES $(tput lines / 2)\; >> $map_size
	clear
	cat $map_file
	sleep $map_refresh_rate
done

