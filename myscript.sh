#!/bin/bash
echo "Hello World"
terraform init
terraform plan -out=./output.txt -input=false
echo "test with new user and full permissions... end"
# terraform apply --auto-approve