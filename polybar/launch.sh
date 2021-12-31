#!/usr/bin/bash
MODULES="i3 xwindow time volume"

killall -q polybar

for m in $(polybar -m | cut -d ":" -f1); do
	for d in $MODULES; do
		MONITOR=$m polybar -r $d &
	done
done
