# ZFS: Installation and first steps
Make sure the drives are connected on motherboard in the order of that the controller presents.
## Install ZFS
For Ubuntu:
```bash
sudo apt install zfsutils-linux 
```
### For Debian Buster
Under review.

## List available disks and pools:
```bash
sudo fdisk -l
sudo zpool list
```
## Create mirror pool:
```bash
sudo zpool create -f -o ashift=12 <pool name> mirror /dev/sda /dev/sdb
```
Check created pool:
```bash
sudo zpool status <pool name> 
sudo zfs get all 
```
## Create pool raid 0:
```bash
sudo zpool create -f -o ashift=12 <pool name> <device1> <device2>
sudo zpool create -f -o ashift=12 labo /dev/sda /dev/sdb
```
## For Proxmox:
After pool creation go to Datacenter/Storage and add the ZFS volume.<br/>
### List container images:
```bash
pveam update
pveam available --section system
```
### Download image:
```bash
pveam download local <image name>
```
### Connect:
```bash
ssh -l root 192.168.1.xxx
```
For OSs connect with Filezilla, SFTP using root to /var/lib/vz/template/iso the needed ISO.
### Delete all datasets or pool:
```bash
sudo zfs destroy -r <pool name>
sudo zpool destroy <pool name>
```
### Get pool speed:
```bash
sudo /usr/bin/time --verbose dd if=/dev/zero of=sometestfile bs=1024 count=30000
```
More: https://blog.programster.org/zfs-cheatsheet
### Stats:
```bash
zpool iostat -v
```
