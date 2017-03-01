#!/bin/bash


echo "Scheduling some jobs in the cluster...."

echo "Schedule a replication controller of one node of nginx container"

kubectl create -f jobs/nginx-with-ip-rc.yaml

echo "Checking the status of the pod"

kubectl get pods


echo "Schedule now the service"

kubectl create -f jobs/nginx-with-ip-service.yaml

echo "Service scheduled..."

kubectl get services

minikube service nginx


