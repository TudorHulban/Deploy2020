# KVM 
## Prerequisites
```bash
egrep -c '(vmx|svm)' /proc/cpuinfo  # result should be greater than zero
sudo kvm-ok   # check if system supports KVM virtualization

# install if needed with below
sudo apt install cpu-checker
```
## Installation on XUbuntu
```bash
sudo apt install -y qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils
```
Check if the virtualization daemon – libvritd-daemon – is running:
```bash
sudo systemctl status libvirtd
```
Add current user to the libvirtd group:
```
sudo adduser name libvirtd
```

## Resources
```html
https://www.tecmint.com/install-kvm-on-ubuntu/
https://linuxconfig.org/how-to-create-and-manage-kvm-virtual-machines-from-cli
```
