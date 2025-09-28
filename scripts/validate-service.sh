#!/bin/bash
set -e

echo "Ì¥ç Validating Kubernetes cluster connection..."
kubectl get nodes
kubectl get ns

echo "Ì¥ç Checking deployments..."
kubectl get deployments

echo "Ì¥ç Checking pods..."
kubectl get pods -o wide

echo "Ì¥ç Checking services..."
kubectl get svc

# Wait for external LoadBalancer IP
echo "‚è≥ Waiting for LoadBalancer external IP..."
for i in {1..30}; do
  EXTERNAL_IP=$(kubectl get svc brain-tasks-service -o jsonpath='{.status.loadBalancer.ingress[0].hostname}' 2>/dev/null || true)
  if [ ! -z "$EXTERNAL_IP" ]; then
    echo "‚úÖ Service is available at: http://$EXTERNAL_IP:3000"
    exit 0
  fi
  echo "Still waiting... ($i/30)"
  sleep 10
done

echo "‚ùå LoadBalancer external IP not assigned after waiting."
exit 1

