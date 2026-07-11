terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "my-tfstate-71929"
    key   = "dev/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}

resource "aws_s3_bucket" "hello" {
  bucket = "my-hello-test-71929"
}
