#!/usr/bin/bash
MODULES="i3 xwindow time volume moonphase"

killall -q polybar

for m in $(polybar -m | cut -d ":" -f1); do
	for d in $MODULES; do
		MONITOR=$m polybar -l info -r $d &
	done
done

MONITOR=DisplayPort-0 polybar -r tray
