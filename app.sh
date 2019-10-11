#!/bin/sh

DIR=$HOME/Pictures/Wallpapers/
DELAY=300

while [ 1 ]; do
  ls "$DIR" | sort -R | tail - $N | while read FILE; do
    gsettings set org.gnome.desktop.background picture-uri file://"$DIR$FILE";
    sleep "$DELAY";
  done
done
