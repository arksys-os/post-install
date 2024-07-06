#!/bin/bash

##
# Color Variables
##
GREEN='\e[32m'
BLUE='\e[34m'
RED='\e[31m'
CLEAR='\e[0m'

##
# Color Functions
##
color_green() {
    echo -ne "${GREEN}$1${CLEAR}"
}

color_blue() {
    echo -ne "${BLUE}$1${CLEAR}"
}

color_red() {
    echo -ne "${RED}$1${CLEAR}"
}

##
# Menu Function
##
menu() {
    echo -ne "
Select an option:
    $(color_green '1)') Install Arch packages
    $(color_green '2)') Install AUR packages
    $(color_green '3)') Install Flatpak packages
    $(color_green '4)') Install VS Code packages

    $(color_green '0)') Exit
$(color_blue 'Choose an option:') "
    read -r choice
    case $choice in
        1) sh menu/1-pacman.sh; menu ;;
        2) sh menu/2-yay.sh; menu ;;
        3) sh menu/3-flatpak.sh; menu ;;
        4) sh menu/4-vscode.sh; menu ;;
        0) exit 0 ;;
        *) echo -e "$(color_red 'Wrong option.')" ; menu ;;
    esac
}

# Call the menu function
menu
