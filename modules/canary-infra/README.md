# Canary Infra structure
This module creates:  
* the S3 bucket for the canary reports  
* the security group used by the canary to call the api to test  
* the IAM role for the canary execution  

It takes one parameter:  
* vpc_id: where the canary needs to execute  
