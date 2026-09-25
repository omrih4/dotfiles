#!/bin/bash

set +e

systemctl --user restart xdg-desktop-portal &

/usr/lib/xdg-desktop-portal-wlr  >/dev/null 2>&1 &

mangobar>/dev/null 2>&1 &

swaybg -i ~/.config/mango/wallpaper/wallpaper.png >/dev/null 2>&1 &

# clipboard
wl-clip-persist --clipboard regular --reconnect-tries 0 >/dev/null 2>&1 &
wl-paste --type text --watch cliphist store >/dev/null 2>&1 &
wl-paste --type image --watch cliphist store >/dev/null 2>&1 &

# bluetooth 
blueman-applet >/dev/null 2>&1 &

# network
nm-applet >/dev/null 2>&1 &
