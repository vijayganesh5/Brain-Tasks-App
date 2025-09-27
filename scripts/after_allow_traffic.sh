#!/bin/bash
echo "AfterAllowTraffic hook started"
# Check deployment status
kubectl rollout status deployment/brain-tasks-app
echo "AfterAllowTraffic hook completed"
