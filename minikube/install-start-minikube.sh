#/bin/bash

echo "Run this script with sudo to download and install minikube command"
echo "Prerequisite: Oracle Virtual Box"

which minikube

if [[ $? -ne 0 ]];then

echo "No Minikube on the system...installing it"

curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.16.0/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/

fi

which kubectl

if [[ $? -ne 0 ]];then

echo "No Kubectl on the system...installing it"

curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

fi

echo "Minikube in main path : " `which minikube`

echo "Starting a local Kubernetes cluster"

RUNNING=`minikube status | grep minikubeVM | awk '{print $2}'`

if [[ $RUNNING != 'Running' ]];then

minikube start --vm-driver=virtualbox

fi

echo "Ready to schedule your jobs....."

minikube status
