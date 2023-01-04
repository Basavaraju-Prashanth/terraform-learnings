terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.0"
        }
    }
}

provider "aws" {
    region = "eu-west-1"
    access_key = "AKIAZWEJGMK6NXMZVAOI"
    secret_key = "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"
}

resource "aws_instance" "my_first_instance" {
    ami = "ami-0fe0b2cf0e1f25c8a"
    instance_type = "t2.micro"

    tags = {
        Name = "Developers"
    }
}
