terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }


 backend "s3" {
    bucket = "prameela-rootstate"
    key    = "provisoners-lock"
    region = "us-east-1"
    dynamodb_table = "prameela-lock"
  }


}

provider "aws" {
  # Configuration options

   region = "us-east-1"

}
