#!/bin/sh -e

# Take a screenshot
scrot /tmp/screen_locked.png

# Pixellate it 10x
mogrify -scale 10% -scale 1000% /tmp/screen_locked.png

# Lock screen displaying this image
i3lock -n -i /tmp/screen_locked.png &

# Turn the screen of after a delay
sleep 60; pgrep i3lock && xset dpms force off
