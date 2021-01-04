## Install server
```bash
apt install nfs-common nfs-kernel-server
```
## Install client
```bash
apt install nfs-common 
```
## Run server
### Check NFS socket is opened:
```bash
rpcinfo -p | grep nfs
```
### Check NFS file system is supported:
```bash
modprobe nfs
cat /proc/filesystems | grep nfs  # should return nfs or nfs4
```
If yes create share:
```bash
mkdir /home/nfs
touch /home/nfs/xxx
```
### Add configuration
```bash
vi /etc/exports
/home/nfs/ (ro,sync)
```
Load configuration:
```bash
service nfs-kernel-server restart
```
### Run client
Mount locally:
```bash
mkdir /home/nfs_local 
mount <server IP>:/home/nfs /home/nfs_local 
```
Mount permanently:
```bash
vi /etc/fstab
# add:
<server IP>:/home/nfs /home/nfs_local/ nfs defaults 0 0 
```

### Resources
```
https://askubuntu.com/questions/7117/which-to-use-nfs-or-samba
```
