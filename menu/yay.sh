#! /bin/bash

# Check if yay is installed
if ! command -v yay &> /dev/null; then
    echo "Error: yay is not installed. Installing..."
    if ! command -v git &> /dev/null; then
        echo "git is required to install yay. Please install git and run this script again."
        exit 1
    fi

    cd && git clone https://aur.archlinux.org/yay.git
    cd ~/yay && makepkg -si
    # rm -rf ~/yay
    echo "yay installation complete."

else
    echo "yay is already installed"
fi

echo "Start installation of AUR packages with yay"

# Install list of packages except comments, executed from menu.sh path
# grep -v "^#" list-pkgs/aur.txt | xargs sudo yay -S --noconfirm --needed
sudo pacman -S --needed - < list-pkgs/aur.txt

echo "\nCongratulations!. AUR packages successfully installed."
