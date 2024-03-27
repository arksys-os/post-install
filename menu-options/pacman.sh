#! /bin/bash

echo "Start installation of arch packages with pacman"

#grep -v "^#" ../list-pkgs/arch.txt | xargs sudo pacman -S --noconfirm --needed
sudo pacman -S --noconfirm --needed - < ../list-pkgs/arch.txt

echo "\nCongratulations!. Arch packages successfully installed."
