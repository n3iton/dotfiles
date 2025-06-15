#!/usr/bin/env bash
status=$(pgrep hyprsunset)
if [ -z "$status" ]; then
    echo "☀️"
else
    echo "🌙"
fi
