# hoc-aws-website-iac
Project used for Hour of Code with my Girls Who Code club. Uses AWS S3 buckets to create a website manually. Then, has terraform project to create the same site with code.

## Summary
This project is designed to presented in about 1.5 hours to students at the high school level with beginning to intermediate programming experience. The exercise does not involve progamming directly. Students will need to follow a set of instructions to create the AWS resources and upload an HTML file. This is a good follow up project for groups that are working with static web site projects. Students are intoduced to Terraform; an example of a DevOps infrastrcuture as code language as well as a language that is not a procedural language, almost certainly a new concept for the students at this level. The instructor ideally will have a beginning to intermediate understanding of terraform. All the code is provided here but you will need to install Terraform on your local machine, configure the AWS provider with credentials and run plan/apply/destroy commands. 

## Slide Deck
First review the slide deck in this repo. The slides cover the project as a whole as well as the detailed steps for establishing the static website through the console. No additional steps are in the readme for that, it's all in the slides.

## Prerequisites
Terraform. Tested with V1.0.11. Requires AWS CLI for AWS provider.
Slides created with google suite. See deck folder.

## AWS Account & User Account Overview
A single AWS account was used for this exercise. Use ID's were created for each student in the class a well as a user for the terraform code. The instructor was also in the console under their own account.

## AWS User Setup (Students)
User ID's for the students need to be established in AWS IAM as well as one user id for the terraform provider (see next topic). Create account with the following:
- Password credential (no programmatic access).
- Custom password and set to a simple to remember value.
- Set to NOT require reset. Prevents issues with logins.
- Attach the policy AmazonS3FullAcces directly to each user account.
- Distribute to students ahead of time. Also distribute the link to the login page for the AWS account.

## Terraform User ID and Provider TF
The AWS provider requires machine/programmatic credentials for access. Create a user in AWS IAM for terraform. Select programmatic access (not console access). Save provided API keys for use in the provider.tf file. Create this file in your project root. See example below.  

````
provider "aws" {
  access_key = "AKIAQPMINTV6KJXXXXXX"
  secret_key = "mIJmsQWT2laxl7EOg2yl1yVhWvWm/oMXXXXXXXXX"
  region     = "us-east-2"
}
````

## Terraform Commands
Terraform init must be run in the project directory to intialize the AWS provider. Run plan to initally establish the plan state file and each time to sync to code changes and AWS resources. Apply syncs to AWS resources, establishing them or modifying as necessary. Show the students how to remove resources with changes in the code as well as the destroy command to remove all resources. See Terraform doc for more details.

````
terraform init
````
````
terraform plan -out plan.out
````
````
terraform apply plan.out
````
````
terraform destroy
````

## Resources
Setting up a static web site in AWS S3  
https://docs.aws.amazon.com/AmazonS3/latest/userguide/HostingWebsiteOnS3Setup.html#step7-test-web-site

Terraform S3 Static Web Site  
https://github.com/linux-place/terraform-aws-s3-static-website

Terraform AWS - Getting Started   
https://learn.hashicorp.com/collections/terraform/aws-get-started

Terraform AWS Provider for S3  
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket