provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0360c520857e3138f"   # Amazon Linux 2 AMI (update per region)
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}
