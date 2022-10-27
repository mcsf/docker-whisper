#!/bin/sh

set -e

case "$1" in
	bash|sh|whisper)
		exec $*
esac

if [ $# -lt 1 ] || [ $# -gt 2 ]
then
	echo "Usage: $0 URL [DEST. FILE]"
	echo "       $0 FILE"
	exit 2
fi

if [ -f "$1" ]
then
	file="$1"
else
	if [ -z "$2" ]
	then
		file=$(curl -OJsL "$1" -w "%{filename_effective}")
	else
		file="$2"
		curl -so "$file" "$1"
	fi
fi

whisper -o "$(dirname "$file")" "$file"
