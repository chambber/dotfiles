#!/usr/bin/env bash

# launch polybar if not already running
is_running=$(pgrep -x polybar)

if [[ "$is_running" == "" ]]
then
    polybar -rq top &
fi
