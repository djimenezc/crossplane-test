brew upgrade
brew install kind
brew install kubectl
brew install helm

kind create cluster --image kindest/node:v1.23.0 --wait 5m

kubectl create namespace crossplane-system

helm repo add crossplane-stable https://charts.crossplane.io/stable
helm repo update

helm install crossplane --namespace crossplane-system crossplane-stable/crossplane

#Install Crossplane CLI
curl -sL https://raw.githubusercontent.com/crossplane/crossplane/master/install.sh | sh
