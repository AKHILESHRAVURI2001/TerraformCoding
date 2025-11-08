terraform {
  backend "s3" {
    bucket         = "mybucketnewtestingfirst01" 
    key            = "aws-infra/terraform.tfstate" 
    region         = "us-east-1"                    
    dynamodb_table = "my-terraform-lock-table-akhi"         
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.5.0"
}