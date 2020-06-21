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
### Create Kubernetes Deployment
```
kubectl create deployment hello-minikube --image=k8s.gcr.io/echoserver:1.10
```
Expose it as service
```
kubectl expose deployment hello-minikube --type=NodePort --port=8080
# check it is running
kubectl get pod
```
Get URL for the service
```
minikube service hello-minikube --url
```
Access the URL
```
ssh -L 8080:192.168.39.139:32267 tudi@192.168.1.35
# 8080 - local port
# 192.168.39.139:32267 - URL where service is available
# tudi@192.168.1.35 - user at IP where Minikube is running
```
#### Delete the deployment
List resources in namespace
```
kubectl get pods --namespace default
```
Delete the service
```
kubectl delete services hello-minikube
```
In case deployed as deployment delete deployment
```
kubectl delete deploy hello-minikube 
```
Stop Minikube
```
minikube stop
```
### Resources
```
https://medium.com/linagora-engineering/install-k8s-minikube-on-top-of-kvm-on-debian-9-9cd5b646063c
https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl-on-linux
https://kubernetes.io/docs/tasks/tools/install-minikube/
https://kubernetes.io/docs/setup/learning-environment/minikube/
```
