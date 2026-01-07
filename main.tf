terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.27.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

#Create S3 Bucket
resource "aws_s3_bucket" "first-s3-bucket" {
  bucket = "tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

#create VPC 
resource "aws_vpc" "first-vpc" {
  cidr_block           = "10.0.0.0/16"
}