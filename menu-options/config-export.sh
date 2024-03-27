#!/bin/bash

# change the directory name of the config files
$export_dir =  ~/exported_config

# create export directory if it doesn't exist
mkdir -p $export_dir/.config

# copy the config files
cp -r ~/.config/{chromium,GIMP,hypr,kitty,mpv,neofetch,nvim,obs-studio,rofi} $export_dir/.config
cp -r ~/.mozilla $export_dir/.mozilla

echo "Exported config files to ${export_dir}"