#!/bin/bash

# change the directory name of the config files
$export_dir =  ~/exported_config

# create export directory if it doesn't exist
sudo mkdir -p $export_dir/.config/{chromium,GIMP,hypr,kitty,mpv,neofetch,nvim,obs-studio,rofi}
sudo mkdir -p $export_dir/.mozilla

# copy the config files
cp -r ~/.config/{chromium,GIMP,hypr,kitty,mpv,neofetch,nvim,obs-studio,rofi} $export_dir/.config
cp -r ~/.mozilla $export_dir/.mozilla

echo "Exported config files to ${export_dir}"