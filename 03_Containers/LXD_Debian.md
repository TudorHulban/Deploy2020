# LXD: Installation in Debian and first steps (WIP)
Installation on Debian should be done only if zfs is not needed. This is due to the additional overhead of installing zfs on Debian.<br/>
Better go with Ubuntu in this case.
## Install LXD with snap
```bash
sudo apt update
sudo apt install snapd
sudo snap install lxd
```
## LXD Init
As root run:
```bash
lxd init
```
