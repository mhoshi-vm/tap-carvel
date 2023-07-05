```
export DOMAIN=tmc-sm.my-domain
```

```
openssl genrsa -out /tmp/${DOMAIN}.key
openssl req -x509 -new -sha256 -days 3650 -nodes \
 -key /tmp/${DOMAIN}.key -out /tmp/${DOMAIN}.cer \
 -subj /CN=${DOMAIN}
```
