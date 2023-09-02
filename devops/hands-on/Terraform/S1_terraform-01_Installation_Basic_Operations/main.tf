terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.13.1"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"

}

resource "aws_instance" "tf-ec2" {
  ami = "ami-08a52ddb321b32a8c"
  instance_type = "t2.micro"
  tags = {
    "Name" = "created-by-tf" 
  }
}