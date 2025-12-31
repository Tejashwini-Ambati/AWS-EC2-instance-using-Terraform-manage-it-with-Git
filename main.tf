terraform {
  backend "s3" {
    bucket         = "sai-terraform-remote-state"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0360c520857e3138f"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}
