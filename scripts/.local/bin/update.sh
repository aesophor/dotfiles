#!/usr/bin/env bash
# update.sh - Updates the system

# Fetch latest ebuilds.
sudo emerge --sync
sudo layman -S

# Update system and remove unused packages
sudo emerge -avuDN @world
sudo emerge -cv
