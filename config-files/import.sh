#!/bin/bash

# copy all content of config-files dir
sudo cp -r ./config-files/* ~/

# remove import
rm ~/import.sh

# Change ownership
chown -R $USER: ~/.config/