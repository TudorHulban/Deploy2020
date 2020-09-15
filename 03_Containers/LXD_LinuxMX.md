# Installation on LXD on Linux MX
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
