```
#@data/values
---
scdf:
  server:
    image:
      repository: registry.packages.broadcom.com/p-scdf-for-kubernetes/scdf-pro-server
      tag: 1.6.4
  ctr:
    image:
      repository: registry.packages.broadcom.com/p-scdf-for-kubernetes/spring-cloud-dataflow-composed-task-runner
      tag: 2.11.5_scdf-k8s-1.6.4
  skipper:
    image:
      repository: registry.packages.broadcom.com/p-scdf-for-kubernetes/scdf-pro-skipper
      tag: 1.6.4
```

```
ytt -f config | kbld -f- -f /tmp/kbld.lock.yml
```

```
 echo '{ "image": "registry.packages.broadcom.com/p-scdf-for-kubernetes/spring-cloud-dataflow-composed-task-runner:2.11.5_scdf-k8s-1.6.4" }' | kbld -f-
```