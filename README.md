# Post Installation

After installing your Linux distro normally you need to install extra packages and configure your system to your own taste. Here's a script to install packages and import/export config files.

## How to do a post installation?

> Inspect the code and do it with your own risk.

Download this repo and execute the script "menu.sh", then you can install a selected list of packages with (pacman, yay, flatpak, vscode).

Option 1 with git:
```sh
git clone https://github.com/arksys-os/post-install.git
cd ./post-install/
sh ./menu.sh
```

Option 2 directly run the [menu.sh script](./menu.sh) with curl
```sh
bash <(curl -s https://raw.githubusercontent.com/sys/post-install/main/menu.sh)
```
