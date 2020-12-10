terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

resource "null_resource" "HelloWorld" {
  provisioner "local-exec" {
    command = "echo Hello world!"
  }
}

#data "aws_region" "current" {}
