#!/bin/bash
set -e
echo "Ì∫Ä Deploying Brain Tasks App to EKS..."

# Apply manifests
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

# Wait for deployment rollout
echo "‚è≥ Waiting for deployment to finish..."
kubectl rollout status deployment/brain-tasks-app --timeout=180s

echo "‚úÖ Deployment completed successfully!"

