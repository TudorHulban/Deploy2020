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
Reboot.<br/>
Resources:
```
https://www.linuxuprising.com/2020/01/how-to-boot-to-console-text-mode-in.html
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
## Resources
```
https://forum.snapcraft.io/t/installing-snap-on-debian/6742
```
