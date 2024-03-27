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

menu(){
echo -ne "
Select an option:
	$(ColorGreen '1)') Install arch packages
	$(ColorGreen '2)') Install aur packages
	$(ColorGreen '3)') Install flatpak packages
	$(ColorGreen '4)') Install vscode packages
	$(ColorGreen '5)') Import config files
	$(ColorGreen '6)') Export config files

	$(ColorGreen '0)') Exit
$(ColorBlue 'Choose an option:') "
    read choice
    case $choice in
		1) sh menu/1-pacman.sh ; menu ;;
		2) sh menu/2-yay.sh ; menu ;;
		3) sh menu/3-flatpak.sh ; menu ;;
		4) sh menu/4-vscode.sh ; menu ;;
		5) sh menu/5-config-import.sh ; menu ;;
		6) sh menu/6-config-export.sh ; menu ;;
		0) exit 0 ;;
		*) echo -e $red"Wrong option."$clear; WrongCommand;;
	esac
}

# Call the menu function
menu

## Function to handle installation options
# install_menu() {
#     echo -e "\n$(ColorGreen 'Installation Options:')"
#     echo -e "\t$(ColorGreen '1)') Install arch packages"
#     echo -e "\t$(ColorGreen '2)') Install aur packages"
#     echo -e "\t$(ColorGreen '3)') Install flatpak packages"
#     echo -e "\t$(ColorGreen '4)') Install vscode packages"
#     echo -e "\t$(ColorGreen '0)') Back to main menu"
#     echo -ne "$(ColorBlue 'Choose an option:') "
#     read install_choice
#     case $install_choice in
#         1) sh menu/pacman.sh ;;
#         2) sh menu/yay.sh ;;
#         3) sh menu/flatpak.sh ;;
#         4) sh menu/vscode.sh ;;
#         0) return ;;
#         *) echo -e "${red}Wrong option.${clear}" ;;
#     esac
# }

## Function to handle configuration options
# config_menu() {
#     echo -e "\n$(ColorGreen 'Configuration Options:')"
#     echo -e "\t$(ColorGreen '1)') Import config files"
#     echo -e "\t$(ColorGreen '2)') Export config files"
#     echo -e "\t$(ColorGreen '0)') Back to main menu"
#     echo -ne "$(ColorBlue 'Choose an option:') "
#     read config_choice
#     case $config_choice in
#         1) sh menu/config-import.sh ;;
#         2) sh menu/config-export.sh ;;
#         0) return ;;
#         *) echo -e "${red}Wrong option.${clear}" ;;
#     esac
# }

## Main menu function
# main_menu() {
#     while true; do
#         echo -e "\n$(ColorGreen 'Main Menu:')"
#         echo -e "\t$(ColorGreen '1)') Installation"
#         echo -e "\t$(ColorGreen '2)') Configuration"
#         echo -e "\t$(ColorGreen '0)') Exit"
#         echo -ne "$(ColorBlue 'Choose an option:') "
#         read main_choice
#         case $main_choice in
#             1) install_menu ;;
#             2) config_menu ;;
#             0) exit ;;
#             *) echo -e "${red}Wrong option.${clear}" ;;
#         esac
#     done
# }

# Call the main menu function
#main_menu
