#!/bin/bash
echo "BeforeInstall hook started"
# Update kubeconfig
aws eks update-kubeconfig --region ap-south-1 --name brain-tasks-cluster
echo "BeforeInstall hook completed"
