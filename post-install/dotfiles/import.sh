#!/bin/bash

sudo cp -r ../../config-files/* ~/

# Change ownership
chown -R $USER: ~/.config/