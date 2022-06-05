#!/bin/sh

# Dunst settings
dunst &

# Compton
compton --config ${HOME}/.config/compton/compton.conf -b &

# redshift
redshift -l -23.1128252:-48.9102185 &

# wal
wal -i "${HOME}/wallpapers" -o "${HOME}/.config/scripts/wallpaper.sh" &

exec i3
