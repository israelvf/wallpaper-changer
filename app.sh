#!/bin/sh

DIR=$HOME/.wallpapers/
DELAY=300

while [ 1 ]; do
  ls "$DIR" | sort -R | tail - $N | while read FILE; do
    feh --bg-scale "$DIR$FILE";
    sleep "$DELAY";
  done
done
