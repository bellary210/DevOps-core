#!/bin/bash
echo "Creating Infracture Stack"
aws --version
echo "--> Deploying oe-integrations-infrastructure stack for VPC..."
aws cloudformation deploy --template-file 001-vpc.yml --stack-name OeIntVpc
echo "--> Deployed oe-integrations-infrastructure stack for VPC"
echo "--> Deploying oe-integrations-infrastructure stack for gateway..."
aws cloudformation deploy --template-file 002-gateway.yml --stack-name OeIntIacGateway
echo "--> Deployed oe-integrations-infrastructure stack for gateway"
echo "--> Deploying oe-integrations-infrastructure stack for subnets..."
aws cloudformation deploy --template-file 003-subnets.yml --stack-name OeIntIacSubnets
echo "--> Deployed oe-integrations-infrastructure stack for subnets"
echo "--> Deploying oe-integrations-infrastructure stack for natgateway..."
aws cloudformation deploy --template-file 0011-natgateway.yml --stack-name OeIntIacNatgateway
echo "--> Deployed oe-integrations-infrastructure stack for natgateway"
echo "--> Deploying oe-integrations-infrastructure stack for routetables..."
aws cloudformation deploy --template-file 004-routetables.yml --stack-name OeIntIacRoutetables
echo "--> Deployed oe-integrations-infrastructure stack for routetables"
echo "--> Deploying oe-integrations-infrastructure stack for networkacls..."
aws cloudformation deploy --template-file 005-networkacls.yml --stack-name OeIntIacNetworkacls
echo "--> Deployed oe-integrations-infrastructure stack for networkacls"
