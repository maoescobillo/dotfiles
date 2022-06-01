#!/usr/bin/env bash
choice=$(printf "Lock\nShutdown\nReboot" | rofi -dmenu)
if [[ $choice == "Lock" ]];then
	swaylock
elif [[ $choice == "Shutdown" ]];then
	loginctl poweroff
elif [[ $choice == "Reboot" ]];then
	loginctl reboot
fi
