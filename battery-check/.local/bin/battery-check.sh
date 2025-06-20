#!usr/bin/env bash

battery_info="/sys/class/power_supply/BAT0/uevent"
power_status=$(grep "STATUS=" "$battery_info" | cut -d "=" -f2)
battery_percentage=$(grep "CAPACITY=" "$battery_info" | cut -d "=" -f2)

battery_limit=15

if [[ "$power_status" == "Discharging" && "$battery_percentage" -le "$battery_limit" ]]; then
    notify-send -u critical "🔋 Battery Low" "Battery is at ${battery_percentage}%"
fi
