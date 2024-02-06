#!/bin/bash

# Exit on error
set -e

# Display commands and their expansions/substitutions
set -x

# First ls command (succeeds)
ls -l

# Second ls command (fails)
ls non-existent-directory

# Third ls command (should not be executed if the script reaches here)
ls -a

# Rest of the script
echo "Script completed successfully"
