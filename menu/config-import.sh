#!/bin/bash

# copy config files
sudo cp -r config-files/.config ~/
sudo cp -r config-files/.var ~/

# remove import
rm ~/import.sh

# Change ownership
chown -R $USER: ~/.config/

echo "Imported config files"
