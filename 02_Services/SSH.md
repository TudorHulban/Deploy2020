## Configure SSH key access
On host to connect for root home folder:
```
cd ~
mkdir .ssh
touch authorized_keys
```
Copy paste SSH public key, ex.:
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCxGn0O70PPfSe6pIcLOoCYU0l2vYycpisaKFfOrGsAG4DmK/4D29aum
.....
Yn/HTl2ozuvzfVFAi9jpAhxQKM9vvHfVQ== user@server
```
Now connect as root:
```
ssh root@host
```
## Keygen 4096 bits
```bash
ssh-keygen -t rsa -b 4096
```
## Copy file with SSH
Run on source host, file to send to target host:
```bash
scp file-to-send user@targethost:/path/to/place/file
```
Works also for transfer to local host. Run on remote host (SSH enabled on local host):
```bash
scp /path/to/file user@targethost:/path/to/place/file
```
Resources
```
https://www.ssh.com/ssh/sshd_config/
```
