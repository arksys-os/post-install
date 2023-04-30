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
	        1) sh ./installation/post/install-packages/pacman.sh ; menu ;;
	        2) sh ./installation/post/install-packages/yay.sh ; menu ;;
	        3) sh ./installation/post/install-packages/flatpak.sh ; menu ;;
	        4) sh ./installation/post/chaotic-aur.sh ; menu ;;
	        5) sh ./installation/post/import-config-files.sh ; menu ;;
		0) exit 0 ;;
		*) echo -e $red"Wrong option."$clear; WrongCommand;;
        esac
}

# Call the menu function
menu
