mkdir -p imgpkg/.imgpkg
helm template -n concourse -f helm-values.yaml concourse concourse/concourse > imgpkg/kubeconfig.yaml
kbld -f imgpkg/ --imgpkg-lock-output imgpkg/.imgpkg/images.yml
imgpkg copy --lock imgpkg/.imgpkg/images.yml --to-repo harbor.cl01.lespaulstudioplus.info/library/concourse --lock-output imgpkg/.imgpkg/images.yml
imgpkg push -b harbor.cl01.lespaulstudioplus.info/pkgr/concourse-app:latest -f imgpkg/
rm -rf imgpkg
