#!/bin/bash

get_batt() {
    cat /sys/class/power_supply/BAT1/capacity 
}

batiri() {
    local icon=("󰁺" "󰁺" "󰁻" "󰁼" "󰁽" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹")
    local index=$(( $1 / 10 ))
    echo Battery: $1% "${icon[$index]}"
} 


cap=$(< /sys/class/power_supply/BAT1/capacity)
batiri "$cap"

