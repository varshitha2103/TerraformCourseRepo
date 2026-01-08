terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true

        tags = {
        Name = "s3-vpc-demo"
        Purpose = "Demo"
    } 
}

resource "aws_s3_bucket" "logs"{
bucket = "tf-day3-${aws_vpc.main.id}-bucket"

tags = {
  Name = "tf-day3-bucket"
  Purpose = "Demo"
}
}

