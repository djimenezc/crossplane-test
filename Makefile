
provision-psql-gcp:
	@kubectl apply -f k8s/postgres.yml
	@kubectl get postgresqlinstance my-db
	@make deploy-pod

get-crossplane:
	kubectl get crossplane

get-postgres-info:
	kubectl get crossplane -l crossplane.io/claim-name=my-db

get-postgres-secrets:
	kubectl describe secrets db-conn

deploy-pod:
	kubectl apply -f k8s/container.yml

clean-up-pod:
	kubectl delete pod see-db

clean-up: clean-up-pod
	kubectl delete postgresqlinstance my-db


