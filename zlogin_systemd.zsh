# Spawn systemd user-session on login if tty1 and display variable is not set
[[ $TTY == /dev/tty1 ]] \
    && (( $UID )) \
    && [[ -z $DISPLAY ]] \
    && /usr/bin/systemctl --user set-environment XDG_VTNR=$XDG_VTNR \
    && exec /usr/bin/systemctl start user-session@$UID.service
