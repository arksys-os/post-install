#! /bin/bash

# Check if yay is installed
if ! command -v yay &> /dev/null; then
    echo "yay is not installed. Installing..."
    if ! command -v git &> /dev/null; then
        echo "git is required to install yay. Please install git and run this script again."
        exit 1
    fi

    git clone https://aur.archlinux.org/yay.git
    cd ~/yay && makepkg -si
    # rm -rf ~/yay
    echo "yay installation complete."

else
    echo "yay is already installed"
fi

cd "./pkglist/"

echo "Start installation of AUR packages with yay"

# install list of packages execept comments
grep -v "^#" arch.txt | xargs sudo yay -S --noconfirm --needed
# pacman -S --needed - < ./pkglist/aur.txt

echo "\nCongratulations!. AUR packages successfully installed."
