#!/usr/bin/env bash

# Source generated colors.
. "${HOME}/.cache/wal/colors.sh"

# Update dunst to reflect pywall colors
reload_dunst() {
    killall -wq dunst
    dunst \
        -lb "$color0" \
        -nb "$color0" \
        -cb "$color0" \
        -lf "$color15" \
        -bf "$color15" \
        -cf "$color15" \
        -nf "$color15" \
        -fn "${DUNST_FONT:- Roboto 11}" \
        -geometry "${DUNST_SIZES:-300x30-40+70}" &
}

# # Start polybar
set_bar() {
    ${HOME}/.config/polybar/launch.sh 2>/dev/null &
}

main() {
    reload_dunst &
    set_bar &
}

main > /dev/null 2>&1
