# LXD: Installation in Ubuntu and first steps



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
