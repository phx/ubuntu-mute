#!/bin/sh

output="$(amixer set Capture toggle)"

if echo "$output" | grep -q off; then
  echo "$output"
  notify-send 'Mute is ON' ''
else
  echo "$output"
  notify-send 'Mute is OFF' ''
fi
