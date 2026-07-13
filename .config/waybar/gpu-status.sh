#!/usr/bin/bash
mode=$(supergfxctl -g)

if [ "$mode" = "Integrated" ]; then
    echo '{"text": "Integrated", "alt": "integrated", "tooltip": "Battery Mode: NVIDIA is asleep", "class": "integrated"}'
elif [ "$mode" = "Hybrid" ]; then
    echo '{"text": "Hybrid", "alt": "hybrid", "tooltip": "Plugged In: NVIDIA is ready", "class": "hybrid"}'
else
    echo '{"text": "Unknown", "alt": "unknown"}'
fi
