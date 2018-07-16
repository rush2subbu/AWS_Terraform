variable "region" {
  default = "us-west-2"
}

variable "AmiLinux" {
  type = "map"

  default = {
    us-east-1 = "ami-b73b63a0" # Virginia
    us-east-2 = "ami-ea87a78f" # Ohio
    us-west-2 = "ami-5ec1673e" # Oregon
  }

  description = "show the map feature with all 3 regions"
}

variable "credentialsfile" {
  default     = "C:/Users/sadashsu/.aws/credentials"                          #replace your home directory
  description = "Subramanyas AWS access and secret key to run the aws config"
}

variable "vpc-fullcidr" {
  default     = "192.168.0.0/16"
  description = "Subbu vpc CIDR"
}

variable "PUBLIC-SUBNET-AWS-CIDR" {
  default     = "192.168.0.0/24"
  description = "the cidr of the subnet"
}

variable "PRIVATE-SUBNET-AWS-CIDR" {
  default     = "192.168.2.0/24"
  description = "the cidr of the subnet"
}

variable "key_name" {
  default     = "SubbuKey"
  description = "the ssh key to use in the Apache WebApp and Data EC2 machines"
}

variable "DnsZoneName" {
  default     = "us-west-2.compute.internal"
  description = "US West internal DNS "
}

variable "public_key_path" {
  description = "Enter the path to the SSH Public Key to add to AWS."
  default     = "C:/Users/sadashsu/.aws/subbu-aws.pub"
}
