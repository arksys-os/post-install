#!/bin/bash

##
# Color Variables
##
green='\e[32m'
blue='\e[34m'
clear='\e[0m'

##
# Color Functions
##

ColorGreen(){
    echo -ne $green$1$clear
}

ColorBlue(){
    echo -ne $blue$1$clear
}

# Function to handle installation options
install_menu() {
    echo -e "\n$(ColorGreen 'Installation Options:')"
    echo -e "\t$(ColorGreen '1)') Install arch packages"
    echo -e "\t$(ColorGreen '2)') Install aur packages"
    echo -e "\t$(ColorGreen '3)') Install flatpak packages"
    echo -e "\t$(ColorGreen '4)') Install vscode packages"
    echo -e "\t$(ColorGreen '0)') Back to main menu"
    echo -ne "$(ColorBlue 'Choose an option:') "
    read install_choice
    case $install_choice in
        1) sh menu-options/pacman.sh ;;
        2) sh menu-options/yay.sh ;;
        3) sh menu-options/flatpak.sh ;;
        4) sh menu-options/vscode.sh ;;
        0) return ;;
        *) echo -e "${red}Wrong option.${clear}" ;;
    esac
}

# Function to handle configuration options
config_menu() {
    echo -e "\n$(ColorGreen 'Configuration Options:')"
    echo -e "\t$(ColorGreen '1)') Import config files"
    echo -e "\t$(ColorGreen '2)') Export config files"
    echo -e "\t$(ColorGreen '0)') Back to main menu"
    echo -ne "$(ColorBlue 'Choose an option:') "
    read config_choice
    case $config_choice in
        1) sh menu-options/config-import.sh ;;
        2) sh menu-options/config-export.sh ;;
        0) return ;;
        *) echo -e "${red}Wrong option.${clear}" ;;
    esac
}

# Main menu function
main_menu() {
    while true; do
        echo -e "\n$(ColorGreen 'Main Menu:')"
        echo -e "\t$(ColorGreen '1)') Installation"
        echo -e "\t$(ColorGreen '2)') Configuration"
        echo -e "\t$(ColorGreen '0)') Exit"
        echo -ne "$(ColorBlue 'Choose an option:') "
        read main_choice
        case $main_choice in
            1) install_menu ;;
            2) config_menu ;;
            0) exit ;;
            *) echo -e "${red}Wrong option.${clear}" ;;
        esac
    done
}

# Call the main menu function
main_menu
