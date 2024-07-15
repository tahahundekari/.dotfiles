#!/bin/sh
. ~/.cache/wal/colors.sh
if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
  echo "%{F#707880}󰂲"
else
  if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]
  then 
    echo "%{F$color1}"
  fi
  echo "%{F$color1}"
fi

