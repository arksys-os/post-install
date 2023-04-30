#! /bin/bash

echo "Start installation of arch packages with pcaman"

# grep -v "^#" ./pkglist/arch.txt | xargs sudo pacman -S
# cat ./pkglist/arch.txt | xargs sudo pacman -S
pacman -S --needed - < ./pkglist/arch.txt

echo "done"
