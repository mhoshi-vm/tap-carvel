# Unofficial Tanzu Mission Control Self Managed opinionated carvel installer

An unofficial version on the Tanzu Mission Control Self Managed installer. No support included.

## Prereq
- Prepare TKGs/m with the following size by minimum
    - 1 control nodes with 2vCPU, 8GB Memory
    - 1 Nodes with 10 vCPU, 16 GB Memory, 200GB mounted on /var/lib/containerd
    - Non-TKGs/m k8s should work with the same resources, as long as [cluster essentials](https://techdocs.broadcom.com/us/en/vmware-tanzu/standalone-components/cluster-essentials-for-tanzu/1-10/cluster-essentials/deploy.html) is installed.
- Complete `Download and stage the installation images` step only in [installation guide](https://techdocs.broadcom.com/us/en/vmware-tanzu/standalone-components/tanzu-mission-control/1-4/tanzu-mission-control-documentation/tanzumc-sm-install-config-install-tmc-sm.html)

## How to install

### tanzu cli

Step 1 : install package repo

```
kubectl create ns tap-carvel
tanzu package repository add mhoshi-vm -n tap-carvel --url ghcr.io/mhoshi-vm/tap-carvel:latest
```

Step 2 : prepare values.yaml
Check [parameters](./values.yaml). Minimum required setting is the following
```
certmanager:
  package_repo:
    install: true
domain: <tmc domain>
tmc:
  imageRegistry:
    server: <image url>
```

Step 3 : Deploy, wait and enjoy
```
tanzu package install tp -p tmc-sm.tanzu.japan.com --version 1.4.0 --values-file values.yaml -n tap-carvel
```
