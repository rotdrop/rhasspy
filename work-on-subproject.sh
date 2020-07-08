#!/bin/bash
PAYLOAD="$@"

for i in rhasspy-*; do
    (
	cd $i
	echo "Processing $i"
	test -f .git || { echo "Not a sub-project"; exit; }
	eval "$PAYLOAD"
	echo
    )
done

