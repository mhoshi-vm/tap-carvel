```
time=2024-12-11T02:23:26.631122993Z caller=uco_env_config.go:93 level=info TanzuInstallationType=self-managed
time=2024-12-11T02:23:26.631194182Z caller=uco_env_config.go:95 level=info CollectorRepoURLOnSM=harbor.tp.aws.lespaulstudioplus.info/tpk8s/10.0.0@sha256:0c440bcd5a3cf28bc2607165537ddfe9507b2928c225455de9a1ab860e6033cb
time=2024-12-11T02:23:26.631889014Z caller=uco_env_config.go:111 level=info SMOrgId=wwZPNG6Ptn5qnX7E2ush9skWjd9FVp5ouEhG
time=2024-12-11T02:23:26.631920598Z caller=uco_env_config.go:129 level=info AwsRegion=unset SaaSCollectorRepo=tanzu-platform.packages.broadcom.com/meta-pkg-repo:4.0.8 SaaSK8SPackageVersion=3.34.0 SaaSMetaPackageVersion=3.32.0
time=2024-12-11T02:23:26.632185799Z caller=main.go:48 level=error context.Background="failed to setup CSP token provider for SM installation type"
panic: x509: failed to parse private key (use ParsePKCS1PrivateKey instead for this key format)

goroutine 1 [running]:
main.main()
	/app/cmd/main.go:49 +0xe9d
```


