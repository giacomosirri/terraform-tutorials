terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = "< 1.11.1"
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-07eef52105e8a2059"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}