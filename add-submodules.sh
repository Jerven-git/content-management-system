#!/bin/bash

# Define the submodule SSH URLs and paths
SUBMODULES=(
  "git@bitbucket.org:team_sumomedia/scss-support-backend.git scss-support-backend"
  "git@bitbucket.org:team_sumomedia/scss-support-frontend.git scss-support-frontend"
)

for submodule_info in "${SUBMODULES[@]}"
do
    IFS=' ' read -r -a info <<< "$submodule_info"
    url="${info[0]}"
    path="${info[1]}"

    # Add submodule
    git submodule add "$url" "$path"
done

# Commit changes
git commit -m "Added scss-support submodules"