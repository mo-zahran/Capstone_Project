#!/usr/bin/env bash

eksctl create cluster \
  --version 1.15 \
  --region us-east-2 \
  --node-type t3.micro \
  --nodes 2 \
  --nodes-min 1 \
  --nodes-max 3 \
  --name capstone-project