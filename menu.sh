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
	$(ColorGreen '0)') Exit
$(ColorBlue 'Choose an option:') "
    read choice
    case $choice in
		1) sh ./packages/pacman.sh ; menu ;;
		2) sh ./packages/yay.sh ; menu ;;
		3) sh ./packages/flatpak.sh ; menu ;;
		0) exit 0 ;;
		*) echo -e $red"Wrong option."$clear; WrongCommand;;
	esac
}

# Call the menu function
menu
