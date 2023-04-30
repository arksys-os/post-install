# ArkSys Post Installation

### Install extra packages
After installing ArkSys you can install extra packages with your package manager (pacman, apt, dnf, zypper). Execute [menu.sh](./post-install/menu.sh) `sh ./installation/post/menu.sh` for Arch linux or create your own script like:

```sh
sudo pacman -S code firefox obsidian telegram-desktop
```

### Configuration files
In Unix systems every app has its own config-file stored on the system, here's a list of [configuration files path](./config-files/readme.md), normally the default path is in user's home (~/ or /home/username). The benefits of the config files is that are 'files', so you can modify and copy easily with a file manager or with terminal. And you can create scripts to automatize to import or export just copying files.

- Export or backup config files:
```sh
sudo cp /usr/share/fonts ./path-to-TTF/*
sudo cp -r ~/.config/ /path-to-config/ 
sudo cp ~/ /path-to-bashrc/.bashrc
```

- Import config files:
```sh
sudo cp /path-to-TTF/*  /usr/share/fonts 
sudo cp -r /path-to-kitty/ ./path-to-nvim/ ./path-to-obs-studio  ~/.config/
sudo cp /path-to-bashrc/.bashrc ~/

# Change ownership
chown -R $USER: ~/.config/kitty ~/.config/nvim ~/.config/obs-studio
```
