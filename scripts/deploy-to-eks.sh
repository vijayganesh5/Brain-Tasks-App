#!/bin/bash
set -e

echo "íº€ Deploying Brain Tasks App to EKS..."

aws eks update-kubeconfig --region ap-south-1 --name brain-tasks-cluster

cd "$(dirname "$0")/.."

kubectl apply -f k8s/deployment.yaml --validate=false
kubectl apply -f k8s/service.yaml --validate=false

echo "âœ… Deployment completed!"

