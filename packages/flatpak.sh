#!/bin/bash

echo "Start installation of packages from flathub with flatpak"

cd "$(dirname "$0")/pkglist"

# only for lines with packages in flatpak.txt, without blank spaces and special symbols
# xargs -r -a flatpak.txt flatpak install -y

grep -v '^#' flatpak.txt | xargs -r -I '{}' flatpak install -y '{}'

echo "\nFlatpak packages installed"
