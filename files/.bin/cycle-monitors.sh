#!/bin/bash
EXTERNAL_RIGHT="DP1"
EXTERNAL_LEFT="HDMI2"
INTERNAL_OUTPUT="eDP1"

STATE_FILE='/tmp/display-state'

# if we don't have a file, start at zero
if [ ! -f "$STATE_FILE" ] ; then
  monitor_mode="internal"

# otherwise read the value from the file
else
  monitor_mode=`cat "$STATE_FILE"`
fi

if [ $monitor_mode = "internal" ]; then
        monitor_mode="external"
        xrandr \
            --output $INTERNAL_OUTPUT --off \
            --output $EXTERNAL_RIGHT --auto \
            --output $EXTERNAL_LEFT --auto --right-of $EXTERNAL_RIGHT
else
        monitor_mode="internal"
        xrandr \
            --output $INTERNAL_OUTPUT --auto \
            --output $EXTERNAL_RIGHT --off \
            --output $EXTERNAL_LEFT --off
fi

echo "${monitor_mode}" > "$STATE_FILE"
