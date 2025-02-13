terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "mybucketbackend-demo"
    key    = "project/state.tfstate"
    region = "ap-south-1"

  }
}

provider "aws" {
  region = "ap-south-1"
  
}
