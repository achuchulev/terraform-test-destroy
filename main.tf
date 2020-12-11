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
    command = "echo ${data.aws_region.current.name}"
  }
}

data "aws_region" "current" {}
