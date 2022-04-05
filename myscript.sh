#!/bin/bash
echo $AWS_ACCESS_KEY_ID
echo "Hello World"
terraform init
terraform plan -out=./output.txt -input=false
terraform apply --auto-approve