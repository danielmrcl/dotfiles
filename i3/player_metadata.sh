#!/bin/bash

while true
do
	sleep 1
	echo "saving metadata in /tmp/player_status"
	playerctl metadata --format "{{ status }}: {{ title }}" > /tmp/player_status
done
