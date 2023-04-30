#! /bin/bash

echo "Start installation of flatpak packages with flatpak"

# grep -v "^#" ./pkglist/flatpak.txt | xargs sudo flatpak -S
# cat ./pkglist/flatpak.txt | xargs sudo flatpak install
pacman -S --needed - < ./pkglist/flatpak.txt

echo "done"
