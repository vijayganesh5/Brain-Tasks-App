#!/bin/bash
cd /home/ubuntu/Brain-Tasks-App
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
