#!/bin/bash

echo "Forcefully removing Firefox from your system..."

# Step 1: Remove Firefox using apt
echo "Removing Firefox with apt..."
sudo apt-get purge --auto-remove -y firefox

# Step 2: Remove Snap version if installed
if command -v snap &> /dev/null; then
    echo "Removing Snap version of Firefox (if installed)..."
    sudo snap remove --purge firefox
    rm -rf ~/snap/firefox
fi

# Step 3: Remove residual files from user directories
echo "Removing residual user configuration and cache files..."
rm -rf ~/.mozilla
rm -rf ~/.cache/mozilla
rm -rf ~/snap/firefox

# Step 4: Remove system-wide configurations
echo "Removing system-wide configuration files..."
sudo rm -rf /etc/firefox
sudo rm -rf /usr/lib/firefox
sudo rm -rf /usr/lib/firefox-addons

# Step 5: Remove menu entries and application launchers
echo "Removing Firefox from application menus..."
sudo find /usr/share/applications -name "firefox*.desktop" -exec rm -f {} \;
sudo find /usr/share/applications -name "*Firefox*" -exec rm -f {} \;
sudo find /usr/share/icons -name "*firefox*" -exec rm -rf {} \;

# Step 6: Clean package cache
echo "Cleaning up package cache..."
sudo apt-get autoremove --purge -y
sudo apt-get clean

# Final check
if command -v firefox &> /dev/null; then
    echo "Firefox is still detected. Manual cleanup may be required."
else
    echo "Firefox has been completely removed from your system."
fi

echo "Done!"
