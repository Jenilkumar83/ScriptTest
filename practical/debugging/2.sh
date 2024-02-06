#!/bin/bash

# Display commands and their expansions/substitutions
set -x

# First ls command (succeeds)
ls -l

# Second ls command (fails, but script continues)
ls non-existent-directory || true

# Third ls command (succeeds)
ls -a

# Rest of the script
echo "Script completed successfully"
