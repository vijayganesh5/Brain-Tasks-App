#!/bin/bash
set -e
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "Deploying Brain Tasks App to EKS..."
kubectl apply -f "$SCRIPT_DIR/../k8s/deployment.yaml"
kubectl apply -f "$SCRIPT_DIR/../k8s/service.yaml"
echo "Deployment completed!"

