# ArkSys Post Installation

## Intro

After installing ArkSys you can do extra configuration in your system:
- install extra packages with your package manager (pacman, apt, dnf, zypper)
- import config-files
- import mirrorlist

## Definitions

### What is a config file?
In UNIX-based systems (BSD, Linux, macOS) every app has its own config-file stored locally, here's a list of the typical [configuration files](./config-files/readme.md), normally the default path is in user's home ('~/' or '/home/username') or in '/etc/'. 

The benefits of the config files are that you edit easily the configuration of an application with a text editor. And you can create your own scripts to automatize, import or export files, just moving files or copy-paste.

There are two scripts: "config-files/import.sh" and "config-files/export.sh"

### What is a mirrolist?
A mirrorlist is a list of URLs where Package repositories are stored/present. For example : Mirror List is a list of URLs that contains packages for the CentOS Linux distribution. Different areas or organisation can have there own mirrors and the mirror closest to you geographically is chosen for faster downloads.

Each server has it own mirrorlist, for example ArcoLinux, CahyOS, Endeavorous, XeroLinux and the one from Arch Linux. You can use whatever you want with pacman to mantain the packages. And also you can use tools like reflector to sort the "lights" of the mirrors, as a simil to sort speed, rate, countries, protocols.

## How to do a post installation?
Download this repo and execute the script "menu.sh", then you can install a selected list of packages with (pacman, yay, flatpak).

> You can edit the list packages before installing in "./packages/pkglist" for arch, aur and flatpak.

```sh
git clone https://github.com/arksys-os/arksys_post-install.git
cd ./arksys-post-install/post-install
sh ./menu.sh
```
