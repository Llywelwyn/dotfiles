function cron --wraps='systemctl --user list-timers'
    echo
    systemctl --user list-timers
    echo
    echo
    systemctl --user list-unit-files --type=timer
end
