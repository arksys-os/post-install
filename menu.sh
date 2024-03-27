#!/bin/bash

##
# Color  Variables
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
		1) sh menu-options/pacman.sh ; menu ;;
		2) sh menu-options/yay.sh ; menu ;;
		3) sh menu-options/flatpak.sh ; menu ;;
		4) sh menu-options/vscode.sh ; menu ;;
		5) sh menu-options/config-import.sh ; menu ;;
		6) sh menu-options/config-export.sh ; menu ;;
		0) exit 0 ;;
		*) echo -e $red"Wrong option."$clear; WrongCommand;;
	esac
}

# Call the menu function
menu
