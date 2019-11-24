#!/bin/bash
echo 'activate venv'
. venv/bin/activate
mkdir -p testresults
echo 'terraform init, plan, test'
terraform init #-backend-config=jenkins.backend
terraform plan -out=plan.out -var-file=testing.tfvars
terraform-compliance -p plan.out -f features/ --cucumber-json ./testresults/compliance.json