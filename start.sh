#!/bin/sh

set -eu

echo "======================================"
echo "       3X-UI Railway Launcher"
echo "       Version: 2.9.4"
echo "======================================"

PANEL_PORT="${PANEL_PORT:-2053}"
SUB_PORT="${SUB_PORT:-2096}"

echo "[INFO] Panel port: ${PANEL_PORT}"
echo "[INFO] Subscription port: ${SUB_PORT}"

# اجرای سرویس اصلی 3X-UI
x-ui start

echo "[INFO] 3X-UI started."

# نگه داشتن کانتینر فعال
while true
do
    sleep 30

    if ! pgrep -f "x-ui" >/dev/null 2>&1; then
        echo "[ERROR] x-ui stopped."
        exit 1
    fi
done