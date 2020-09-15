# Installation of LXD on Linux MX
## Move to systemd
```
sudo apt install systemd-sysv
```
Remove package to revert to sysV.<br/>
Resources:
```
https://mxlinux.org/wiki/system/systemd/
```

## Switch to text mode
```
sudo systemctl set-default multi-user.target
sudo systemctl get-default
```
### Disable splash
```
sudo vi /etc/default/grub
# update line to
GRUB_CMDLINE_LINUX_DEFAULT="quiet"
# generate new config
sudo update-grub
```
Reboot.<br/>
Resources:
```
https://www.linuxuprising.com/2020/01/how-to-boot-to-console-text-mode-in.html
https://askubuntu.com/questions/766973/how-to-uninstall-plymouth
```

## Install snap
```
sudo apt install snapd
```
## Install snap core
```
snap install core
```
## Start snap service
```
sudo systemctl unmask snapd.service
systemctl enable snapd.service
systemctl start snapd.service
```
Resources:
```
https://askubuntu.com/questions/1258137/cannot-communicate-with-server-post-http-localhost-v2-apps-dial-unix-run-sn
```
## Install lxd
```
snap install lxd
```
## Initialize lxd
```
sudo lxd init  # do not add a bridge can do it later
```
## Resources
```
https://forum.snapcraft.io/t/installing-snap-on-debian/6742
```