```
export DOMAIN=tmc-sm.lespaulstudioplus.info
```


```
openssl genrsa -out ${DOMAIN}.key
openssl req -x509 -new -sha256 -days 3650 -nodes \
 -key ${DOMAIN}.key -out ${DOMAIN}.cer \
 -subj /C=JP/ST=Tokyo/L=tokyo/O=VMware/OU=Tanzu/CN=${DOMAIN}

```
