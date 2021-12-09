# hoc-aws-website-iac
Project used for Hour of Code with my Girls Who Code club. Uses AWS S3 buckets to create a website manually. Then, has terraform project to create the same site with code.

## Summary
This project is designed to presented in about 1.5 hours to students at the high school level with beginning to intermediate programming experience. The exercise does not involve progamming directly. Students will need to follow a set of instructions to create the AWS resources and upload an HTML file. This is a good follow up project for groups that are working with static web site projects. Students are intoduced to Terraform; an example of a DevOps infrastrcuture as code language as well as a language that is not a procedural language, almost certainly a new concept for the students.

## Prerequisites
Terraform. Tested with V1.0.11. Requires AWS CLI for AWS provider.
Slides created with google suite. See deck folder.

## AWS Setup
This 

## Terraform Provider TF
The AWS provider requires machine/programmatic credentials for access. Create a user in AWS IAM for terraform. Select programmatic access. Save provided API keys for use in the provider.tf file. Create this file in your project root. See example below.  

````
provider "aws" {
  access_key = "AKIAQPMINTV6KJXXXXXX"
  secret_key = "mIJmsQWT2laxl7EOg2yl1yVhWvWm/oMXXXXXXXXX"
  region     = "us-east-2"
}
````

## Resources
This 
