module "s3" {
  source = "git@github.com:Mus865/s3-backend.git//s3-module?ref=v1.1.0"

}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket  = "mustaphkops"
    region  = "us-east-1"
    key     = "action/terraform.tfstate"
    encrypt = true

  }
}

provider "aws" {
  region = "us-east-1"

}



