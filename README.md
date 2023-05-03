# ArkSys Post Installation

## Intro

After installing ArkSys you can do extra configuration in your system:
- install extra packages with your package manager (pacman, apt, dnf, zypper)
- import config-files
- import mirrorlist
- etc

In Unix systems every app has its own config-file stored on the system, here's a list of the typical [configuration files](./config-files/readme.md), normally the default path is in user's home (~/ or /home/username). 

The benefits of the config files are that you edit easily the configuration of an application with a text editor. And you can create your own scripts to automatize, import or export files, just moving files.


## Download and execute
Download this repo and execute the script "menu.sh", then you can select multimple options (import config files, install packages (pacman, yay, flatpak), import mirrolist).

```sh
git clone https://github.com/arksys-os/arksys-post-install.git
cd ./arksys-post-install/post-install
sh ./menu.sh
```
