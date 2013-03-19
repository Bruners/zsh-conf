if [[ "$HOST" == "colargol" ]] then
    _clients=`tmux list-clients`
    _sessions=`tmux list-sessions |grep attached`
    if [[ "$_clients" == "" ]]; then
        [[ "$_sessions" == false ]] \
        && echo "Trying to attach to running tmux" \
        && exec tmux attach
    else
        echo "One client is already connected at"
        echo "  *   $_clients"
    fi
fi
