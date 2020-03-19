# LXD: Installation in Ubuntu and first steps
## Create ZFS RAID 0 pool
If ZFS is not installed:
```bash
sudo apt-get install zfsutils-linux
```
```bash
sudo zpool list
sudo zpool create -f -o ashift=12 toshiba /dev/sda /dev/sdb  # raid 0
sudo zpool create -f d7200 /dev/sdb  # one disk
```
## Initialize LXD daemon
```bash
sudo lxd init
```
- Do you want to configure a new storage pool? yes
- Name of the new storage pool  lxdpool01
- Create a new ZFS pool? no
- Name of the existing ZFS pool or dataset toshiba
```bash
sudo zfs list
```
## Add images repo
```bash
lxc remote add lximages images.linuxcontainers.org
```
List available images:
```bash
lxc image list lximages: | grep bionic | grep amd64
```
## Create container (image cached locally)
```bash
lxc launch lximages:ubuntu/bionic/amd64 c001
```
Add user to connect remotely: 
```bash
lxc exec c001 adduser ansible
```
Add created user to sudoers list: 
```bash
sudo visudo
# add 
ansible ALL=(ALL:ALL) NOPASSWD:ALL
```
Install openssh-server:
```bash
lxc exec c001 apt-get install openssh-server
```
## Enter created container
```bash
lxc exec c001 /bin/bash
# for Alpine
lxc exec <container ID or name> /bin/ash
```
## Operations
### Files
```bash
lxc file pull c001/path/to/file .
lxc file push /path/to/file c001/
```
### Start - stop
```bash
lxc start c001
lxc stop c001
lxc delete c001 c002
```
### Edit description
```bash
lxc config edit <container>
lxc config show <container>
```
### Copy
```bash
lxc copy <source container> <destination container>
```
### Change timezone
```bash
lxc config set c001 environment.TZ Europe/Bucharest
lxc exec c001 timedatectl set-timezone Europe/Bucharest
```
### Deploy SSH key:
Make vi default editor:
```bash
vi ~/.bashrc and add line: export EDITOR=vi
lxc profile edit MyContainerProfile
```
Check: https://chrismacnaughton.com/blog/uncategorized/adding-ssh-authorized-keys-to-lxd-default-profile/

### Publish container
```bash
lxc stop MyContainer
lxc publish MyContainer --alias=MyImage description="My base image (with ssh and key)"
```
Use published container:
```bash
lxc launch MyImage TestContainer
```
List published (local) images:
```bash
lxc image list
```
Delete local image:
```bash
lxc image delete <alias or fingerprint>
get tarball from image. exported image in .:
lxc image export old-ubuntu .
```
Ping from one container to another:
```bash
lxc exec <fromContainerName> -- ping -c 4 <toContainerIP>
```
## Make containers take IP from LAN DHCP 
Gather info:
```bash
lxc profile list
lxc profile show default
```
a. create LAN profile: 
```bash
lxc profile copy default lanprofile
```
b. get network interface name to use: 
```bash
ifconfig
```
c. set nictype as macvlan (in default profile type is bridge): 
```bash
lxc profile device set lanprofile eth0 nictype macvlan
```
d. set parent as interface connected to LAN: 
```bash
lxc profile device set lanprofile eth0 parent enp0s25
```
check profile: 
```bash
lxc profile show lanprofile
```
e. set timezone:
```bash
lxc profile set lanprofile environment.TZ Europe/Bucharest
```
f. create the new container: 
```bash
lxc launch -p lanprofile lximages:ubuntu/bionic/amd64 c002
# or
lxc launch -p lanprofile <published image> <container _ name>
```
Check created container: 
```bash
lxc info <container _ name>
```
https://blog.simos.info/how-to-use-the-x2go-remote-desktop-with-lxd-containers/

## Enable SSH key based authentication:
```bash
cat ~/.ssh/id_rsa.pub | ssh username@remote_host "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"
check: https://www.digitalocean.com/community/tutorials/how-to-configure-ssh-key-based-authentication-on-a-linux-server
```
Add user to sudoers list:
```bash
sudo adduser <username> sudo
```
## Prepare image to use in LAN
a. create container based on LAN profile:
```bash
lxc launch -p lanprofile lximages:ubuntu/bionic/amd64 c0610d
```
b. add ssh server and user different than root <br/>
c. add snapd 
```bash
sudo apt install -y snapd
```
d. add this user to sudo <br/>
e. push SSH key to this template <br/>
f. stop container and publish it
```bash
lxc publish c0610d --alias=LAN1804
```
g. create container based on this image and LAN profile:
```bash
lxc launch -p lanprofile LAN1804 c0610e
```
## Settings for Postgres DB install with Ansible
```bash
sudo apt-get install python-psycopg2
```
## Resources
```html
https://wiki.gentoo.org/wiki/LXC#Virtualization_concepts
https://wiki.gentoo.org/wiki/LXD
https://linuxhint.com/ssh-port-forwarding-linux/
```
