#!/bin/bash
echo "Hello World"
terraform init
terraform plan -out=./output.txt -input=false
terraform apply --auto-approve