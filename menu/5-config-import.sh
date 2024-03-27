#!/bin/bash

# create directories
sudo mkdir -p ~/.config/{chromium,GIMP,hypr,kitty,mpv,neofetch,nvim,obs-studio,rofi}
sudo mkdir -p ~/.mozilla

# copy config files
sudo cp -r config-files/.config ~/
sudo cp -r config-files/.var ~/

# Change ownership
sudo chown -R $USER: ~/.config/ ~/.var/

echo "Imported config files"
