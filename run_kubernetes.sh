#!/usr/bin/env bash
sudo -i -u ubuntu
aws eks --region us-east-2 update-kubeconfig --name capstone-cluster
exit
# /home/ubuntu/bin/kubectl apply -f deployment.yaml
# /home/ubuntu/bin/kubectl apply -f service.yaml 