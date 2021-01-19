#!/bin/bash
echo "Creating Seed Stack"
aws --version
echo "--> Deploying oe-connect-seed..."
aws cloudformation deploy --template-file seed.yml --stack-name oe-integrations-sh-seed --parameter-overrides AccountType=feature-branch
echo "--> Deployed oe-connect-seed"
