## Buster Installation
### Install KVM
```
sudo apt install qemu-kvm libvirt-clients libvirt-daemon-system
sudo adduser tudi libvirt
sudo adduser tudi libvirt-qemu
```
### Install kubectl
```
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
```
Verify kubectl installation
```
kubectl version --client
```
### Install Minikube
```
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
sudo mkdir -p /usr/local/bin/
sudo install minikube /usr/local/bin/
```
### Start Minikube
```
minikube start --driver=<driver_name> # if driver name is not given it would take default driver name
minikube status
```
### Resources
```
https://medium.com/linagora-engineering/install-k8s-minikube-on-top-of-kvm-on-debian-9-9cd5b646063c
https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl-on-linux
```
