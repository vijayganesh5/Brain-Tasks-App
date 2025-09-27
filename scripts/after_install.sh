#!/bin/bash
echo "AfterInstall hook started"
# Apply Kubernetes deployment
kubectl apply -f deployment.yaml
echo "AfterInstall hook completed"
