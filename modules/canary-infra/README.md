# Canary Infrastructure
This module creates:  
* the S3 bucket for the canary reports  
* the security group used by the canary to call the api to test  
* the IAM role for the canary execution.  

It takes two parameters:  
* vpc_id and subnet_ids: where the canary needs to execute.  
  
