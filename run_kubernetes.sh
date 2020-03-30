#!/usr/bin/env bash

image="asmirjahic/capstone:latest"

kubectl create deployment capstone --image=$image

sleep 20

kubectl get pods --all-namespaces

kubectl expose deployment capstone --type="NodePort" --port=80

kubectl port-forward deployment/capstonr 8081:80