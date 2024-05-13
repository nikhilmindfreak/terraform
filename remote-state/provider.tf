terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {    # backend == s3 
    bucket = "devopsme-remote-state"  # s3 bucket name
    key    = "remote-state-demo"  # here state will be created with that key
    region = "us-east-1"
    dynamodb_table = "devopsme-locking"  # for state locking
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}