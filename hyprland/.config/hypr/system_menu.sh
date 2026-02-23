#!/bin/bash

chosen=$(echo -e "Lock\nLogout\nSuspend\nHibernate\nReboot\nShutdown" | rofi -dmenu -i -p "System")

case "$chosen" in
  Lock)
    hyprlock
    ;;
  Logout)
    hyprctl dispatch exit
    ;;
  Suspend)
    hyprlock && systemctl suspend
    ;;
  Hibernate)
    hyprlock && systemctl hibernate
    ;;
  Reboot)
    systemctl reboot
    ;;
  Shutdown)
    systemctl poweroff -i
    ;;
esac

