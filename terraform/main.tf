terraform {
required_providers {
  aws = {
    source = "hashicorp/aws"
    version = "5.80.0"
  }
}

}

provider "aws" {
    region = "us-east-1"
}

#S3 Bucket
resource "aws_s3_bucket" "static_website_bucket" {
  bucket = "christophervazquez.com"

  tags = {
    Name        = "Static Website Bucket"
    ProvisionedBy = "Terraform"
    Environment = "Prod"
    Project = "Cloud Resume Challenge"
  }
}