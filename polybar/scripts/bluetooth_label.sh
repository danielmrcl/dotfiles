#!/bin/bash
if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
  echo "%{F#739DF0}BTH%{F-} %{F#66ffffff}off"
else
  if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]
  then 
    echo "%{F#739DF0}BTH%{F-} idle"
  fi
  echo "%{F#739DF0}BTH%{F-} on"
fi
