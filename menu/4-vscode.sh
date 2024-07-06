#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" &> /dev/null
}

# Check if Visual Studio Code is installed
if ! command_exists code; then
    echo "Error: Visual Studio Code is not installed. Installing..."

    # Check if git is installed
    if ! command_exists git; then
        echo "Error: git is required to install Visual Studio Code. Please install git first."
        exit 1
    fi

    # Install Visual Studio Code from AUR
    cd ~ || exit
    if ! git clone https://aur.archlinux.org/visual-studio-code-bin.git; then
        echo "Error: Failed to clone visual-studio-code-bin repository."
        exit 1
    fi

    cd visual-studio-code-bin || exit
    if ! makepkg -si; then
        echo "Error: Failed to install Visual Studio Code."
        exit 1
    fi

    echo "Visual Studio Code installation complete."
else
    echo "Visual Studio Code is already installed."
fi

# Path to the file containing extension names
vscode_pkgs="list-pkgs/vscode.txt"

# Check if the file exists
if [ ! -f "$vscode_pkgs" ]; then
    echo "Error: $vscode_pkgs not found."
    exit 1
fi

# Read extension names from the file and install them
while IFS= read -r extension || [ -n "$extension" ]; do
    if ! code --install-extension "$extension"; then
        echo "Error: Failed to install extension $extension"
    else
        echo "Installed extension $extension successfully"
    fi
done < "$vscode_pkgs"

echo "All extensions from $vscode_pkgs installed successfully."
