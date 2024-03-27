# Post Installation

## Intro

After installing your Linux distro normally you need to install extra packages and configure your system to your own taste. Here's a script to install packages and import/export config files.

There are two main options:
1. Install extra-packages: arch, aur, flatpak, vscode
2. Import/export config files (alacritty, hypr, GIMP, kitty, mpv, neofetch, nvim, obs-studio, qBitorrent, rofi, vlc)


## How to do a post installation?
Download this repo and execute the script "menu.sh", then you can install a selected list of packages with (pacman, yay, flatpak, vscode).

> [!NOTE]
> You can edit the list packages before installing in [list-pkgs](list-pkgs) for arch, aur and flatpak.

```sh
git clone https://github.com/arksys-os/post-install.git
cd ./post-install/
sh ./menu.sh
```

## Definitions

### Mirrorlist
A mirrorlist is a list of URLs where Package repositories are stored/present. For example : Mirror List is a list of URLs that contains packages for the CentOS Linux distribution. Different areas or organisation can have there own mirrors and the mirror closest to you geographically is chosen for faster downloads.

Each server has it own mirrorlist, for example ArcoLinux, CahyOS, Endeavorous, XeroLinux and the one from Arch Linux. You can use whatever you want with pacman to mantain the packages. And also you can use tools like reflector to sort the "lights" of the mirrors, as a simil to sort speed, rate, countries, protocols.

### Config file
In UNIX-based systems (BSD, Linux, macOS) every app has its own config-file stored locally, here's a list of the typical [configuration files](./config-files/readme.md), normally the default path is in user's home ('~/' or '/home/username') or in '/etc/'.

The benefits of the config files are that you edit easily the configuration of an application with a text editor. And you can create your own scripts to automatize, import or export files, just moving files or copy-paste.

### Extra-package
Extra packages are all the programs that are not essential for the Operating Systems, software near to the user experience like editors, viewers, browsers, luanchers, etc. These packages can be installed from the servers with the package managers.
