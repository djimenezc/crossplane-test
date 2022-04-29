
kubectl crossplane install configuration registry.upbound.io/xp/getting-started-with-gcp:v1.7.0

watch kubectl get pkg

./configureGcp.sh

kubectl create secret generic gcp-creds -n crossplane-system --from-file=creds=./creds.json

./configureGcpProvider.sh
