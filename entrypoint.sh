#!/bin/bash
set -x

Xvfb :0 &>/var/log/xvfb.log &
x11vnc -forever -geometry 1024x768 -shared &>/var/log/x11vnc.log &
fluxbox &> /var/log/fluxbox.log &

if [[ -z "${@}" ]]; then
    bash
else
    ${@}
fi
