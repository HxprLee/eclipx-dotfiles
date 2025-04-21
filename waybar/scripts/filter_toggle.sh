#!/bin/sh
# This shell script is PUBLIC DOMAIN. You may do whatever you want with it.

TOGGLE=$HOME/.filtertoggle

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    hyprctl hyprsunset temperature 5000
else
    rm $TOGGLE
    hyprctl hyprsunset identity
fi

