#!/bin/sh
MAX_TRY=5
REGION="tokyo" # wttr.in region (city / area name)

i=0
while [ "$i" -lt "$MAX_TRY" ]; do
	if WTTR=$(curl -s "https://wttr.in/$REGION?format=%c:%t(%f)+|+💨:%w+|+☔:%p+|+%m" | awk '{ if (match($0, /([0-9]+)km\/h/, wind)) { ms = wind[1] / 3.6; gsub(/[0-9]+km\/h/, sprintf("%.1fm/s", ms)); } $1=$1; print; }'); then
    break
  fi
  i=$((i+1))
  sleep 2
done

echo "%{T2}$WTTR%{T0}" # Output Format
