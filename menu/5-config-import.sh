#!/bin/bash

# copy config files
sudo cp -r config-files/.config ~/
sudo cp -r config-files/.var ~/

# remove import
rm ~/import.sh

# Change ownership
sudo chown -R $USER: ~/.config/ ~/.var/

echo "Imported config files"
