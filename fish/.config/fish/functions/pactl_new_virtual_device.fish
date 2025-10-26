function pactl_new_virtual_device
    pactl load-module module-null-sink \
        sink_name=audiorelay-speakers \
        sink_properties=device.description=AudioRelay-Speakers
end