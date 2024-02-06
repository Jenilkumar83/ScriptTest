#!/bin/bash

random_number=$RANDOM

echo "Random Number: $random_number"

logger -p user.info "Generated random number: $random_number"
