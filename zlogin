#[[ $TTY == /dev/tty1 ]] \
#    && (( $UID )) \
#    && [[ -z $DISPLAY ]] \
#    && exec /usr/lib64/systemd/systemd --user
