# OE Infrastructure Infrastructure

This repository contains all infrastructure related items for the OE Integration.

## Required software

This software is required to run the scripts in a bash environment.

* [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv1.html)
* [cfn-lint](https://github.com/aws-cloudformation/cfn-python-lint)

You are also required to setup an [AWS Named Profile](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html).

## Cloudformation

We use Cloudformation (yaml format) for our 'infrastructure as code' approach. There is no need at this time to introduce any other 3rd party tools to learn. If we decide to go to another cloud provider Cloudformation is just a minor part of this application.

* [AWS Cloudformation](https://docs.aws.amazon.com/cloudformation/index.html)

Furthermore Cloudformation is fairly safe with its ability to detect errors and rollback changes to a known working state. However, you do need to pay attention to the documentation as some changes will remove resources and re-create them which may potentially lose data.

## Conventions

Each Cloudformation script will have the suffix of .cfn.yaml. This is really the only requirement other than the name should be descriptive of what the script is providing.

There are limits per account on how many stacks that you can have. These limits are fixed and cannot be increased by AWS, so be aware of this.

Comment the code. This is one of the advantages of using yaml as it supports comments in the file. Make sure you add comments, change comments, remove comments. Basically be nice to the next guy.
