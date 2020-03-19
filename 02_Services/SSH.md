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
