#!/usr/bin/env bash
# sysupdate.sh - Update the system

# Fetch latest ebuilds.
sudo emerge --sync
sudo layman -S

# Update system and remove unused packages
sudo emerge -avuDN @world
sudo emerge -ac
