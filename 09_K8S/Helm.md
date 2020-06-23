## Install
```
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
```
## Chart LifeCycle
### Create Chart
```
helm create tchart
# inspect
tree tchart
```
### Reset 
Delete all template files.
```
rm -v  tchart/templates/*
```


## Resources
```
https://helm.sh/docs/intro/install/
https://semver.org/spec/v2.0.0.html
https://helm.sh/docs/chart_template_guide/
```
