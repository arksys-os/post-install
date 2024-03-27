#! /bin/bash

echo "Start installation of arch packages with pacman"

cd "./pkglist/"

grep -v "^#" arch.txt | xargs sudo pacman -S --noconfirm --needed
# pacman -S --needed - < ./pkglist/arch.txt

echo "\nCongratulations!. Arch packages successfully installed."
