#!/usr/bin/env bash

eksctl create cluster \
  --version 1.15 \
  --region us-east-2 \
  --node-type t3.micro \
  --nodes 3 \
  --nodes-min 1 \
  --nodes-max 2 \
  --name capstone-project