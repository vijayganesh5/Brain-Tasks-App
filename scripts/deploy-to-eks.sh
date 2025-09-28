#!/bin/bash
set -e
echo "� Deploying Brain Tasks App to EKS..."

# Apply manifests
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

# Wait for deployment rollout
echo "⏳ Waiting for deployment to finish..."
kubectl rollout status deployment/brain-tasks-app --timeout=180s

echo "✅ Deployment completed successfully!"

