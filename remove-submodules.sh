#!/bin/bash

# Define the paths to the submodules
SUBMODULES=("all-parties-frontend" "all-parties-backend")

for submodule in "${SUBMODULES[@]}"
do
    # Remove submodule
    git submodule deinit -f "$submodule"
    git rm -f "$submodule"
    rm -rf ".git/modules/$submodule"
done

# Commit changes
git commit -m "Removed submodules"