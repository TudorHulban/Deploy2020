## Install HAProxy Ingress Controller
Using Helm add HAProxy repo:
```bash
helm repo add haproxytech https://haproxytech.github.io/helm-charts
helm repo update
```
Search and install charts:
```bash
helm search repo haproxytech/
helm install my-release haproxytech/<chart>
```




## Resources
```html
https://thenewstack.io/kubernetes-ingress-for-beginners/
```
