  provider "aws" {
    region                  = "eu-west-1"
    shared_credentials_file = "/Users/tf_user/.aws/creds"
    profile                 = "customprofile"
  }

    module "vpc" {
    source  = "terraform-aws-modules/vpc/aws"
    version = "2.18.0"
    # insert the 8 required variables here
    azs               = ["eu-west-1a", "eu-west-1b"]
    #nat_public_ips    = "1.1.1.1"
    #private_subnets   = ""
    #public_subnets    = ""
    #vpc_cidr_block    = "10.0.0.0/16"
    #vpc_id            = ""
  }