# Configuration files on UNIX

## The kernel
* /proc/sys/kernel/threads-max - The maximum number of tasks the kernel can run.
* /proc/sys/kernel/ctrl-alt-del - If 1, then pressing this key sequence cleanly reboots the system.
* /proc/sys/kernel/sysrq - If 1, then Alt-SysRq is active.
* /proc/sys/kernel/osrelease - Displays the release of the operating system.
* /proc/sys/kernel/ostype - Displays the type of the operating system.
* /proc/sys/kernel/hostname - The host name of the system.
* /proc/sys/kernel/domainname - Network domain of which the system is a part.
* /proc/sys/kernel/modprobe - Specifies whether modprobe should be automatically run at startup, and load the necessary modules.

## Access files
* /etc/host.conf - Tells the network domain server how to look up hostnames. (Normally /etc/hosts, then name server; it can be changed through netconf.)
* /etc/hosts - Contains a list of known hosts (in the local network). Can be used if the IP of the system is not dynamically generated. 
* /etc/hosts.allow - Man page same as hosts_access. Read by tcpd at least.
* /etc/hosts.deny - Man page same as hosts_access. Read by tcpd at least.

## Booting and login/logut
* /etc/issue & /etc/issue.net - These files are read by mingetty (and similar programs) to display a "welcome" string to the user connecting from a terminal (issue) or through a telnet session (issue.net). 
* /etc/redhat-release -	Includes one line stating the Red Hat release number and name. Used by rc.local.
* /etc/rc.d/rc - Normally run for all run levels with level passed as argument. For example, to boot your machine in the Graphics mode (X-Server), run the following command from your command line: init 5 (graphic mode).
* /etc/rc.d/rc.local - Not official. May be called from rc, rc.sysinit, or /etc/inittab.
* /etc/rc.d/rc.sysinit - Normally the first script run for all run levels.
* /etc/rc.d/rc/rc X.d - Scripts run from rc (X stands for any number from 1 to 5). These directories are "run-level" specific directories. 
                        When a system starts up, it identifies the run-level to be initiated, and then it calls all the startup scripts present in the specific directory for that run-level.
## Daemons
- /etc/syslogd.conf
- /etc/httpd.conf
- /etc/modules.conf or /etc/conf.modules

## File system
* /etc/mtab - This changes continuously as the file /proc/mount changes. In other words, when filesystems are mounted and unmounted, the change is immediately reflected in this file.
* /etc/fstab - Lists the filesystems currently "mountable" by the computer. This is important because when the computer boots, it runs the command mount -a, which takes care of mounting every
            file system marked with a "1" in the next-to-last column of fstab.
* /etc/mtools.conf - Configuration for all the operations (mkdir, copy, format, etc.) on a DOS-type filesystem.

## Networking
* /etc/gated.conf - Configuration for gated. Used only by the gated daemon.
* /etc/gated.version - Contains the version number of the gated daemon.
* /etc/gateway - Optionally used by the routed daemon.
* /etc/networks - Lists names and addresses of networks accessible from the network to which the machine is connected. Used by route command. Allows use of name for network.
* /etc/protocols - Lists the currently available protocols. See the NAG (Network Administrators Guide) and man page. C interface is getprotoent. Should never change.
* /etc/resolv.conf - Tells the kernel which name server should be queried when a program asks - to "resolve" an IP Address.
* /etc/rpc - Contains instructions/rules for RPC, which can be used in NFS calls, remote file - system mounting, etc.
* /etc/exports - The file system to be exported (NFS) and permissions for it.
* /etc/NetworkManager/NetworkManager.conf
* /etc/services - Translates network service names to port number/protocol. Read by inetd, - telnet, tcpdump, and some other programs. There are C access routines.
* /etc/inetd.conf - Config file for inetd. See the inetd man page. Holds an entry for each - network service for which inetd must control daemons or other servicers. 
                    Note that services - will be running, but comment them out in /etc/services so they will not be available even if - running.
* /etc/sendmail.cf - The Mail program sendmail's configuration file. Cryptic to understand.
* /etc/sysconfig/network - NETWORKING=yes or no. Read by rc.sysinit at least.
* /etc/sysconfig/network-scripts/if* - Red Hat network configuration scripts.

## System administration
* /etc/group - Contains the valid group names and the users included in the specified groups. A single user can be present in more than one group if he performs multiple tasks.
* /etc/nologin - If the file /etc/nologin exists, login(1) will allow access only to root. Other users will be shown the contents of this file and their logins refused.
* /etc/passwd -	Holds some user account info including passwords (when not "shadowed").
* /etc/rpmrc - rpm command configuration. All the rpm command line options can be set together in this file so that all of the options apply globally when any rpm command is run on that system.
* /etc/securetty - Contains the device names of tty lines (one per line, without leading /dev/) on which root is allowed to login.
* /etc/shadow - Contains the encrypted password information for users' accounts and optionally the password aging information. Included fields are: Login name Encrypted password Days 
* /etc/shells - Holds the list of possible "shells" available to the system.
* /etc/motd - Message Of The Day; used if an administrator wants to convey some message to all the users of a Linux server.

## System commands
* /etc/lilo.conf - Contains the system's default boot command line parameters and also the different images to boot with. You can see this list by pressing Tab at the LILO prompt.
* /etc/logrotate.conf - Maintains the log files present in the /var/log directory.
* /etc/identd.conf - Identd is a server that implements the TCP/IP proposed standard IDENT user identification protocol as specified in the RFC 1413 document. 
* /etc/ld.so.conf - Dynamic Linker.
* /etc/inittab - This is chronologically the first configuration file in UNIX. The first program launched after a UNIX machine is switched on is init, which knows what to launch, thanks to inittab. 
                 It is read by init at run level changes, and controls the startup of the main process.
* /etc/termcap - A database containing all of the possible terminal types and their capabilities.

## User programs
### rc ("run commands")
* ~/.bashrc
* ~/.bash_login
* ~/.bash_logout
* ~/.bash_profile
* ~/.bash_history
* ~/.emacs
* ~/.forward
* ~/.fonts
* ~/.fvwmrc
* ~/.hushlogin
* ~/.mail.rc
* ~/.ncftp/
* ~/.profile
* ~/.bash_login
* ~/.pinerc
* ~/.muttrc
* ~/.exrc
* ~/.vimrc
* ~/.gtkrc
* ~/.kderc
* ~/.netrc
* ~/.rhosts
* ~/.rpmrc
* ~/.signature
* ~/.twmr
* ~/.xinitrc
* ~/.xmodmaprc
* ~/.xserverrc
* ~/.Xauthority
* ~/.Xdefaults
* ~/.Xmodmap
* ~/.Xresources

### Dot-files

#### Apps
* Mozilla:
    * ~/.mozilla/extensions
    * ~/.mozilla/firefox
* SSH:
    * ~/.ssh/config
    * ~/.ssh/ark-github
    * ~/.ssh/ark-github.pub
* Visual Studio Code
    * ~/.vscode-oss # ~/.vscode or ~/.vscodium

#### Config
* Blender:
    * ~/.config/blender/
* KDE-plasma:
    * ~/.config/baloofilerc
    * ~/.config/bluedevilglobalrc
    * ~/.config/breezerc
    * ~/.config/device_automounter_kcmrc
    * ~/.config/gtkrc
    * ~/.config/gtkrc-2.0
    * ~/.config/gtk-3.0/*
    * ~/.config/gtk-4.0/*
    * ~/.config/kaccessrc
    * ~/.config/kactivitymanagerdrc
    * ~/.config/kactivitymanagerd-pluginsrc
    * ~/.config/kactivitymanagerd-statsrc
    * ~/.config/kactivitymanagerd-switcher
    * ~/.config/kcmfonts
    * ~/.config/kcminputrc
    * ~/.config/kdeconnect
    * ~/.config/kded5rc
    * ~/.config/kded_device_automounterrc
    * ~/.config/kdeglobals - KDE global configuration
    * ~/.config/kfontinstuirc
    * ~/.config/kgammarc
    * ~/.config/kglobalshortcutsrc
    * ~/.config/khotkeysrc
    * ~/.config/klaunchrc
    * ~/.config/krunnerrc
    * ~/.config/kscreenlockerrc
    * ~/.config/ksmserverrc
    * ~/.config/ksplashrc
    * ~/.config/ktimezonedrc
    * ~/.config/kwinrc - KDE window manager configuration
    * ~/.config/kwinrulesrc
    * ~/.config/kxkbrc
    * ~/.config/plasmanotifyrc
    * ~/.config/plasmarc
    * ~/.config/PlasmaUserFeedback
    * ~/.config/plasma-localerc
    * ~/.config/plasma-org.kde.plasma.desktop-appletsrc - KDE Plasma desktop theme
    * ~/.config/powermanagementprofilesrc
    * ~/.config/touchpadxlibinputrc
    * ~/.config/Trolltech.conf
* Kitty:
    * ~/.config/kitty/kitty.conf
* mpv:
    * ~/.config/mpv/mpv.conf
* Neovim:
    * ~/.config/neofetch/config.conf
* Neovim:
    * ~/.config/nvim/init.vim
* Starship:
    * ~/.config/starship.toml

#### Local
* Bottles:
    * ~/.local/share/bottles
* PhotoGIMP:
    * ~/.local/share/applications/org.gimp.GIMP.desktop
    * ~/.local/share/icons/hicolor
    * ~/.var/app/org.gimp.GIMP/config/GIMP/2.10/ (flatpak patch customization for GIMP)

#### Var
* Flatpak packages:
    * ~/.var/app

## Resources
- [Config files - IBM](https://developer.ibm.com/articles/l-config/)
