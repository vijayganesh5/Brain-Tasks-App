#!/bin/bash
set -e

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Deploying Brain Tasks App to EKS from $SCRIPT_DIR ..."

# Apply Kubernetes manifests using absolute paths
kubectl apply -f "$SCRIPT_DIR/../k8s/deployment.yaml"
kubectl apply -f "$SCRIPT_DIR/../k8s/service.yaml"

echo "Deployment completed!"

