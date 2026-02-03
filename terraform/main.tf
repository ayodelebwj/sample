terraform {
    backend "s3" {
        bucket = "techbleatweek10b"
        key = "env/prod/terraform.tfstate"
        encrypt = true
        region = "us-east-1"
    }
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "web_server" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name

    tags = {
        Name = web_server
    }
}