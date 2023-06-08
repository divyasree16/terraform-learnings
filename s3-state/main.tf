terraform {
  backend "s3" {
    bucket = "terraform-div16"
    key    = "s3-state/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "frontend" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0e978024c0690d6a4"]
  tags = {
    Name = "test"
  }
}