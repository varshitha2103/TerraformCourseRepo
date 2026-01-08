terraform {
  backend "s3"{
    bucket = "terraform_demo_bucket"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
}