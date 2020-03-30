#!/usr/bin/env bash

image="asmirjahic/capstone:latest"

/home/ubuntu/bin/kubectl create deployment capstone --image=$image

sleep 20

/home/ubuntu/bin/kubectl get pods --all-namespaces

/home/ubuntu/bin/kubectl expose deployment capstone --type="NodePort" --port=80

/home/ubuntu/bin/kubectl port-forward deployment/capstonr 8081:80