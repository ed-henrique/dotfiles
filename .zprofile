#!/bin/bash

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec Hyprland
fi
export DOCKER_HOST=unix:///run/user/1000/docker.sock
