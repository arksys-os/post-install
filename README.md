# ArkSys Post Installation

### Install extra packages

After installing ArkSys you can install extra packages with your package manager (pacman, apt, dnf, zypper). Execute [menu.sh](./post-install/menu.sh) `sh ./installation/post/menu.sh` for Arch linux or create your own script like:

```sh
sudo pacman -S code firefox obsidian telegram-desktop
```

### Configuration files

In Unix systems every app has its own config-file stored on the system, here's a list of the typical [configuration files](./config-files/readme.md), normally the default path is in user's home (~/ or /home/username). 

The benefits of the config files are that you edit easily the configuration of an application with a text editor. And you can create your own scripts to automatize, import or export files, just moving files.
