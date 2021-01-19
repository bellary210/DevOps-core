#!/bin/bash
echo "Creating Seed Stack"
aws --version
echo "--> Deploying oe-connect-seed..."
aws cloudformation deploy --template-file 001-vpc.yml --stack-name oe-Integration-vpc-001 --role-arn arn:aws:iam::228219102506:user/SateeshDommetiWaveLabs
#aws cloudformation deploy --template-file 002-gateway.yml --stack-name oe-integration-gateway --no-fail-on-empty-changeset >/dev/null
#aws cloudformation create-stack --stack-name oe-integration-vpc --template-body 001-vpc.yml
#aws cloudformation create-stack --stack-name oe-integration-gateway --template-body 002-gateway.yml
echo "--> Deployed oe-connect-seed"
