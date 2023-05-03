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
My First Menu
$(ColorGreen '1)') Install arch packages
$(ColorGreen '2)') Install aur packages
$(ColorGreen '3)') Install flatpak packages
$(ColorGreen '4)') Add Chaotic AUR to pacman mirrorlist
$(ColorGreen '5)') Import config files 
$(ColorGreen '0)') Exit
$(ColorBlue 'Choose an option:') "
        read a
        case $a in
	        1) sh ./dotfiles/import.sh ; menu ;;
	        2) sh ./packages/pacman.sh ; menu ;;
	        3) sh ./packages/yay.sh ; menu ;;
	        4) sh ./packages/flatpak.sh ; menu ;;
	        5) sh ./server/chaotic-aur.sh ; menu ;;
		0) exit 0 ;;
		*) echo -e $red"Wrong option."$clear; WrongCommand;;
        esac
}

# Call the menu function
menu
