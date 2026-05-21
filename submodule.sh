#!/bin/bash

# Check if the submodule directory exists
if [ -d "submodule" ]; then
    echo "Submodule directory exists. Updating submodule..."
    git submodule update --remote --merge
else
    echo "Submodule directory does not exist. Initializing and updating submodule..."
    git submodule update --init --recursive 
fi
