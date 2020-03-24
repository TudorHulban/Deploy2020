# MicroK8: Installation on Ubuntu VM
## Prerequisites
```bash
sudo apt install snapd iptables
```
## Install MicroK8
```bash
sudo snap install microk8s --classic
```
## Enable Services
```bash
sudo microk8s.enable dns dashboard registry
```
## Start
```bash
sudo microk8s.start
# inspect
sudo microk8s.inspect
sudo.microk8s.status
```
## Resources
```html
https://kubernetes.io/blog/2019/11/26/running-kubernetes-locally-on-linux-with-microk8s/
```
