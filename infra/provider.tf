terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.94.1"
    }
  }
}



provider "aws" {
    region = "us-east-1"  
}


terraform {
  backend "s3" {
    bucket = "terraform-state-bucket"
    #aws_dynamodb_table = "state-locks"
    dynamodb_table = "state-locks"
    region = "us-east-1"
    key = "key/bucket/key"
    encrypt = true
    use_lockfile = true

  }
}