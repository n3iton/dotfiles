#!/usr/bin/env bash
if pgrep hyprsunset > /dev/null; then
    pkill hyprsunset
else
    hyprsunset &
fi
