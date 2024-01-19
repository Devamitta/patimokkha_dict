#!/bin/bash

echo "------ push_latest_changes"

# Get the current date
current_date=$(date +"%Y-%m-%d")

# Add all changes to the staging area
git add .

# Commit with the desired message format
commit_message="latest changes $current_date"
git commit -m "$commit_message"

# Push the changes to the remote repository (GitHub)
git push


# export VISUAL=xed; crontab -e 