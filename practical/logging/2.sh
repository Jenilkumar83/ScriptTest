#!/bin/bash

log_to_syslog() {
    local message="$1"
    local tag="randomly"
    local pid=$$

    logger -p user.info -t "$tag" -i "$pid" "$message"
}

for ((i=1; i<=3; i++)); do
    random_number=$RANDOM
    echo "Random Number $i: $random_number"

    log_to_syslog "Generated random number $i: $random_number"
done
