AWS subbuWebApp Assignment
==========================

The assignment basically creates 1 mySQL DB instance and 2 phpApp instances across us-west-2a,us-west-2b, us-west-2c availability zones. 
As part of the Infra Build i create custom VPC, Intenet Gateways , NATed Gateways subnets and ELB

Code Used for the assignment:
==============================
 Terraform Infra as a Code used, Contains 2 files 

1)awsmain.tf --> Main code to create all of the AWS resources needed for the assignment , eg: VPC, ELB,subnets & the Amazon Linux AMI instances for the phpapp and mySQL database
2)variables.tf --> Variable values file for various values passed to the awsmain.f as INPUT variable
3)credentials	--> Contains the AWS Access Key ID and Secret Access Key required as part of the Pre-Req to connect to AWS and execute terraform operations for AWS resources creation

Terraform Usage Commands:
========================
terraform init
terraform plan
terraform apply -parallelism=1 --> (I like to create my resources serialy , basically making sure that VPC and all of my networking resources like NAT gateways, Internet GW and routing table resources are created , followed by subnets, security groups and finaly the AMI instances)
terraform destroy --> To destroy all of the AWS created as part of the TF plan 

NOTE: Additional manual effort required to update the complete DNS name of the database instance in the phpapp1/phpapp2 instances to have the connection string updated for calldb.php

References & Credits:
=====================

A COMPLETE AWS ENVIRONMENT WITH TERRAFORM
this repo is only to store the files of the article published on linuxacademy article

https://linuxacademy.com/howtoguides/posts/show/topic/13922-a-complete-aws-environment-with-terraform