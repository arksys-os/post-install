#! /bin/bash

if [[ $(command -v yay) != "/usr/bin/yay" ]]; then
    git clone https://aur.archlinux.org/yay.git
    cd ~/yay && makepkg -si
else
    echo "yay is already installed"
fi

echo "Start installation of AUR packages with yay"

grep -v "^#" ./pkglist/aur.txt | xargs sudo yay -S
# pacman -S --needed - < ./pkglist/aur.txt

echo "done"