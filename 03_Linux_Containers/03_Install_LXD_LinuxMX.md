# Installation of LXD on Linux MX
## Move to systemd
```
sudo apt install systemd-sysv
```
Remove the installed package to revert to sysV.<br/>
Resources:
```
https://mxlinux.org/wiki/system/systemd/
```

## Switch to text mode
```
sudo systemctl set-default multi-user.target
sudo systemctl get-default  # verify mode
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
sudo systemctl enable snapd.service
sudo systemctl start snapd.service
```
Resources:
```
https://askubuntu.com/questions/1258137/cannot-communicate-with-server-post-http-localhost-v2-apps-dial-unix-run-sn
```
## Install lxd
As root:
```
snap install lxd
```
## Initialize lxd
### Automatically:
```
sudo lxd init 
```
### Manually:
#### Create network
#### Create storage volume
```sh
lxc storage create pool_name dir source=/ram/lxd
```
##### Check storage creation
```
lxc storage ls
```

Resources
```
https://www.youtube.com/watch?v=1p-fbS_OYTg
```
## Add container images
```
# add repo first
lxc remote add lximages images.linuxcontainers.org

lxc image list lximages: | grep focal | grep amd
 ```
## Create Container
Use below anytime image can be locally cached:
```
lxc launch lximages:ubuntu/focal/amd64 container_name
```
Using local image:
```
lxc image ls
lxc launch image_id container_name
```
## Resources
```
https://forum.snapcraft.io/t/installing-snap-on-debian/6742
```
