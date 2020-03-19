# Samba: Installation and first steps
## Install binaries
```bash
sudo apt-get update
sudo apt-get install -y samba
```
## Edit configuration
```bash
sudo vi /etc/samba/smb.conf
# add section
[xxx]
path = /home/<user_name>/<folder_name>
valid users = <user_name>
read only = no
```
Restart service to take new configuration
```bash
sudo service smbd restart
```
or instead of user:
```bash
guest ok = yes
```
(maybe chmod 777 folder in case write guest does not work)
## Operations
Check shares:
```bash
smbstatus --shares
```
## Map share in Linux client 
Did not work for Zyxel.
```bash
apt install cifs-utils
mkdir /mnt/<share name>
mount -t cifs //FILE-SERVER-IP-ADDRESS/<share name> /mnt/<share name> -o user=nobody
# Enter or nobody as password
```
