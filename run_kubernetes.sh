#!/usr/bin/env bash
$(which aws) eks --region us-east-2 update-kubeconfig --name capstone-cluster
# /home/ubuntu/bin/kubectl apply -f deployment.yaml
# /home/ubuntu/bin/kubectl apply -f service.yaml 