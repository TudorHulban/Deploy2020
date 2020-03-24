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
## Operations
### Get nodes
```bash
microk8s.kubectl get nodes
```
## Sample app
### Install
```bash
microk8s.kubectl create deployment nginx --image=nginx
microk8s.kubectl get deployments
microk8s.kubectl get pods
```
### Delete
```bash
microk8s.kubectl get deployment 
microk8s.kubectl delete deployment <deployment to delete>
```
## Resources
```html
https://kubernetes.io/blog/2019/11/26/running-kubernetes-locally-on-linux-with-microk8s/
```
