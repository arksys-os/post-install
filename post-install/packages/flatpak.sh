#! /bin/bash

echo "Start installation of flathub packages with flatpak"

grep -v "^#" ./pkglist/flatpak.txt | xargs sudo flatpak -S
# flatpak install - < ./pkglist/flatpak.txt

echo "done"
