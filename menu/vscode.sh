#!/bin/bash

# Check if Visual Studio Code is installed
if ! command -v yay &> /dev/null; then
    echo "Error: Visual Studio Code is not installed. Installing..."
    if ! command -v git &> /dev/null; then
        echo "git is required to install yay. Please install git and run this script again."
        exit 1
    fi

    cd && git clone https://aur.archlinux.org/visual-studio-code-bin.git
    cd ~/visual-studio-code-bin && makepkg -si
    # rm -rf ~/visual-studio-code-bin
    echo "visual-studio-code-bin installation complete."

else
    echo "visual-studio-code-bin is already installed"
fi

# Path to the file containing extension names
vscode_pkgs="../list-pkgs/vscode.txt"

# Check if the file exists
if [ ! -f "$vscode_pkgs" ]; then
    echo "Error: $vscode_pkgs not found."
    exit 1
fi

# Read extension names from the file and create a space-separated list
vscode_pkgs_list=$(paste -sd " " "$vscode_pkgs")

# Install all extensions at once
code --install-extension $vscode_pkgs_list

echo "All extensions from $vscode_pkgs installed successfully."
