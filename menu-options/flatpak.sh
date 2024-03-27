#!/bin/bash

# Check if Flatpak is installed
if ! command -v flatpak &> /dev/null; then
    echo "Flatpak is not installed. Installing..."
    sudo pacman -S flatpak

    # Add Flatpak repository
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

    echo "Flatpak installation complete."
else
    echo "Flatpak is already installed."
fi

echo "Start installation of flatpak packages"

# install list of packages execept comments
grep -v '^#' ../list-pkgs/flatpak.txt | xargs -r -I '{}' flatpak install -y '{}'

echo "\nCongratulation!. Flatpak packages successfully installed."
