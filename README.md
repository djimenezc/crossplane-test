

[Example] https://crossplane.io/docs/v1.7/getting-started/provision-infrastructure.html

The following commands will allow you to view groups of Crossplane resources:

- kubectl get claim: get all resources of all claim kinds, like PostgreSQLInstance.
- kubectl get composite: get all resources that are of composite kind, like XPostgreSQLInstance.
- kubectl get managed: get all resources that represent a unit of external infrastructure.
- kubectl get <name-of-provider>: get all resources related to <provider>.
- kubectl get crossplane: get all resources related to Crossplane.

Try the following command to watch your provisioned resources become ready:

```
    kubectl get crossplane -l crossplane.io/claim-name=my-db
```

---

https://crossplane.io/docs/v1.7/getting-started/create-configuration.html

```
    make build-push-configuration
```

## Packages

https://crossplane.io/docs/v1.7/concepts/packages.html


--
## Providers

### GCP

https://crossplane.io/docs/v1.7/cloud-providers/gcp/gcp-provider.html

```shell
    curl -O https://raw.githubusercontent.com/crossplane/crossplane/release-1.7/docs/snippets/configure/gcp/credentials.sh
    ./credentials.sh
```