#!/bin/bash

# Check if any directories are passed as arguments
if [ $# -eq 0 ]; then
    # No arguments, list the current directory
    dir="."
else
    # Loop through all provided directories
    for dir in "$@"; do
        # Check if the directory exists
        if [ -d "$dir" ]; then
            echo "Contents of $dir:"
            # Loop through the directory and print its contents
            for item in "$dir"/*; do
                # Check if the item exists (in case directory is empty)
                if [ -e "$item" ]; then
                    echo "$item"
                fi
            done
        else
            echo "Directory $dir does not exist"
        fi
        echo
    done
fi
