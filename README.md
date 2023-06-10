# Terraform modules to deploy Cloudwatch Synthetic Canaries

[What are Synthetic Canaries and how to create one?](https://www.youtube.com/watch?v=hF3NM9j-u7I)  

## Intention
The objective of this code is to remove as many difficulties as possible when trying to deploy canaries with terraform.  

## Overview
See this AWS prescriptive document for more details: [Deploy CloudWatch Synthetics canaries by using Terraform](https://docs.aws.amazon.com/prescriptive-guidance/latest/patterns/deploy-cloudwatch-synthetics-canaries-by-using-terraform.html). 
This repo is composed of two modules: one to setup the [common infrastructure](./modules/canary-infra/README.md) required for all canaries and [one to setup a canary](./modules/canary/README.md) testing a specific API.  
The canary module has been designed to deploy a canary testing an API only privately available.  
The canary must run in the VPC where the API is deployed and have a security group allowing to call the API.  
An example terraform script using the two modules has been provided in: [main.tf](main.tf).  

## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.  

## License

This library is licensed under the MIT-0 License. See the LICENSE file.  

