#!/bin/bash
echo "Hello World"
terraform init
terraform plan
terraform apply --auto-approve