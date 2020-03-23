# MicroK8: Installation on Ubuntu
## Install snap
```bash
sudo apt install snapd
```
## Install MicroK8
```bash
sudo snap install microk8s --classic --edge
```
## Check Status
```bash
sudo microk8s.status --wait-ready
```
