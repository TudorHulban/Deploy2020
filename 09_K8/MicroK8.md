# MicroK8: Installation on Ubuntu
## Prerequisites
### Install snap
```bash
sudo apt install snapd
```
### Install IPTables
```bash
sudo apt-get install iptables
```
## Install MicroK8
```bash
sudo snap install microk8s --classic --edge
```
## Check Status
```bash
sudo microk8s.status --wait-ready
```
