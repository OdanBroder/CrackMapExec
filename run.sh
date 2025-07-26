#!/bin/bash

cme_path="$HOME/.CrackMapExec"
current_directory=$(pwd)
cme_cmd="poetry run crackmapexec"

# Go to CrackMapExec folder
cd "$cme_path" || exit 1

# Execute CME with any arguments passed
$cme_cmd "$@"

# Return to previous directory
cd "$current_directory" || exit 1
