## Create namespace
Create configuration file:
```json
{
  "apiVersion": "v1",
  "kind": "Namespace",
  "metadata": {
    "name": "test",
    "labels": {
      "name": "test"
    }
  }
}
```
Apply created file:
```bash
kubectl create -f create_namespace.json 
```
Verify newly created namespace:
```bash
kubectl get namespace
```
