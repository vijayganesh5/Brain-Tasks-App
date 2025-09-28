#!/bin/bash
set -e
echo "Validating Kubernetes cluster connection..."
kubectl get nodes
kubectl get ns
